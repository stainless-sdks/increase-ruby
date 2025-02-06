# typed: strong

module Increase
  module Models
    class EntitySupplementalDocument < Increase::BaseModel
      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :entity_id

      sig { returns(String) }
      attr_accessor :file_id

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          created_at: Time,
          entity_id: String,
          file_id: String,
          idempotency_key: T.nilable(String),
          type: Symbol
        ).void
      end
      def initialize(created_at:, entity_id:, file_id:, idempotency_key:, type:)
      end

      sig do
        override.returns(
          {
            created_at: Time,
            entity_id: String,
            file_id: String,
            idempotency_key: T.nilable(String),
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Type < Increase::Enum
        abstract!

        ENTITY_SUPPLEMENTAL_DOCUMENT = :entity_supplemental_document

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
