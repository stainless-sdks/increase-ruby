# typed: strong

module Increase
  module Models
    class BookkeepingEntryListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: String).returns(String) }
      def cursor=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig do
        params(
          account_id: String,
          cursor: String,
          limit: Integer,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(account_id: nil, cursor: nil, limit: nil, request_options: {})
      end

      sig do
        override
          .returns({
                     account_id: String,
                     cursor: String,
                     limit: Integer,
                     request_options: Increase::RequestOptions
                   })
      end
      def to_hash
      end
    end
  end
end
