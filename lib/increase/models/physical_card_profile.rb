# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::PhysicalCardProfiles#create
    class PhysicalCardProfile < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/physical_card_profile/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute back_image_file_id
      #   #/components/schemas/physical_card_profile/properties/back_image_file_id
      #
      #   @return [String, nil]
      required :back_image_file_id, String, nil?: true

      # @!attribute carrier_image_file_id
      #   #/components/schemas/physical_card_profile/properties/carrier_image_file_id
      #
      #   @return [String, nil]
      required :carrier_image_file_id, String, nil?: true

      # @!attribute contact_phone
      #   #/components/schemas/physical_card_profile/properties/contact_phone
      #
      #   @return [String, nil]
      required :contact_phone, String, nil?: true

      # @!attribute created_at
      #   #/components/schemas/physical_card_profile/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute creator
      #   #/components/schemas/physical_card_profile/properties/creator
      #
      #   @return [Symbol, Increase::Models::PhysicalCardProfile::Creator]
      required :creator, enum: -> { Increase::Models::PhysicalCardProfile::Creator }

      # @!attribute description
      #   #/components/schemas/physical_card_profile/properties/description
      #
      #   @return [String]
      required :description, String

      # @!attribute front_image_file_id
      #   #/components/schemas/physical_card_profile/properties/front_image_file_id
      #
      #   @return [String, nil]
      required :front_image_file_id, String, nil?: true

      # @!attribute idempotency_key
      #   #/components/schemas/physical_card_profile/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute is_default
      #   #/components/schemas/physical_card_profile/properties/is_default
      #
      #   @return [Boolean]
      required :is_default, Increase::Internal::Type::Boolean

      # @!attribute status
      #   #/components/schemas/physical_card_profile/properties/status
      #
      #   @return [Symbol, Increase::Models::PhysicalCardProfile::Status]
      required :status, enum: -> { Increase::Models::PhysicalCardProfile::Status }

      # @!attribute type
      #   #/components/schemas/physical_card_profile/properties/type
      #
      #   @return [Symbol, Increase::Models::PhysicalCardProfile::Type]
      required :type, enum: -> { Increase::Models::PhysicalCardProfile::Type }

      # @!parse
      #   # #/components/schemas/physical_card_profile
      #   #
      #   # @param id [String]
      #   # @param back_image_file_id [String, nil]
      #   # @param carrier_image_file_id [String, nil]
      #   # @param contact_phone [String, nil]
      #   # @param created_at [Time]
      #   # @param creator [Symbol, Increase::Models::PhysicalCardProfile::Creator]
      #   # @param description [String]
      #   # @param front_image_file_id [String, nil]
      #   # @param idempotency_key [String, nil]
      #   # @param is_default [Boolean]
      #   # @param status [Symbol, Increase::Models::PhysicalCardProfile::Status]
      #   # @param type [Symbol, Increase::Models::PhysicalCardProfile::Type]
      #   #
      #   def initialize(
      #     id:,
      #     back_image_file_id:,
      #     carrier_image_file_id:,
      #     contact_phone:,
      #     created_at:,
      #     creator:,
      #     description:,
      #     front_image_file_id:,
      #     idempotency_key:,
      #     is_default:,
      #     status:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/physical_card_profile/properties/creator
      #
      # @see Increase::Models::PhysicalCardProfile#creator
      module Creator
        extend Increase::Internal::Type::Enum

        # This Physical Card Profile was created by Increase.
        INCREASE = :increase

        # This Physical Card Profile was created by you.
        USER = :user

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/physical_card_profile/properties/status
      #
      # @see Increase::Models::PhysicalCardProfile#status
      module Status
        extend Increase::Internal::Type::Enum

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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/physical_card_profile/properties/type
      #
      # @see Increase::Models::PhysicalCardProfile#type
      module Type
        extend Increase::Internal::Type::Enum

        PHYSICAL_CARD_PROFILE = :physical_card_profile

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
