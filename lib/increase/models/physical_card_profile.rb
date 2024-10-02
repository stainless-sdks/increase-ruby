# frozen_string_literal: true

module Increase
  module Models
    class PhysicalCardProfile < BaseModel
      # @!attribute [rw] id
      #   The Card Profile identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] back_image_file_id
      #   The identifier of the File containing the physical card's back image.
      #   @return [String]
      required :back_image_file_id, String

      # @!attribute [rw] carrier_image_file_id
      #   The identifier of the File containing the physical card's carrier image.
      #   @return [String]
      required :carrier_image_file_id, String

      # @!attribute [rw] contact_phone
      #   A phone number the user can contact to receive support for their card.
      #   @return [String]
      required :contact_phone, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Card Dispute was created.
      #   @return [DateTime]
      required :created_at, DateTime

      # @!attribute [rw] creator
      #   The creator of this Physical Card Profile.
      #   One of the constants defined in {Increase::Models::PhysicalCardProfile::Creator}
      #   @return [Symbol]
      required :creator, enum: -> { Increase::Models::PhysicalCardProfile::Creator }

      # @!attribute [rw] description
      #   A description you can use to identify the Physical Card Profile.
      #   @return [String]
      required :description, String

      # @!attribute [rw] front_image_file_id
      #   The identifier of the File containing the physical card's front image.
      #   @return [String]
      required :front_image_file_id, String

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] is_default
      #   Whether this Physical Card Profile is the default for all cards in its Increase group.
      #   @return [Boolean]
      required :is_default, Increase::BooleanModel

      # @!attribute [rw] status
      #   The status of the Physical Card Profile.
      #   One of the constants defined in {Increase::Models::PhysicalCardProfile::Status}
      #   @return [Symbol]
      required :status, enum: -> { Increase::Models::PhysicalCardProfile::Status }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `physical_card_profile`.
      #   One of the constants defined in {Increase::Models::PhysicalCardProfile::Type}
      #   @return [Symbol]
      required :type, enum: -> { Increase::Models::PhysicalCardProfile::Type }

      # The creator of this Physical Card Profile.
      class Creator < Increase::Enum
        # This Physical Card Profile was created by Increase.
        INCREASE = :increase

        # This Physical Card Profile was created by you.
        USER = :user
      end

      # The status of the Physical Card Profile.
      class Status < Increase::Enum
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
      end

      # A constant representing the object's type. For this resource it will always be `physical_card_profile`.
      class Type < Increase::Enum
        PHYSICAL_CARD_PROFILE = :physical_card_profile
      end
    end
  end
end
