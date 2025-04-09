# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::DigitalCardProfiles#clone_
    class DigitalCardProfileCloneParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute [r] app_icon_file_id
      #   #/components/schemas/clones_a_digital_card_profile_parameters/properties/app_icon_file_id
      #
      #   @return [String, nil]
      optional :app_icon_file_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :app_icon_file_id

      # @!attribute [r] background_image_file_id
      #   #/components/schemas/clones_a_digital_card_profile_parameters/properties/background_image_file_id
      #
      #   @return [String, nil]
      optional :background_image_file_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :background_image_file_id

      # @!attribute [r] card_description
      #   #/components/schemas/clones_a_digital_card_profile_parameters/properties/card_description
      #
      #   @return [String, nil]
      optional :card_description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :card_description

      # @!attribute [r] contact_email
      #   #/components/schemas/clones_a_digital_card_profile_parameters/properties/contact_email
      #
      #   @return [String, nil]
      optional :contact_email, String

      # @!parse
      #   # @return [String]
      #   attr_writer :contact_email

      # @!attribute [r] contact_phone
      #   #/components/schemas/clones_a_digital_card_profile_parameters/properties/contact_phone
      #
      #   @return [String, nil]
      optional :contact_phone, String

      # @!parse
      #   # @return [String]
      #   attr_writer :contact_phone

      # @!attribute [r] contact_website
      #   #/components/schemas/clones_a_digital_card_profile_parameters/properties/contact_website
      #
      #   @return [String, nil]
      optional :contact_website, String

      # @!parse
      #   # @return [String]
      #   attr_writer :contact_website

      # @!attribute [r] description
      #   #/components/schemas/clones_a_digital_card_profile_parameters/properties/description
      #
      #   @return [String, nil]
      optional :description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :description

      # @!attribute [r] issuer_name
      #   #/components/schemas/clones_a_digital_card_profile_parameters/properties/issuer_name
      #
      #   @return [String, nil]
      optional :issuer_name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :issuer_name

      # @!attribute [r] text_color
      #   #/components/schemas/clones_a_digital_card_profile_parameters/properties/text_color
      #
      #   @return [Increase::Models::DigitalCardProfileCloneParams::TextColor, nil]
      optional :text_color, -> { Increase::Models::DigitalCardProfileCloneParams::TextColor }

      # @!parse
      #   # @return [Increase::Models::DigitalCardProfileCloneParams::TextColor]
      #   attr_writer :text_color

      # @!parse
      #   # @param app_icon_file_id [String]
      #   # @param background_image_file_id [String]
      #   # @param card_description [String]
      #   # @param contact_email [String]
      #   # @param contact_phone [String]
      #   # @param contact_website [String]
      #   # @param description [String]
      #   # @param issuer_name [String]
      #   # @param text_color [Increase::Models::DigitalCardProfileCloneParams::TextColor]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     app_icon_file_id: nil,
      #     background_image_file_id: nil,
      #     card_description: nil,
      #     contact_email: nil,
      #     contact_phone: nil,
      #     contact_website: nil,
      #     description: nil,
      #     issuer_name: nil,
      #     text_color: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class TextColor < Increase::Internal::Type::BaseModel
        # @!attribute blue
        #   #/components/schemas/clones_a_digital_card_profile_parameters/properties/text_color/properties/blue
        #
        #   @return [Integer]
        required :blue, Integer

        # @!attribute green
        #   #/components/schemas/clones_a_digital_card_profile_parameters/properties/text_color/properties/green
        #
        #   @return [Integer]
        required :green, Integer

        # @!attribute red
        #   #/components/schemas/clones_a_digital_card_profile_parameters/properties/text_color/properties/red
        #
        #   @return [Integer]
        required :red, Integer

        # @!parse
        #   # #/components/schemas/clones_a_digital_card_profile_parameters/properties/text_color
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
