# typed: strong

module Increase
  class Page
    include Increase::BasePage

    Elem = type_member

    sig { returns(T::Array[Elem]) }
    attr_accessor :data

    sig { returns(T.nilable(String)) }
    attr_accessor :next_cursor

    sig do
      params(
        client: Increase::BaseClient,
        req: Increase::BaseClient::RequestShape,
        headers: T::Hash[String, String],
        unwrapped: T::Hash[Symbol, T.anything]
      ).void
    end
    def initialize(client:, req:, headers:, unwrapped:)
    end
  end
end
