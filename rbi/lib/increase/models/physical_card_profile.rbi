# typed: strong

module Increase
  module Models
    class PhysicalCardProfile < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(String)) }
      def back_image_file_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def back_image_file_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def carrier_image_file_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def carrier_image_file_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def contact_phone
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def contact_phone=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(Symbol) }
      def creator
      end

      sig { params(_: Symbol).returns(Symbol) }
      def creator=(_)
      end

      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig { returns(T.nilable(String)) }
      def front_image_file_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def front_image_file_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(T::Boolean) }
      def is_default
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def is_default=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig do
        params(
          id: String,
          back_image_file_id: T.nilable(String),
          carrier_image_file_id: T.nilable(String),
          contact_phone: T.nilable(String),
          created_at: Time,
          creator: Symbol,
          description: String,
          front_image_file_id: T.nilable(String),
          idempotency_key: T.nilable(String),
          is_default: T::Boolean,
          status: Symbol,
          type: Symbol
        )
          .void
      end
      def initialize(
        id:,
        back_image_file_id:,
        carrier_image_file_id:,
        contact_phone:,
        created_at:,
        creator:,
        description:,
        front_image_file_id:,
        idempotency_key:,
        is_default:,
        status:,
        type:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              back_image_file_id: T.nilable(String),
              carrier_image_file_id: T.nilable(String),
              contact_phone: T.nilable(String),
              created_at: Time,
              creator: Symbol,
              description: String,
              front_image_file_id: T.nilable(String),
              idempotency_key: T.nilable(String),
              is_default: T::Boolean,
              status: Symbol,
              type: Symbol
            }
          )
      end
      def to_hash
      end

      class Creator < Increase::Enum
        abstract!

        # This Physical Card Profile was created by Increase.
        INCREASE = :increase

        # This Physical Card Profile was created by you.
        USER = :user

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Status < Increase::Enum
        abstract!

        # The Card Profile has not yet been processed by Increase.
        PENDING_CREATING = :pending_creating

        # The card profile is awaiting review by Increase.
        PENDING_REVIEWING = :pending_reviewing

        # There is an issue with the Physical Card Profile preventing it from use.
        REJECTED = :rejected

        # The card profile is awaiting submission to the fulfillment provider.
        PENDING_SUBMITTING = :pending_submitting

        # The Physical Card Profile has been submitted to the fulfillment provider and is ready to use.
        ACTIVE = :active

        # The Physical Card Profile has been archived.
        ARCHIVED = :archived

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Type < Increase::Enum
        abstract!

        PHYSICAL_CARD_PROFILE = :physical_card_profile

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
