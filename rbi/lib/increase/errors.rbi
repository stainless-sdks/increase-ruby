# typed: strong

module Increase
  class Error < StandardError
    sig { returns(T.nilable(StandardError)) }
    attr_reader :cause
  end

  class ConversionError < Increase::Error
  end

  class APIError < Increase::Error
    sig { returns(URI::Generic) }
    attr_reader :url

    sig { returns(T.nilable(Integer)) }
    attr_reader :status

    sig { returns(T.nilable(T.anything)) }
    attr_reader :body

    sig do
      params(
        url: URI::Generic,
        status: T.nilable(Integer),
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      ).void
    end
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
    end
  end

  class APIConnectionError < Increase::APIError
    sig { void }
    attr_reader :status

    sig { void }
    attr_reader :body

    sig do
      params(
        url: URI::Generic,
        status: NilClass,
        body: NilClass,
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      ).void
    end
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: "Connection error.")
    end
  end

  class APITimeoutError < Increase::APIConnectionError
    sig do
      params(
        url: URI::Generic,
        status: NilClass,
        body: NilClass,
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      ).void
    end
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: "Request timed out.")
    end
  end

  class APIStatusError < Increase::APIError
    sig do
      params(
        url: URI::Generic,
        status: Integer,
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass
      ).returns(T.attached_class)
    end
    def self.for(url:, status:, body:, request:, response:)
    end

    sig { returns(Integer) }
    attr_reader :status

    sig do
      params(
        url: URI::Generic,
        status: Integer,
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      ).void
    end
    def initialize(url:, status:, body:, request:, response:, message: nil)
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

    TYPE = "invalid_parameters_error"
  end

  class MalformedRequestError < Increase::APIStatusError
    HTTP_STATUS = 400

    TYPE = "malformed_request_error"
  end

  class InvalidAPIKeyError < Increase::APIStatusError
    HTTP_STATUS = 401

    TYPE = "invalid_api_key_error"
  end

  class EnvironmentMismatchError < Increase::APIStatusError
    HTTP_STATUS = 403

    TYPE = "environment_mismatch_error"
  end

  class InsufficientPermissionsError < Increase::APIStatusError
    HTTP_STATUS = 403

    TYPE = "insufficient_permissions_error"
  end

  class PrivateFeatureError < Increase::APIStatusError
    HTTP_STATUS = 403

    TYPE = "private_feature_error"
  end

  class APIMethodNotFoundError < Increase::APIStatusError
    HTTP_STATUS = 404

    TYPE = "api_method_not_found_error"
  end

  class ObjectNotFoundError < Increase::APIStatusError
    HTTP_STATUS = 404

    TYPE = "object_not_found_error"
  end

  class IdempotencyKeyAlreadyUsedError < Increase::APIStatusError
    HTTP_STATUS = 409

    TYPE = "idempotency_key_already_used_error"
  end

  class InvalidOperationError < Increase::APIStatusError
    HTTP_STATUS = 409

    TYPE = "invalid_operation_error"
  end

  class RateLimitedError < Increase::APIStatusError
    HTTP_STATUS = 429

    TYPE = "rate_limited_error"
  end

  class InternalServerError < Increase::APIStatusError
    HTTP_STATUS = 500

    TYPE = "internal_server_error"
  end
end
