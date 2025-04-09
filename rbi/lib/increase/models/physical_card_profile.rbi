# typed: strong

module Increase
  module Models
    class PhysicalCardProfile < Increase::Internal::Type::BaseModel
      # #/components/schemas/physical_card_profile/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/physical_card_profile/properties/back_image_file_id
      sig { returns(T.nilable(String)) }
      attr_accessor :back_image_file_id

      # #/components/schemas/physical_card_profile/properties/carrier_image_file_id
      sig { returns(T.nilable(String)) }
      attr_accessor :carrier_image_file_id

      # #/components/schemas/physical_card_profile/properties/contact_phone
      sig { returns(T.nilable(String)) }
      attr_accessor :contact_phone

      # #/components/schemas/physical_card_profile/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/physical_card_profile/properties/creator
      sig { returns(Increase::Models::PhysicalCardProfile::Creator::TaggedSymbol) }
      attr_accessor :creator

      # #/components/schemas/physical_card_profile/properties/description
      sig { returns(String) }
      attr_accessor :description

      # #/components/schemas/physical_card_profile/properties/front_image_file_id
      sig { returns(T.nilable(String)) }
      attr_accessor :front_image_file_id

      # #/components/schemas/physical_card_profile/properties/idempotency_key
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # #/components/schemas/physical_card_profile/properties/is_default
      sig { returns(T::Boolean) }
      attr_accessor :is_default

      # #/components/schemas/physical_card_profile/properties/status
      sig { returns(Increase::Models::PhysicalCardProfile::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/physical_card_profile/properties/type
      sig { returns(Increase::Models::PhysicalCardProfile::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/physical_card_profile
      sig do
        params(
          id: String,
          back_image_file_id: T.nilable(String),
          carrier_image_file_id: T.nilable(String),
          contact_phone: T.nilable(String),
          created_at: Time,
          creator: Increase::Models::PhysicalCardProfile::Creator::OrSymbol,
          description: String,
          front_image_file_id: T.nilable(String),
          idempotency_key: T.nilable(String),
          is_default: T::Boolean,
          status: Increase::Models::PhysicalCardProfile::Status::OrSymbol,
          type: Increase::Models::PhysicalCardProfile::Type::OrSymbol
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
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              back_image_file_id: T.nilable(String),
              carrier_image_file_id: T.nilable(String),
              contact_phone: T.nilable(String),
              created_at: Time,
              creator: Increase::Models::PhysicalCardProfile::Creator::TaggedSymbol,
              description: String,
              front_image_file_id: T.nilable(String),
              idempotency_key: T.nilable(String),
              is_default: T::Boolean,
              status: Increase::Models::PhysicalCardProfile::Status::TaggedSymbol,
              type: Increase::Models::PhysicalCardProfile::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      # #/components/schemas/physical_card_profile/properties/creator
      module Creator
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::PhysicalCardProfile::Creator) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::PhysicalCardProfile::Creator::TaggedSymbol) }

        # This Physical Card Profile was created by Increase.
        INCREASE = T.let(:increase, Increase::Models::PhysicalCardProfile::Creator::TaggedSymbol)

        # This Physical Card Profile was created by you.
        USER = T.let(:user, Increase::Models::PhysicalCardProfile::Creator::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::PhysicalCardProfile::Creator::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/physical_card_profile/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::PhysicalCardProfile::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::PhysicalCardProfile::Status::TaggedSymbol) }

        # The Card Profile has not yet been processed by Increase.
        PENDING_CREATING = T.let(:pending_creating, Increase::Models::PhysicalCardProfile::Status::TaggedSymbol)

        # The card profile is awaiting review by Increase.
        PENDING_REVIEWING =
          T.let(:pending_reviewing, Increase::Models::PhysicalCardProfile::Status::TaggedSymbol)

        # There is an issue with the Physical Card Profile preventing it from use.
        REJECTED = T.let(:rejected, Increase::Models::PhysicalCardProfile::Status::TaggedSymbol)

        # The card profile is awaiting submission to the fulfillment provider.
        PENDING_SUBMITTING =
          T.let(:pending_submitting, Increase::Models::PhysicalCardProfile::Status::TaggedSymbol)

        # The Physical Card Profile has been submitted to the fulfillment provider and is ready to use.
        ACTIVE = T.let(:active, Increase::Models::PhysicalCardProfile::Status::TaggedSymbol)

        # The Physical Card Profile has been archived.
        ARCHIVED = T.let(:archived, Increase::Models::PhysicalCardProfile::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::PhysicalCardProfile::Status::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/physical_card_profile/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::PhysicalCardProfile::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::PhysicalCardProfile::Type::TaggedSymbol) }

        PHYSICAL_CARD_PROFILE =
          T.let(:physical_card_profile, Increase::Models::PhysicalCardProfile::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::PhysicalCardProfile::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
