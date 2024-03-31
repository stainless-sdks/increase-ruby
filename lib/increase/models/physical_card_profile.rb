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
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] creator
      #   The creator of this Physical Card Profile.
      #   @return [Symbol]
      required :creator, Increase::Enum.new(:increase, :user)

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
      #   @return [Symbol]
      required :status,
               Increase::Enum.new(
                 :pending_creating,
                 :pending_reviewing,
                 :rejected,
                 :pending_submitting,
                 :active,
                 :archived
               )

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `physical_card_profile`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:physical_card_profile)
    end
  end
end
