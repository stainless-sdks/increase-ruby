# frozen_string_literal: true

module Increase
  # @!visibility private
  class BaseClient
    attr_accessor :requester

    def initialize(
      base_url:,
      headers: nil,
      max_retries: nil,
      idempotency_header: nil
    )
      self.requester = PooledNetRequester.new
      base_url_parsed = URI.parse(base_url)
      base_headers = {
        "X-Stainless-Lang" => "ruby",
        "X-Stainless-Package-Version" => Increase::VERSION,
        "X-Stainless-Runtime" => RUBY_ENGINE,
        "X-Stainless-Runtime-Version" => RUBY_ENGINE_VERSION,
        "Content-Type" => "application/json",
        "Accept" => "application/json"
      }
      @headers = base_headers.merge(headers || {})
      @host = base_url_parsed.host
      @scheme = base_url_parsed.scheme
      @port = base_url_parsed.port
      @base_path = self.class.normalize_path(base_url_parsed.path)
      @max_retries = max_retries || 0
      @idempotency_header = idempotency_header
    end

    def auth_headers
      {}
    end

    def validate_request(req, opts)
      if (body = req[:body])
        # Body can be at least a Hash or Array, just check for Hash shape for now.
        if body.is_a?(Hash)
          body.each_key do |k|
            unless k.is_a?(Symbol)
              raise ArgumentError, "Request body keys must be Symbols, got #{k.inspect}"
            end
          end
        end
      end

      unless opts.is_a?(Hash) || opts.is_a?(Increase::RequestOption)
        raise ArgumentError, "Request `opts` must be a Hash or RequestOptions, got #{opts.inspect}"
      end
      opts.to_h.each_key do |k|
        unless k.is_a?(Symbol)
          raise ArgumentError, "Request `opts` keys must be Symbols, got #{k.inspect}"
        end
        unless (valid_keys = Increase::RequestOptions.options).include?(k)
          raise ArgumentError, "Request `opts` keys must be one of #{valid_keys}, got #{k.inspect}"
        end
      end
    end

    def self.normalize_path(path)
      path.gsub(/\/+/, "/")
    end

    def resolve_uri_elements(req)
      from_args =
        if req[:url]
          uri = req[:url].is_a?(URI::Generic) ? req[:url] : URI.parse(req[:url])
          {
            host: uri.host,
            scheme: uri.scheme,
            path: uri.path,
            query: CGI.parse(uri.query),
            port: uri.port
          }
        else
          from_req = req.slice(:host, :scheme, :path, :port, :query)
          from_req[:path] = self.class.normalize_path("/#{@base_path}/#{from_req[:path]}")
          from_req
        end

      uri_components = {host: @host, scheme: @scheme, port: @port}.merge(from_args)

      if req[:extra_query]
        uri_components[:query] = Util.deep_merge(uri_components[:query], req[:extra_query], concat: true)
      end

      uri_components
    end

    def prep_request(options)
      method = options.fetch(:method)

      headers = @headers.merge(auth_headers)
      if options[:headers]
        headers.merge!(options[:headers])
      end
      if options[:extra_headers]
        headers.merge!(options[:extra_headers])
      end
      if @idempotency_header && !headers[@idempotency_header] && ![:get, :head, :options].include?(method)
        headers[@idempotency_header] = options[:idempotency_key] || generate_idempotency_key
      end
      headers.filter! { |_k, v| !v.nil? }
      headers.transform_values!(&:to_s)

      body =
        case method
        when :post, :put, :patch, :delete
          body = options[:body]
          if body
            if headers["Content-Type"] == "application/json"
              JSON.dump(body)
            else
              body
            end
          end
        else
          nil
        end
      if options[:extra_body]
        body = Util.deep_merge(body, options[:extra_body])
      end

      url_elements = resolve_uri_elements(options)

      {method: method, headers: headers, body: body}.merge(url_elements)
    end

    def generate_idempotency_key
      "stainless-ruby-retry-#{SecureRandom.uuid}"
    end

    def should_retry?(response)
      should_retry_header = response.header["x-should-retry"]

      case should_retry_header
      when "true"
        true
      when "false"
        false
      else
        response_code = response.code.to_i
        # retry on:
        # 408: timeouts
        # 409: locks
        # 429: rate limits
        # 500+: unknown errors
        [408, 409, 429].include?(response_code) || response_code >= 500
      end
    end

    def make_status_error(message:, body:, response:)
      raise NotImplementedError
    end

    def make_status_error_from_response(response)
      err_body =
        begin
          JSON.parse(response.body)
        rescue StandardError
          response
        end

      # We include the body in the error message as well as returning it
      # since logging error messages is a common and quick way to assess what's
      # wrong with a response.
      message = "Error code: #{response.code}; Response: #{response.body}"

      make_status_error(message: message, body: err_body, response: response)
    end

    # About the Retry-After header: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Retry-After
    #
    # <http-date>". See https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Retry-After#syntax for
    # details.
    def header_based_retry(response)
      # TODO(STA-3371): accept retry-after-ms.
      retry_after = response.header["retry-after"]
      retry_after
        .split(",")
        .map do |element|
          as_int =
            begin
              Float(element)
            rescue StandardError # rubocop:disable Lint/SuppressedException
            end

          as_datetime =
            begin
              Time.httpdate(element) - Time.now
            rescue StandardError # rubocop:disable Lint/SuppressedException
            end

          [as_int, as_datetime].filter { |x| x }.max
        end
    rescue StandardError # rubocop:disable Lint/SuppressedException
    end

    def with_retry(request, max_retries:)
      delay = 0.5
      max_delay = 8.0
      retries = 0
      request_max_retries = max_retries || @max_retries
      loop do
        begin
          response = @requester.execute(request)
          is_ok = response.code.to_i < 400
          return response if is_ok
        rescue Net::HTTPBadResponse
          if retries >= request_max_retries
            message = "failed to complete the request within #{request_max_retries} retries"
            raise HTTP::APIConnectionError.new(message: message, request: request)
          end
        rescue Timeout::Error
          if retries >= request_max_retries
            message = "failed to complete the request within #{request_max_retries} retries"
            raise HTTP::APITimeoutError.new(message: message, request: request)
          end
        end

        if !should_retry?(response) || retries >= request_max_retries
          raise make_status_error_from_response(response)
        end

        retries += 1
        sleep delay
        base_delay = header_based_retry(response) || (delay * (2**retries))
        jitter_factor = 1 - (0.25 * rand)
        (base_delay * jitter_factor).clamp(0, max_delay)
      end
    end

    # Execute the request specified by req + opts. This is the method that all
    # resource methods call into.
    # Params req & opts are kept separate up until this point so that we can
    # validate opts as it was given to us by the user.
    def request(req, opts)
      validate_request(req, opts)
      options = req.merge(opts)
      request_args = prep_request(options)
      response = with_retry(request_args, max_retries: opts[:max_retries])
      raw_data =
        case response.content_type
        when "application/json"
          begin
            data = JSON.parse(response.body, symbolize_names: true)
            req[:unwrap] ? data[req[:unwrap]] : data
          rescue JSON::ParserError
            response.body
          end
          # TODO: parsing other response types
        else
          response.body
        end

      if (page = req[:page])
        model = req.fetch(:model)
        page.new(model, raw_data, response, self, req, opts)
      elsif (model = req[:model])
        Converter.convert(model, raw_data)
      else
        raw_data
      end
    end
  end

  module HTTP
    class Error < StandardError
    end

    class ResponseError < Error
      attr_reader :response, :body, :code

      def initialize(message:, response:, body:)
        super(message)
        @response = response
        @body = body
        @code = response.code.to_i
      end
    end

    class RequestError < Error
      attr_reader :request

      def initialize(message:, request:)
        super(message)
        @request = request
      end
    end

    class BadRequestError < ResponseError
    end

    class AuthenticationError < ResponseError
    end

    class PermissionDeniedError < ResponseError
    end

    class NotFoundError < ResponseError
    end

    class ConflictError < ResponseError
    end

    class UnprocessableEntityError < ResponseError
    end

    class RateLimitError < ResponseError
    end

    class InternalServerError < ResponseError
    end

    class APIStatusError < ResponseError
    end

    class APIConnectionError < RequestError
    end

    class APITimeoutError < RequestError
    end
  end
end
