# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::PhysicalCardProfiles#clone_
    class PhysicalCardProfileCloneParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute [r] carrier_image_file_id
      #   #/components/schemas/clone_a_physical_card_profile_parameters/properties/carrier_image_file_id
      #
      #   @return [String, nil]
      optional :carrier_image_file_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :carrier_image_file_id

      # @!attribute [r] contact_phone
      #   #/components/schemas/clone_a_physical_card_profile_parameters/properties/contact_phone
      #
      #   @return [String, nil]
      optional :contact_phone, String

      # @!parse
      #   # @return [String]
      #   attr_writer :contact_phone

      # @!attribute [r] description
      #   #/components/schemas/clone_a_physical_card_profile_parameters/properties/description
      #
      #   @return [String, nil]
      optional :description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :description

      # @!attribute [r] front_image_file_id
      #   #/components/schemas/clone_a_physical_card_profile_parameters/properties/front_image_file_id
      #
      #   @return [String, nil]
      optional :front_image_file_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :front_image_file_id

      # @!attribute [r] front_text
      #   #/components/schemas/clone_a_physical_card_profile_parameters/properties/front_text
      #
      #   @return [Increase::Models::PhysicalCardProfileCloneParams::FrontText, nil]
      optional :front_text, -> { Increase::Models::PhysicalCardProfileCloneParams::FrontText }

      # @!parse
      #   # @return [Increase::Models::PhysicalCardProfileCloneParams::FrontText]
      #   attr_writer :front_text

      # @!parse
      #   # @param carrier_image_file_id [String]
      #   # @param contact_phone [String]
      #   # @param description [String]
      #   # @param front_image_file_id [String]
      #   # @param front_text [Increase::Models::PhysicalCardProfileCloneParams::FrontText]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     carrier_image_file_id: nil,
      #     contact_phone: nil,
      #     description: nil,
      #     front_image_file_id: nil,
      #     front_text: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class FrontText < Increase::Internal::Type::BaseModel
        # @!attribute line1
        #   #/components/schemas/clone_a_physical_card_profile_parameters/properties/front_text/properties/line1
        #
        #   @return [String]
        required :line1, String

        # @!attribute [r] line2
        #   #/components/schemas/clone_a_physical_card_profile_parameters/properties/front_text/properties/line2
        #
        #   @return [String, nil]
        optional :line2, String

        # @!parse
        #   # @return [String]
        #   attr_writer :line2

        # @!parse
        #   # #/components/schemas/clone_a_physical_card_profile_parameters/properties/front_text
        #   #
        #   # @param line1 [String]
        #   # @param line2 [String]
        #   #
        #   def initialize(line1:, line2: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end
    end
  end
end
