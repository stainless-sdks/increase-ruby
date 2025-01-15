# frozen_string_literal: true

module Increase
  class Error < StandardError
    # @!parse
    #   # @return [StandardError, nil]
    #   attr_reader :cause
  end

  class ConversionError < Increase::Error
  end

  class APIError < Increase::Error
    # @return [URI::Generic]
    attr_reader :url

    # @return [Integer, nil]
    attr_reader :status

    # @return [Object, nil]
    attr_reader :body

    # @private
    #
    # @param url [URI::Generic]
    # @param status [Integer, nil]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
      @url = url
      @status = status
      @body = body
      @request = request
      @response = response
      super(message)
    end
  end

  class APIConnectionError < Increase::APIError
    # @!parse
    #   # @return [nil]
    #   attr_reader :status

    # @!parse
    #   # @return [nil]
    #   attr_reader :body

    # @private
    #
    # @param url [URI::Generic]
    # @param status [nil]
    # @param body [nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    def initialize(
      url:,
      status: nil,
      body: nil,
      request: nil,
      response: nil,
      message: "Connection error."
    )
      super
    end
  end

  class APITimeoutError < Increase::APIConnectionError
    # @private
    #
    # @param url [URI::Generic]
    # @param status [nil]
    # @param body [nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    def initialize(
      url:,
      status: nil,
      body: nil,
      request: nil,
      response: nil,
      message: "Request timed out."
    )
      super
    end
  end

  class APIStatusError < Increase::APIError
    # @private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    #
    # @return [Increase::APIStatusError]
    #
    def self.for(url:, status:, body:, request:, response:)
      key = Increase::Util.dig(body, type)
      kwargs = {url: url, status: status, body: body, request: request, response: response}

      case [status, key]
      in [400, "invalid_parameters_error"]
        Increase::InvalidParametersError.new(**kwargs)
      in [400, "malformed_request_error"]
        Increase::MalformedRequestError.new(**kwargs)
      in [401, "invalid_api_key_error"]
        Increase::InvalidAPIKeyError.new(**kwargs)
      in [403, "environment_mismatch_error"]
        Increase::EnvironmentMismatchError.new(**kwargs)
      in [403, "insufficient_permissions_error"]
        Increase::InsufficientPermissionsError.new(**kwargs)
      in [403, "private_feature_error"]
        Increase::PrivateFeatureError.new(**kwargs)
      in [404, "api_method_not_found_error"]
        Increase::APIMethodNotFoundError.new(**kwargs)
      in [404, "object_not_found_error"]
        Increase::ObjectNotFoundError.new(**kwargs)
      in [409, "idempotency_key_already_used_error"]
        Increase::IdempotencyKeyAlreadyUsedError.new(**kwargs)
      in [409, "invalid_operation_error"]
        Increase::InvalidOperationError.new(**kwargs)
      in [429, "rate_limited_error"]
        Increase::RateLimitedError.new(**kwargs)
      in [500, "internal_server_error"]
        Increase::InternalServerError.new(**kwargs)
      in [400, _]
        Increase::BadRequestError.new(**kwargs)
      in [401, _]
        Increase::AuthenticationError.new(**kwargs)
      in [403, _]
        Increase::PermissionDeniedError.new(**kwargs)
      in [404, _]
        Increase::NotFoundError.new(**kwargs)
      in [409, _]
        Increase::ConflictError.new(**kwargs)
      in [422, _]
        Increase::UnprocessableEntityError.new(**kwargs)
      in [429, _]
        Increase::RateLimitError.new(**kwargs)
      else
        Increase::APIStatusError.new(**kwargs)
      end
    end

    # @!parse
    #   # @return [Integer]
    #   attr_reader :status

    # @private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    def initialize(url:, status:, body:, request:, response:, message: nil)
      message ||= {url: url.to_s, status: status, body: body}
      super(
        url: url,
        status: status,
        body: body,
        request: request,
        response: response,
        message: message&.to_s
      )
    end
  end

  class BadRequestError < Increase::APIStatusError
    HTTP_STATUS = 400
  end

  class AuthenticationError < Increase::APIStatusError
    HTTP_STATUS = 401
  end

  class PermissionDeniedError < Increase::APIStatusError
    HTTP_STATUS = 403
  end

  class NotFoundError < Increase::APIStatusError
    HTTP_STATUS = 404
  end

  class ConflictError < Increase::APIStatusError
    HTTP_STATUS = 409
  end

  class UnprocessableEntityError < Increase::APIStatusError
    HTTP_STATUS = 422
  end

  class RateLimitError < Increase::APIStatusError
    HTTP_STATUS = 429
  end

  class InvalidParametersError < Increase::APIStatusError
    HTTP_STATUS = 400

    TYPE = invalid_parameters_error
  end

  class MalformedRequestError < Increase::APIStatusError
    HTTP_STATUS = 400

    TYPE = malformed_request_error
  end

  class InvalidAPIKeyError < Increase::APIStatusError
    HTTP_STATUS = 401

    TYPE = invalid_api_key_error
  end

  class EnvironmentMismatchError < Increase::APIStatusError
    HTTP_STATUS = 403

    TYPE = environment_mismatch_error
  end

  class InsufficientPermissionsError < Increase::APIStatusError
    HTTP_STATUS = 403

    TYPE = insufficient_permissions_error
  end

  class PrivateFeatureError < Increase::APIStatusError
    HTTP_STATUS = 403

    TYPE = private_feature_error
  end

  class APIMethodNotFoundError < Increase::APIStatusError
    HTTP_STATUS = 404

    TYPE = api_method_not_found_error
  end

  class ObjectNotFoundError < Increase::APIStatusError
    HTTP_STATUS = 404

    TYPE = object_not_found_error
  end

  class IdempotencyKeyAlreadyUsedError < Increase::APIStatusError
    HTTP_STATUS = 409

    TYPE = idempotency_key_already_used_error
  end

  class InvalidOperationError < Increase::APIStatusError
    HTTP_STATUS = 409

    TYPE = invalid_operation_error
  end

  class RateLimitedError < Increase::APIStatusError
    HTTP_STATUS = 429

    TYPE = rate_limited_error
  end

  class InternalServerError < Increase::APIStatusError
    HTTP_STATUS = 500

    TYPE = internal_server_error
  end
end
