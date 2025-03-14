# typed: strong

module Increase
  class Error < StandardError
    sig { returns(T.nilable(StandardError)) }
    def cause
    end

    sig { params(_: T.nilable(StandardError)).returns(T.nilable(StandardError)) }
    def cause=(_)
    end
  end

  class ConversionError < Increase::Error
  end

  class APIError < Increase::Error
    sig { returns(URI::Generic) }
    def url
    end

    sig { params(_: URI::Generic).returns(URI::Generic) }
    def url=(_)
    end

    sig { returns(T.nilable(Integer)) }
    def status
    end

    sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
    def status=(_)
    end

    sig { returns(T.nilable(T.anything)) }
    def body
    end

    sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
    def body=(_)
    end

    # @api private
    sig do
      params(
        url: URI::Generic,
        status: T.nilable(Integer),
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .returns(T.attached_class)
    end
    def self.new(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
    end
  end

  class APIConnectionError < Increase::APIError
    sig { void }
    def status
    end

    sig { params(_: NilClass).void }
    def status=(_)
    end

    sig { void }
    def body
    end

    sig { params(_: NilClass).void }
    def body=(_)
    end

    # @api private
    sig do
      params(
        url: URI::Generic,
        status: NilClass,
        body: NilClass,
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .returns(T.attached_class)
    end
    def self.new(url:, status: nil, body: nil, request: nil, response: nil, message: "Connection error.")
    end
  end

  class APITimeoutError < Increase::APIConnectionError
    # @api private
    sig do
      params(
        url: URI::Generic,
        status: NilClass,
        body: NilClass,
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .returns(T.attached_class)
    end
    def self.new(url:, status: nil, body: nil, request: nil, response: nil, message: "Request timed out.")
    end
  end

  class APIStatusError < Increase::APIError
    # @api private
    sig do
      params(
        url: URI::Generic,
        status: Integer,
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .returns(T.attached_class)
    end
    def self.for(url:, status:, body:, request:, response:, message: nil)
    end

    sig { returns(Integer) }
    def status
    end

    sig { params(_: Integer).returns(Integer) }
    def status=(_)
    end

    # @api private
    sig do
      params(
        url: URI::Generic,
        status: Integer,
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .returns(T.attached_class)
    end
    def self.new(url:, status:, body:, request:, response:, message: nil)
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
    HTTP_STATUS = 400

    TYPE = "invalid_parameters_error"
  end

  class MalformedRequestError < Increase::BadRequestError
    HTTP_STATUS = 400

    TYPE = "malformed_request_error"
  end

  class InvalidAPIKeyError < Increase::AuthenticationError
    HTTP_STATUS = 401

    TYPE = "invalid_api_key_error"
  end

  class EnvironmentMismatchError < Increase::PermissionDeniedError
    HTTP_STATUS = 403

    TYPE = "environment_mismatch_error"
  end

  class InsufficientPermissionsError < Increase::PermissionDeniedError
    HTTP_STATUS = 403

    TYPE = "insufficient_permissions_error"
  end

  class PrivateFeatureError < Increase::PermissionDeniedError
    HTTP_STATUS = 403

    TYPE = "private_feature_error"
  end

  class APIMethodNotFoundError < Increase::NotFoundError
    HTTP_STATUS = 404

    TYPE = "api_method_not_found_error"
  end

  class ObjectNotFoundError < Increase::NotFoundError
    HTTP_STATUS = 404

    TYPE = "object_not_found_error"
  end

  class IdempotencyKeyAlreadyUsedError < Increase::ConflictError
    HTTP_STATUS = 409

    TYPE = "idempotency_key_already_used_error"
  end

  class InvalidOperationError < Increase::ConflictError
    HTTP_STATUS = 409

    TYPE = "invalid_operation_error"
  end

  class RateLimitedError < Increase::RateLimitError
    HTTP_STATUS = 429

    TYPE = "rate_limited_error"
  end

  class InternalServerError < Increase::APIStatusError
    HTTP_STATUS = T.let((500..), T::Range[Integer])

    TYPE = "internal_server_error"
  end
end
