# typed: strong

module Increase
  module Models
    class PhysicalCardProfile < Increase::BaseModel
      # The Card Profile identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The identifier of the File containing the physical card's back image.
      sig { returns(T.nilable(String)) }
      def back_image_file_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def back_image_file_id=(_)
      end

      # The identifier of the File containing the physical card's carrier image.
      sig { returns(T.nilable(String)) }
      def carrier_image_file_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def carrier_image_file_id=(_)
      end

      # A phone number the user can contact to receive support for their card.
      sig { returns(T.nilable(String)) }
      def contact_phone
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def contact_phone=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the Card Dispute was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The creator of this Physical Card Profile.
      sig { returns(Symbol) }
      def creator
      end

      sig { params(_: Symbol).returns(Symbol) }
      def creator=(_)
      end

      # A description you can use to identify the Physical Card Profile.
      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      # The identifier of the File containing the physical card's front image.
      sig { returns(T.nilable(String)) }
      def front_image_file_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def front_image_file_id=(_)
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

      # Whether this Physical Card Profile is the default for all cards in its Increase
      #   group.
      sig { returns(T::Boolean) }
      def is_default
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def is_default=(_)
      end

      # The status of the Physical Card Profile.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `physical_card_profile`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # This contains artwork and metadata relating to a Physical Card's appearance. For
      #   more information, see our guide on
      #   [physical card artwork](https://increase.com/documentation/card-art-physical-cards).
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
          .returns(T.attached_class)
      end
      def self.new(
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

      # The creator of this Physical Card Profile.
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

      # The status of the Physical Card Profile.
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

      # A constant representing the object's type. For this resource it will always be
      #   `physical_card_profile`.
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
