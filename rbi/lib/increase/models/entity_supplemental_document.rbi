# typed: strong

module Increase
  module Models
    class EntitySupplementalDocument < Increase::BaseModel
      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the
      #   Supplemental Document was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The Entity the supplemental document is attached to.
      sig { returns(String) }
      def entity_id
      end

      sig { params(_: String).returns(String) }
      def entity_id=(_)
      end

      # The File containing the document.
      sig { returns(String) }
      def file_id
      end

      sig { params(_: String).returns(String) }
      def file_id=(_)
      end

      # The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `entity_supplemental_document`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # Supplemental Documents are uploaded files connected to an Entity during
      #   onboarding.
      sig do
        params(
          created_at: Time,
          entity_id: String,
          file_id: String,
          idempotency_key: T.nilable(String),
          type: Symbol
        )
          .returns(T.attached_class)
      end
      def self.new(created_at:, entity_id:, file_id:, idempotency_key:, type:)
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

      # A constant representing the object's type. For this resource it will always be
      #   `entity_supplemental_document`.
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
