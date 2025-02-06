# typed: strong

module Increase
  module Models
    class IntrafiExclusionListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      sig { returns(T.nilable(String)) }
      attr_reader :entity_id

      sig { params(entity_id: String).void }
      attr_writer :entity_id

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig do
        params(
          cursor: String,
          entity_id: String,
          idempotency_key: String,
          limit: Integer,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(cursor: nil, entity_id: nil, idempotency_key: nil, limit: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            cursor: String,
            entity_id: String,
            idempotency_key: String,
            limit: Integer,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
