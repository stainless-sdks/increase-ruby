# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::DigitalCardProfiles#create
    class DigitalCardProfileCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute app_icon_file_id
      #   #/components/schemas/create_a_digital_card_profile_parameters/properties/app_icon_file_id
      #
      #   @return [String]
      required :app_icon_file_id, String

      # @!attribute background_image_file_id
      #   #/components/schemas/create_a_digital_card_profile_parameters/properties/background_image_file_id
      #
      #   @return [String]
      required :background_image_file_id, String

      # @!attribute card_description
      #   #/components/schemas/create_a_digital_card_profile_parameters/properties/card_description
      #
      #   @return [String]
      required :card_description, String

      # @!attribute description
      #   #/components/schemas/create_a_digital_card_profile_parameters/properties/description
      #
      #   @return [String]
      required :description, String

      # @!attribute issuer_name
      #   #/components/schemas/create_a_digital_card_profile_parameters/properties/issuer_name
      #
      #   @return [String]
      required :issuer_name, String

      # @!attribute [r] contact_email
      #   #/components/schemas/create_a_digital_card_profile_parameters/properties/contact_email
      #
      #   @return [String, nil]
      optional :contact_email, String

      # @!parse
      #   # @return [String]
      #   attr_writer :contact_email

      # @!attribute [r] contact_phone
      #   #/components/schemas/create_a_digital_card_profile_parameters/properties/contact_phone
      #
      #   @return [String, nil]
      optional :contact_phone, String

      # @!parse
      #   # @return [String]
      #   attr_writer :contact_phone

      # @!attribute [r] contact_website
      #   #/components/schemas/create_a_digital_card_profile_parameters/properties/contact_website
      #
      #   @return [String, nil]
      optional :contact_website, String

      # @!parse
      #   # @return [String]
      #   attr_writer :contact_website

      # @!attribute [r] text_color
      #   #/components/schemas/create_a_digital_card_profile_parameters/properties/text_color
      #
      #   @return [Increase::Models::DigitalCardProfileCreateParams::TextColor, nil]
      optional :text_color, -> { Increase::Models::DigitalCardProfileCreateParams::TextColor }

      # @!parse
      #   # @return [Increase::Models::DigitalCardProfileCreateParams::TextColor]
      #   attr_writer :text_color

      # @!parse
      #   # @param app_icon_file_id [String]
      #   # @param background_image_file_id [String]
      #   # @param card_description [String]
      #   # @param description [String]
      #   # @param issuer_name [String]
      #   # @param contact_email [String]
      #   # @param contact_phone [String]
      #   # @param contact_website [String]
      #   # @param text_color [Increase::Models::DigitalCardProfileCreateParams::TextColor]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     app_icon_file_id:,
      #     background_image_file_id:,
      #     card_description:,
      #     description:,
      #     issuer_name:,
      #     contact_email: nil,
      #     contact_phone: nil,
      #     contact_website: nil,
      #     text_color: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class TextColor < Increase::Internal::Type::BaseModel
        # @!attribute blue
        #   #/components/schemas/create_a_digital_card_profile_parameters/properties/text_color/properties/blue
        #
        #   @return [Integer]
        required :blue, Integer

        # @!attribute green
        #   #/components/schemas/create_a_digital_card_profile_parameters/properties/text_color/properties/green
        #
        #   @return [Integer]
        required :green, Integer

        # @!attribute red
        #   #/components/schemas/create_a_digital_card_profile_parameters/properties/text_color/properties/red
        #
        #   @return [Integer]
        required :red, Integer

        # @!parse
        #   # #/components/schemas/create_a_digital_card_profile_parameters/properties/text_color
        #   #
        #   # @param blue [Integer]
        #   # @param green [Integer]
        #   # @param red [Integer]
        #   #
        #   def initialize(blue:, green:, red:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end
    end
  end
end
