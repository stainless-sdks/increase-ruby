# frozen_string_literal: true

module Increase
  module Models
    class DigitalCardProfileCloneParams < Increase::BaseModel
      # @!attribute app_icon_file_id
      #   The identifier of the File containing the card's icon image.
      #
      #   @return [String]
      optional :app_icon_file_id, String

      # @!attribute background_image_file_id
      #   The identifier of the File containing the card's front image.
      #
      #   @return [String]
      optional :background_image_file_id, String

      # @!attribute card_description
      #   A user-facing description for the card itself.
      #
      #   @return [String]
      optional :card_description, String

      # @!attribute contact_email
      #   An email address the user can contact to receive support for their card.
      #
      #   @return [String]
      optional :contact_email, String

      # @!attribute contact_phone
      #   A phone number the user can contact to receive support for their card.
      #
      #   @return [String]
      optional :contact_phone, String

      # @!attribute contact_website
      #   A website the user can visit to view and receive support for their card.
      #
      #   @return [String]
      optional :contact_website, String

      # @!attribute description
      #   A description you can use to identify the Card Profile.
      #
      #   @return [String]
      optional :description, String

      # @!attribute issuer_name
      #   A user-facing description for whoever is issuing the card.
      #
      #   @return [String]
      optional :issuer_name, String

      # @!attribute text_color
      #   The Card's text color, specified as an RGB triple. The default is white.
      #
      #   @return [Increase::Models::DigitalCardProfileCloneParams::TextColor]
      optional :text_color, -> { Increase::Models::DigitalCardProfileCloneParams::TextColor }

      # @!parse
      #   # @param app_icon_file_id [String] The identifier of the File containing the card's icon image.
      #   #
      #   # @param background_image_file_id [String] The identifier of the File containing the card's front image.
      #   #
      #   # @param card_description [String] A user-facing description for the card itself.
      #   #
      #   # @param contact_email [String] An email address the user can contact to receive support for their card.
      #   #
      #   # @param contact_phone [String] A phone number the user can contact to receive support for their card.
      #   #
      #   # @param contact_website [String] A website the user can visit to view and receive support for their card.
      #   #
      #   # @param description [String] A description you can use to identify the Card Profile.
      #   #
      #   # @param issuer_name [String] A user-facing description for whoever is issuing the card.
      #   #
      #   # @param text_color [Increase::Models::DigitalCardProfileCloneParams::TextColor] The Card's text color, specified as an RGB triple. The default is white.
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
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
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
        #   # The Card's text color, specified as an RGB triple. The default is white.
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
    end
  end
end
