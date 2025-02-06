# typed: strong

module Increase
  module Models
    class PhysicalCardProfile < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(String)) }
      attr_accessor :back_image_file_id

      sig { returns(T.nilable(String)) }
      attr_accessor :carrier_image_file_id

      sig { returns(T.nilable(String)) }
      attr_accessor :contact_phone

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Symbol) }
      attr_accessor :creator

      sig { returns(String) }
      attr_accessor :description

      sig { returns(T.nilable(String)) }
      attr_accessor :front_image_file_id

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(T::Boolean) }
      attr_accessor :is_default

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Symbol) }
      attr_accessor :type

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
        ).void
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
        override.returns(
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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        PHYSICAL_CARD_PROFILE = :physical_card_profile

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
