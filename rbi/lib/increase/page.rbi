# typed: strong

module Increase
  class Page
    include Increase::BasePage

    Elem = type_member

    sig { returns(T::Array[Elem]) }
    def data
    end

    sig { params(_: T::Array[Elem]).returns(T::Array[Elem]) }
    def data=(_)
    end

    sig { returns(T.nilable(String)) }
    def next_cursor
    end

    sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
    def next_cursor=(_)
    end

    sig do
      params(
          client: Increase::BaseClient,
          req: Increase::BaseClient::RequestComponentsShape,
          headers: T.any(T::Hash[String, String], Net::HTTPHeader),
          page_data: T::Hash[Symbol, T.anything]
        )
        .void
    end
    def initialize(client:, req:, headers:, page_data:)
    end
  end
end
