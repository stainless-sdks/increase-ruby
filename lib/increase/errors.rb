# frozen_string_literal: true

module Increase
  class Error < StandardError
    # @!parse
    #   # @return [StandardError, nil]
    #   attr_accessor :cause
  end

  class ConversionError < Increase::Error
  end

  class APIError < Increase::Error
    # @return [URI::Generic]
    attr_accessor :url

    # @return [Integer, nil]
    attr_accessor :status

    # @return [Object, nil]
    attr_accessor :body

    # @api private
    #
    # @param url [URI::Generic]
    # @param status [Integer, nil]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
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
    #   attr_accessor :status

    # @!parse
    #   # @return [nil]
    #   attr_accessor :body

    # @api private
    #
    # @param url [URI::Generic]
    # @param status [nil]
    # @param body [nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
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
    # @api private
    #
    # @param url [URI::Generic]
    # @param status [nil]
    # @param body [nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
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
    # @api private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    # @return [Increase::APIStatusError]
    def self.for(url:, status:, body:, request:, response:, message: nil)
      key = Increase::Util.dig(body, :type)
      kwargs = {url: url, status: status, body: body, request: request, response: response, message: message}

      case [status, key]
      in [400, Increase::InvalidParametersError::TYPE]
        Increase::InvalidParametersError.new(**kwargs)
      in [400, Increase::MalformedRequestError::TYPE]
        Increase::MalformedRequestError.new(**kwargs)
      in [401, Increase::InvalidAPIKeyError::TYPE]
        Increase::InvalidAPIKeyError.new(**kwargs)
      in [403, Increase::EnvironmentMismatchError::TYPE]
        Increase::EnvironmentMismatchError.new(**kwargs)
      in [403, Increase::InsufficientPermissionsError::TYPE]
        Increase::InsufficientPermissionsError.new(**kwargs)
      in [403, Increase::PrivateFeatureError::TYPE]
        Increase::PrivateFeatureError.new(**kwargs)
      in [404, Increase::APIMethodNotFoundError::TYPE]
        Increase::APIMethodNotFoundError.new(**kwargs)
      in [404, Increase::ObjectNotFoundError::TYPE]
        Increase::ObjectNotFoundError.new(**kwargs)
      in [409, Increase::IdempotencyKeyAlreadyUsedError::TYPE]
        Increase::IdempotencyKeyAlreadyUsedError.new(**kwargs)
      in [409, Increase::InvalidOperationError::TYPE]
        Increase::InvalidOperationError.new(**kwargs)
      in [429, Increase::RateLimitedError::TYPE]
        Increase::RateLimitedError.new(**kwargs)
      in [(500..), Increase::InternalServerError::TYPE]
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
    #   attr_accessor :status

    # @api private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
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

  class InvalidParametersError < Increase::BadRequestError
    HTTP_STATUS = Increase::BadRequestError::HTTP_STATUS

    TYPE = "invalid_parameters_error"
  end

  class MalformedRequestError < Increase::BadRequestError
    HTTP_STATUS = Increase::BadRequestError::HTTP_STATUS

    TYPE = "malformed_request_error"
  end

  class InvalidAPIKeyError < Increase::AuthenticationError
    HTTP_STATUS = Increase::AuthenticationError::HTTP_STATUS

    TYPE = "invalid_api_key_error"
  end

  class EnvironmentMismatchError < Increase::PermissionDeniedError
    HTTP_STATUS = Increase::PermissionDeniedError::HTTP_STATUS

    TYPE = "environment_mismatch_error"
  end

  class InsufficientPermissionsError < Increase::PermissionDeniedError
    HTTP_STATUS = Increase::PermissionDeniedError::HTTP_STATUS

    TYPE = "insufficient_permissions_error"
  end

  class PrivateFeatureError < Increase::PermissionDeniedError
    HTTP_STATUS = Increase::PermissionDeniedError::HTTP_STATUS

    TYPE = "private_feature_error"
  end

  class APIMethodNotFoundError < Increase::NotFoundError
    HTTP_STATUS = Increase::NotFoundError::HTTP_STATUS

    TYPE = "api_method_not_found_error"
  end

  class ObjectNotFoundError < Increase::NotFoundError
    HTTP_STATUS = Increase::NotFoundError::HTTP_STATUS

    TYPE = "object_not_found_error"
  end

  class IdempotencyKeyAlreadyUsedError < Increase::ConflictError
    HTTP_STATUS = Increase::ConflictError::HTTP_STATUS

    TYPE = "idempotency_key_already_used_error"
  end

  class InvalidOperationError < Increase::ConflictError
    HTTP_STATUS = Increase::ConflictError::HTTP_STATUS

    TYPE = "invalid_operation_error"
  end

  class RateLimitedError < Increase::RateLimitError
    HTTP_STATUS = Increase::RateLimitError::HTTP_STATUS

    TYPE = "rate_limited_error"
  end

  class InternalServerError < Increase::APIStatusError
    HTTP_STATUS = (500..)

    TYPE = "internal_server_error"
  end
end
