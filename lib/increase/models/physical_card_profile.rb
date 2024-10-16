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
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] creator
      #   The creator of this Physical Card Profile.
      #   @return [Symbol, Increase::Models::PhysicalCardProfile::Creator]
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
      #   @return [Symbol, Increase::Models::PhysicalCardProfile::Status]
      required :status, enum: -> { Increase::Models::PhysicalCardProfile::Status }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `physical_card_profile`.
      #   @return [Symbol, Increase::Models::PhysicalCardProfile::Type]
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

      # Create a new instance of PhysicalCardProfile from a Hash of raw data.
      #
      # @overload initialize(id: nil, back_image_file_id: nil, carrier_image_file_id: nil, contact_phone: nil, created_at: nil, creator: nil, description: nil, front_image_file_id: nil, idempotency_key: nil, is_default: nil, status: nil, type: nil)
      # @param id [String] The Card Profile identifier.
      # @param back_image_file_id [String] The identifier of the File containing the physical card's back image.
      # @param carrier_image_file_id [String] The identifier of the File containing the physical card's carrier image.
      # @param contact_phone [String] A phone number the user can contact to receive support for their card.
      # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the Card Dispute was created.
      # @param creator [String] The creator of this Physical Card Profile.
      # @param description [String] A description you can use to identify the Physical Card Profile.
      # @param front_image_file_id [String] The identifier of the File containing the physical card's front image.
      # @param idempotency_key [String] The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      # @param is_default [Hash] Whether this Physical Card Profile is the default for all cards in its Increase
      #   group.
      # @param status [String] The status of the Physical Card Profile.
      # @param type [String] A constant representing the object's type. For this resource it will always be
      #   `physical_card_profile`.
      def initialize(data = {})
        super
      end
    end
  end
end
