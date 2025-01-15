# frozen_string_literal: true

module Increase
  module Models
    class PhysicalCardProfileCloneParams < Increase::BaseModel
      # @!attribute carrier_image_file_id
      #   The identifier of the File containing the physical card's carrier image.
      #
      #   @return [String]
      optional :carrier_image_file_id, String

      # @!attribute contact_phone
      #   A phone number the user can contact to receive support for their card.
      #
      #   @return [String]
      optional :contact_phone, String

      # @!attribute description
      #   A description you can use to identify the Card Profile.
      #
      #   @return [String]
      optional :description, String

      # @!attribute front_image_file_id
      #   The identifier of the File containing the physical card's front image.
      #
      #   @return [String]
      optional :front_image_file_id, String

      # @!attribute front_text
      #   Text printed on the front of the card. Reach out to [support@increase.com](mailto:support@increase.com) for more information.
      #
      #   @return [Increase::Models::PhysicalCardProfileCloneParams::FrontText]
      optional :front_text, -> { Increase::Models::PhysicalCardProfileCloneParams::FrontText }

      # @!parse
      #   # @param carrier_image_file_id [String] The identifier of the File containing the physical card's carrier image.
      #   #
      #   # @param contact_phone [String] A phone number the user can contact to receive support for their card.
      #   #
      #   # @param description [String] A description you can use to identify the Card Profile.
      #   #
      #   # @param front_image_file_id [String] The identifier of the File containing the physical card's front image.
      #   #
      #   # @param front_text [Increase::Models::PhysicalCardProfileCloneParams::FrontText] Text printed on the front of the card. Reach out to
      #   #   [support@increase.com](mailto:support@increase.com) for more information.
      #   #
      #   def initialize(
      #     carrier_image_file_id: nil,
      #     contact_phone: nil,
      #     description: nil,
      #     front_image_file_id: nil,
      #     front_text: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      #
      # ```ruby
      # front_text => {
      #   line1: String,
      #   line2: String
      # }
      # ```
      class FrontText < Increase::BaseModel
        # @!attribute line1
        #   The first line of text on the front of the card.
        #
        #   @return [String]
        required :line1, String

        # @!attribute line2
        #   The second line of text on the front of the card. Providing a second line moves the first line slightly higher and prints the second line in the spot where the first line would have otherwise been printed.
        #
        #   @return [String]
        optional :line2, String

        # @!parse
        #   # Text printed on the front of the card. Reach out to
        #   #   [support@increase.com](mailto:support@increase.com) for more information.
        #   #
        #   # @param line1 [String] The first line of text on the front of the card.
        #   #
        #   # @param line2 [String] The second line of text on the front of the card. Providing a second line moves
        #   #   the first line slightly higher and prints the second line in the spot where the
        #   #   first line would have otherwise been printed.
        #   #
        #   def initialize(line1:, line2: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
