# typed: strong

module Increase
  module Models
    class BookkeepingAccountListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: String).returns(String) }
      def cursor=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: String).returns(String) }
      def idempotency_key=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig do
        params(
            cursor: String,
            idempotency_key: String,
            limit: Integer,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          )
          .void
      end
      def initialize(cursor: nil, idempotency_key: nil, limit: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {cursor: String, idempotency_key: String, limit: Integer, request_options: Increase::RequestOptions}
          )
      end
      def to_hash
      end
    end
  end
end
