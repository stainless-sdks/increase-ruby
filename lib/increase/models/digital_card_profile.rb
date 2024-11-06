# frozen_string_literal: true

module Increase
  module Models
    class DigitalCardProfile < Increase::BaseModel
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
      #   @return [Time]
      required :created_at, Time

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
      #   @return [Symbol, Increase::Models::DigitalCardProfile::Status]
      required :status, enum: -> { Increase::Models::DigitalCardProfile::Status }

      # @!attribute [rw] text_color
      #   The Card's text color, specified as an RGB triple.
      #   @return [Increase::Models::DigitalCardProfile::TextColor]
      required :text_color, -> { Increase::Models::DigitalCardProfile::TextColor }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `digital_card_profile`.
      #   @return [Symbol, Increase::Models::DigitalCardProfile::Type]
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

      class TextColor < Increase::BaseModel
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

        # @!parse
        #   # Create a new instance of TextColor from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Integer] :blue The value of the blue channel in the RGB color.
        #   #   @option data [Integer] :green The value of the green channel in the RGB color.
        #   #   @option data [Integer] :red The value of the red channel in the RGB color.
        #   def initialize(data = {}) = super
      end

      # A constant representing the object's type. For this resource it will always be `digital_card_profile`.
      class Type < Increase::Enum
        DIGITAL_CARD_PROFILE = :digital_card_profile
      end

      # @!parse
      #   # Create a new instance of DigitalCardProfile from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id The Card Profile identifier.
      #   #   @option data [String] :app_icon_file_id The identifier of the File containing the card's icon image.
      #   #   @option data [String] :background_image_file_id The identifier of the File containing the card's front image.
      #   #   @option data [String] :card_description A user-facing description for the card itself.
      #   #   @option data [String] :contact_email An email address the user can contact to receive support for their card.
      #   #   @option data [String] :contact_phone A phone number the user can contact to receive support for their card.
      #   #   @option data [String] :contact_website A website the user can visit to view and receive support for their card.
      #   #   @option data [String] :created_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   #     the Card Dispute was created.
      #   #   @option data [String] :description A description you can use to identify the Card Profile.
      #   #   @option data [String] :idempotency_key The idempotency key you chose for this object. This value is unique across
      #   #     Increase and is used to ensure that a request is only processed once. Learn more
      #   #     about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #   @option data [String] :issuer_name A user-facing description for whoever is issuing the card.
      #   #   @option data [String] :status The status of the Card Profile.
      #   #   @option data [Object] :text_color The Card's text color, specified as an RGB triple.
      #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
      #   #     `digital_card_profile`.
      #   def initialize(data = {}) = super
    end
  end
end
