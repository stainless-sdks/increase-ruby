# frozen_string_literal: true

module Increase
  module Models
    class DigitalCardProfile < BaseModel
      # @!attribute [rw] id
      #   The Card Profile identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] app_icon_file_id
      #   The identifier of the File containing the card's icon image.
      #   @return [String]
      required :app_icon_file_id, String

      # @!attribute [rw] background_image_file_id
      #   The identifier of the File containing the card's front image.
      #   @return [String]
      required :background_image_file_id, String

      # @!attribute [rw] card_description
      #   A user-facing description for the card itself.
      #   @return [String]
      required :card_description, String

      # @!attribute [rw] contact_email
      #   An email address the user can contact to receive support for their card.
      #   @return [String]
      required :contact_email, String

      # @!attribute [rw] contact_phone
      #   A phone number the user can contact to receive support for their card.
      #   @return [String]
      required :contact_phone, String

      # @!attribute [rw] contact_website
      #   A website the user can visit to view and receive support for their card.
      #   @return [String]
      required :contact_website, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Card Dispute was created.
      #   @return [DateTime]
      required :created_at, DateTime

      # @!attribute [rw] description
      #   A description you can use to identify the Card Profile.
      #   @return [String]
      required :description, String

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] issuer_name
      #   A user-facing description for whoever is issuing the card.
      #   @return [String]
      required :issuer_name, String

      # @!attribute [rw] status
      #   The status of the Card Profile.
      #   One of the constants defined in {Increase::Models::DigitalCardProfile::Status}
      #   @return [Symbol]
      required :status, enum: -> { Increase::Models::DigitalCardProfile::Status }

      # @!attribute [rw] text_color
      #   The Card's text color, specified as an RGB triple.
      #   @return [Increase::Models::DigitalCardProfile::TextColor]
      required :text_color, -> { Increase::Models::DigitalCardProfile::TextColor }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `digital_card_profile`.
      #   One of the constants defined in {Increase::Models::DigitalCardProfile::Type}
      #   @return [Symbol]
      required :type, enum: -> { Increase::Models::DigitalCardProfile::Type }

      # The status of the Card Profile.
      class Status < Increase::Enum
        # The Card Profile is awaiting review from Increase and/or processing by card networks.
        PENDING = :pending

        # There is an issue with the Card Profile preventing it from use.
        REJECTED = :rejected

        # The Card Profile can be assigned to Cards.
        ACTIVE = :active

        # The Card Profile is no longer in use.
        ARCHIVED = :archived
      end

      class TextColor < BaseModel
        # @!attribute [rw] blue
        #   The value of the blue channel in the RGB color.
        #   @return [Integer]
        required :blue, Integer

        # @!attribute [rw] green
        #   The value of the green channel in the RGB color.
        #   @return [Integer]
        required :green, Integer

        # @!attribute [rw] red
        #   The value of the red channel in the RGB color.
        #   @return [Integer]
        required :red, Integer
      end

      # A constant representing the object's type. For this resource it will always be `digital_card_profile`.
      class Type < Increase::Enum
        DIGITAL_CARD_PROFILE = :digital_card_profile
      end
    end
  end
end
