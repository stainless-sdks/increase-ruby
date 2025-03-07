# typed: strong

module Increase
  module Models
    class EntitySupplementalDocument < Increase::BaseModel
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(String) }
      def entity_id
      end

      sig { params(_: String).returns(String) }
      def entity_id=(_)
      end

      sig { returns(String) }
      def file_id
      end

      sig { params(_: String).returns(String) }
      def file_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig do
        params(
          created_at: Time,
          entity_id: String,
          file_id: String,
          idempotency_key: T.nilable(String),
          type: Symbol
        )
          .void
      end
      def initialize(created_at:, entity_id:, file_id:, idempotency_key:, type:)
      end

      sig do
        override
          .returns(
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
