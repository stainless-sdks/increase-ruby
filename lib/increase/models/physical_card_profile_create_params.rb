# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::PhysicalCardProfiles#create
    class PhysicalCardProfileCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute carrier_image_file_id
      #   #/components/schemas/create_a_physical_card_profile_parameters/properties/carrier_image_file_id
      #
      #   @return [String]
      required :carrier_image_file_id, String

      # @!attribute contact_phone
      #   #/components/schemas/create_a_physical_card_profile_parameters/properties/contact_phone
      #
      #   @return [String]
      required :contact_phone, String

      # @!attribute description
      #   #/components/schemas/create_a_physical_card_profile_parameters/properties/description
      #
      #   @return [String]
      required :description, String

      # @!attribute front_image_file_id
      #   #/components/schemas/create_a_physical_card_profile_parameters/properties/front_image_file_id
      #
      #   @return [String]
      required :front_image_file_id, String

      # @!attribute program_id
      #   #/components/schemas/create_a_physical_card_profile_parameters/properties/program_id
      #
      #   @return [String]
      required :program_id, String

      # @!parse
      #   # @param carrier_image_file_id [String]
      #   # @param contact_phone [String]
      #   # @param description [String]
      #   # @param front_image_file_id [String]
      #   # @param program_id [String]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     carrier_image_file_id:,
      #     contact_phone:,
      #     description:,
      #     front_image_file_id:,
      #     program_id:,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
    end
  end
end
