# frozen_string_literal: true

module Increase
  module Models
    # @example
    #
    # ```ruby
    # digital_card_profile => {
    #   id: String,
    #   app_icon_file_id: String,
    #   background_image_file_id: String,
    #   card_description: String,
    #   contact_email: String,
    #   **_
    # }
    # ```
    class DigitalCardProfile < Increase::BaseModel
      # @!attribute id
      #   The Card Profile identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute app_icon_file_id
      #   The identifier of the File containing the card's icon image.
      #
      #   @return [String]
      required :app_icon_file_id, String

      # @!attribute background_image_file_id
      #   The identifier of the File containing the card's front image.
      #
      #   @return [String]
      required :background_image_file_id, String

      # @!attribute card_description
      #   A user-facing description for the card itself.
      #
      #   @return [String]
      required :card_description, String

      # @!attribute contact_email
      #   An email address the user can contact to receive support for their card.
      #
      #   @return [String, nil]
      required :contact_email, String

      # @!attribute contact_phone
      #   A phone number the user can contact to receive support for their card.
      #
      #   @return [String, nil]
      required :contact_phone, String

      # @!attribute contact_website
      #   A website the user can visit to view and receive support for their card.
      #
      #   @return [String, nil]
      required :contact_website, String

      # @!attribute created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Card Dispute was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   A description you can use to identify the Card Profile.
      #
      #   @return [String]
      required :description, String

      # @!attribute idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      required :idempotency_key, String

      # @!attribute issuer_name
      #   A user-facing description for whoever is issuing the card.
      #
      #   @return [String]
      required :issuer_name, String

      # @!attribute status
      #   The status of the Card Profile.
      #
      #   @return [Symbol, Increase::Models::DigitalCardProfile::Status]
      required :status, enum: -> { Increase::Models::DigitalCardProfile::Status }

      # @!attribute text_color
      #   The Card's text color, specified as an RGB triple.
      #
      #   @return [Increase::Models::DigitalCardProfile::TextColor]
      required :text_color, -> { Increase::Models::DigitalCardProfile::TextColor }

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be `digital_card_profile`.
      #
      #   @return [Symbol, Increase::Models::DigitalCardProfile::Type]
      required :type, enum: -> { Increase::Models::DigitalCardProfile::Type }

      # @!parse
      #   # This contains artwork and metadata relating to a Card's appearance in digital
      #   #   wallet apps like Apple Pay and Google Pay. For more information, see our guide
      #   #   on [digital card artwork](https://increase.com/documentation/card-art).
      #   #
      #   # @param id [String] The Card Profile identifier.
      #   #
      #   # @param app_icon_file_id [String] The identifier of the File containing the card's icon image.
      #   #
      #   # @param background_image_file_id [String] The identifier of the File containing the card's front image.
      #   #
      #   # @param card_description [String] A user-facing description for the card itself.
      #   #
      #   # @param contact_email [String, nil] An email address the user can contact to receive support for their card.
      #   #
      #   # @param contact_phone [String, nil] A phone number the user can contact to receive support for their card.
      #   #
      #   # @param contact_website [String, nil] A website the user can visit to view and receive support for their card.
      #   #
      #   # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   #   the Card Dispute was created.
      #   #
      #   # @param description [String] A description you can use to identify the Card Profile.
      #   #
      #   # @param idempotency_key [String, nil] The idempotency key you chose for this object. This value is unique across
      #   #   Increase and is used to ensure that a request is only processed once. Learn more
      #   #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #
      #   # @param issuer_name [String] A user-facing description for whoever is issuing the card.
      #   #
      #   # @param status [String] The status of the Card Profile.
      #   #
      #   # @param text_color [Increase::Models::DigitalCardProfile::TextColor] The Card's text color, specified as an RGB triple.
      #   #
      #   # @param type [String] A constant representing the object's type. For this resource it will always be
      #   #   `digital_card_profile`.
      #   #
      #   def initialize(
      #     id:,
      #     app_icon_file_id:,
      #     background_image_file_id:,
      #     card_description:,
      #     contact_email:,
      #     contact_phone:,
      #     contact_website:,
      #     created_at:,
      #     description:,
      #     idempotency_key:,
      #     issuer_name:,
      #     status:,
      #     text_color:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The status of the Card Profile.
      #
      # @example
      #
      # ```ruby
      # case status
      # in :pending
      #   # ...
      # in :rejected
      #   # ...
      # in :active
      #   # ...
      # in :archived
      #   # ...
      # end
      # ```
      class Status < Increase::Enum
        # The Card Profile is awaiting review from Increase and/or processing by card networks.
        PENDING = :pending

        # There is an issue with the Card Profile preventing it from use.
        REJECTED = :rejected

        # The Card Profile can be assigned to Cards.
        ACTIVE = :active

        # The Card Profile is no longer in use.
        ARCHIVED = :archived

        finalize!
      end

      # @example
      #
      # ```ruby
      # text_color => {
      #   blue: Integer,
      #   green: Integer,
      #   red: Integer
      # }
      # ```
      class TextColor < Increase::BaseModel
        # @!attribute blue
        #   The value of the blue channel in the RGB color.
        #
        #   @return [Integer]
        required :blue, Integer

        # @!attribute green
        #   The value of the green channel in the RGB color.
        #
        #   @return [Integer]
        required :green, Integer

        # @!attribute red
        #   The value of the red channel in the RGB color.
        #
        #   @return [Integer]
        required :red, Integer

        # @!parse
        #   # The Card's text color, specified as an RGB triple.
        #   #
        #   # @param blue [Integer] The value of the blue channel in the RGB color.
        #   #
        #   # @param green [Integer] The value of the green channel in the RGB color.
        #   #
        #   # @param red [Integer] The value of the red channel in the RGB color.
        #   #
        #   def initialize(blue:, green:, red:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end

      # A constant representing the object's type. For this resource it will always be `digital_card_profile`.
      #
      # @example
      #
      # ```ruby
      # case type
      # in :digital_card_profile
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        DIGITAL_CARD_PROFILE = :digital_card_profile

        finalize!
      end
    end
  end
end
