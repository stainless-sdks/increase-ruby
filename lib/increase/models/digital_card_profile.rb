# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::DigitalCardProfiles#create
    class DigitalCardProfile < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/digital_card_profile/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute app_icon_file_id
      #   #/components/schemas/digital_card_profile/properties/app_icon_file_id
      #
      #   @return [String]
      required :app_icon_file_id, String

      # @!attribute background_image_file_id
      #   #/components/schemas/digital_card_profile/properties/background_image_file_id
      #
      #   @return [String]
      required :background_image_file_id, String

      # @!attribute card_description
      #   #/components/schemas/digital_card_profile/properties/card_description
      #
      #   @return [String]
      required :card_description, String

      # @!attribute contact_email
      #   #/components/schemas/digital_card_profile/properties/contact_email
      #
      #   @return [String, nil]
      required :contact_email, String, nil?: true

      # @!attribute contact_phone
      #   #/components/schemas/digital_card_profile/properties/contact_phone
      #
      #   @return [String, nil]
      required :contact_phone, String, nil?: true

      # @!attribute contact_website
      #   #/components/schemas/digital_card_profile/properties/contact_website
      #
      #   @return [String, nil]
      required :contact_website, String, nil?: true

      # @!attribute created_at
      #   #/components/schemas/digital_card_profile/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   #/components/schemas/digital_card_profile/properties/description
      #
      #   @return [String]
      required :description, String

      # @!attribute idempotency_key
      #   #/components/schemas/digital_card_profile/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute issuer_name
      #   #/components/schemas/digital_card_profile/properties/issuer_name
      #
      #   @return [String]
      required :issuer_name, String

      # @!attribute status
      #   #/components/schemas/digital_card_profile/properties/status
      #
      #   @return [Symbol, Increase::Models::DigitalCardProfile::Status]
      required :status, enum: -> { Increase::Models::DigitalCardProfile::Status }

      # @!attribute text_color
      #   #/components/schemas/digital_card_profile/properties/text_color
      #
      #   @return [Increase::Models::DigitalCardProfile::TextColor]
      required :text_color, -> { Increase::Models::DigitalCardProfile::TextColor }

      # @!attribute type
      #   #/components/schemas/digital_card_profile/properties/type
      #
      #   @return [Symbol, Increase::Models::DigitalCardProfile::Type]
      required :type, enum: -> { Increase::Models::DigitalCardProfile::Type }

      # @!parse
      #   # #/components/schemas/digital_card_profile
      #   #
      #   # @param id [String]
      #   # @param app_icon_file_id [String]
      #   # @param background_image_file_id [String]
      #   # @param card_description [String]
      #   # @param contact_email [String, nil]
      #   # @param contact_phone [String, nil]
      #   # @param contact_website [String, nil]
      #   # @param created_at [Time]
      #   # @param description [String]
      #   # @param idempotency_key [String, nil]
      #   # @param issuer_name [String]
      #   # @param status [Symbol, Increase::Models::DigitalCardProfile::Status]
      #   # @param text_color [Increase::Models::DigitalCardProfile::TextColor]
      #   # @param type [Symbol, Increase::Models::DigitalCardProfile::Type]
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

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/digital_card_profile/properties/status
      #
      # @see Increase::Models::DigitalCardProfile#status
      module Status
        extend Increase::Internal::Type::Enum

        # The Card Profile is awaiting review from Increase and/or processing by card networks.
        PENDING = :pending

        # There is an issue with the Card Profile preventing it from use.
        REJECTED = :rejected

        # The Card Profile can be assigned to Cards.
        ACTIVE = :active

        # The Card Profile is no longer in use.
        ARCHIVED = :archived

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Increase::Models::DigitalCardProfile#text_color
      class TextColor < Increase::Internal::Type::BaseModel
        # @!attribute blue
        #   #/components/schemas/digital_card_profile/properties/text_color/properties/blue
        #
        #   @return [Integer]
        required :blue, Integer

        # @!attribute green
        #   #/components/schemas/digital_card_profile/properties/text_color/properties/green
        #
        #   @return [Integer]
        required :green, Integer

        # @!attribute red
        #   #/components/schemas/digital_card_profile/properties/text_color/properties/red
        #
        #   @return [Integer]
        required :red, Integer

        # @!parse
        #   # #/components/schemas/digital_card_profile/properties/text_color
        #   #
        #   # @param blue [Integer]
        #   # @param green [Integer]
        #   # @param red [Integer]
        #   #
        #   def initialize(blue:, green:, red:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # #/components/schemas/digital_card_profile/properties/type
      #
      # @see Increase::Models::DigitalCardProfile#type
      module Type
        extend Increase::Internal::Type::Enum

        DIGITAL_CARD_PROFILE = :digital_card_profile

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
