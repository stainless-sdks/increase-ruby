# typed: strong

module Increase
  class BaseClient
    abstract!

    RequestShape = T.type_alias do
      {
        method: Symbol,
        path: T.any(String, T::Array[String]),
        query: T.nilable(T::Hash[String, T.nilable(T.any(T::Array[String], String))]),
        headers: T.nilable(T::Hash[String, T.nilable(String)]),
        body: T.nilable(T.anything),
        unwrap: T.nilable(Symbol),
        page: T.nilable(T::Class[Increase::BaseModel]),
        model: T.nilable(Increase::Converter::Input),
        options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
      }
    end

    NormalizedRequestShape = T.type_alias do
      {
        method: Symbol,
        url: URI::Generic,
        headers: T::Hash[String, String],
        body: T.anything,
        max_retries: Integer,
        timeout: Float
      }
    end

    MAX_REDIRECTS = 20

    sig { params(req: Increase::BaseClient::RequestShape).void }
    def self.validate!(req)
    end

    sig { returns(T.anything) }
    def requester
    end

    sig { params(_: T.anything).returns(T.anything) }
    def requester=(_)
    end

    sig do
      params(
          base_url: String,
          timeout: Float,
          max_retries: Integer,
          initial_retry_delay: Float,
          max_retry_delay: Float,
          headers: T::Hash[String, T.nilable(String)],
          idempotency_header: T.nilable(String)
        )
        .void
    end
    def initialize(
      base_url:,
      timeout: 0.0,
      max_retries: 0,
      initial_retry_delay: 0.0,
      max_retry_delay: 0.0,
      headers: {},
      idempotency_header: nil
    )
    end

    sig { overridable.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    sig { returns(String) }
    private def generate_idempotency_key
    end

    sig do
      params(req: Increase::BaseClient::RequestShape, opts: T::Hash[Symbol, T.anything])
        .returns(Increase::BaseClient::NormalizedRequestShape)
    end
    private def build_request(req, opts)
    end

    sig { params(status: Integer, headers: T::Hash[String, String]).returns(T::Boolean) }
    private def should_retry?(status, headers:)
    end

    sig { params(headers: T::Hash[String, String], retry_count: Integer).returns(Float) }
    private def retry_delay(headers, retry_count:)
    end

    sig do
      params(request: Increase::BaseClient::NormalizedRequestShape, status: Integer, location_header: String)
        .returns(Increase::BaseClient::NormalizedRequestShape)
    end
    private def follow_redirect(request, status:, location_header:)
    end

    sig do
      params(
          request: Increase::BaseClient::NormalizedRequestShape,
          redirect_count: Integer,
          retry_count: Integer,
          send_retry_header: T::Boolean
        )
        .returns(Net::HTTPResponse)
    end
    private def send_request(request, redirect_count:, retry_count:, send_retry_header:)
    end

    sig { params(req: Increase::BaseClient::RequestShape, response: NilClass).returns(T.anything) }
    private def parse_response(req, response)
    end

    sig do
      params(
          method: Symbol,
          path: T.any(String, T::Array[String]),
          query: T.nilable(T::Hash[String, T.nilable(T.any(T::Array[String], String))]),
          headers: T.nilable(T::Hash[String, T.nilable(String)]),
          body: T.nilable(T.anything),
          unwrap: T.nilable(Symbol),
          page: T.nilable(T::Class[Increase::BaseModel]),
          model: T.nilable(Increase::Converter::Input),
          options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
        .returns(T.anything)
    end
    def request(
      method,
      path,
      query: {},
      headers: {},
      body: nil,
      unwrap: nil,
      page: nil,
      model: Increase::Unknown,
      options: {}
    )
    end

    sig { returns(String) }
    def inspect
    end
  end
end
