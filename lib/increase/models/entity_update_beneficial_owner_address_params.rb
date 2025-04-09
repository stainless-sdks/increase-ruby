# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Entities#update_beneficial_owner_address
    class EntityUpdateBeneficialOwnerAddressParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute address
      #   #/components/schemas/update_the_address_for_a_beneficial_owner_belonging_to_a_corporate_entity_parameters/properties/address
      #
      #   @return [Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address]
      required :address, -> { Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address }

      # @!attribute beneficial_owner_id
      #   #/components/schemas/update_the_address_for_a_beneficial_owner_belonging_to_a_corporate_entity_parameters/properties/beneficial_owner_id
      #
      #   @return [String]
      required :beneficial_owner_id, String

      # @!parse
      #   # @param address [Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address]
      #   # @param beneficial_owner_id [String]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(address:, beneficial_owner_id:, request_options: {}, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class Address < Increase::Internal::Type::BaseModel
        # @!attribute country
        #   #/components/schemas/update_the_address_for_a_beneficial_owner_belonging_to_a_corporate_entity_parameters/properties/address/properties/country
        #
        #   @return [String]
        required :country, String

        # @!attribute line1
        #   #/components/schemas/update_the_address_for_a_beneficial_owner_belonging_to_a_corporate_entity_parameters/properties/address/properties/line1
        #
        #   @return [String]
        required :line1, String

        # @!attribute [r] city
        #   #/components/schemas/update_the_address_for_a_beneficial_owner_belonging_to_a_corporate_entity_parameters/properties/address/properties/city
        #
        #   @return [String, nil]
        optional :city, String

        # @!parse
        #   # @return [String]
        #   attr_writer :city

        # @!attribute [r] line2
        #   #/components/schemas/update_the_address_for_a_beneficial_owner_belonging_to_a_corporate_entity_parameters/properties/address/properties/line2
        #
        #   @return [String, nil]
        optional :line2, String

        # @!parse
        #   # @return [String]
        #   attr_writer :line2

        # @!attribute [r] state
        #   #/components/schemas/update_the_address_for_a_beneficial_owner_belonging_to_a_corporate_entity_parameters/properties/address/properties/state
        #
        #   @return [String, nil]
        optional :state, String

        # @!parse
        #   # @return [String]
        #   attr_writer :state

        # @!attribute [r] zip
        #   #/components/schemas/update_the_address_for_a_beneficial_owner_belonging_to_a_corporate_entity_parameters/properties/address/properties/zip
        #
        #   @return [String, nil]
        optional :zip, String

        # @!parse
        #   # @return [String]
        #   attr_writer :zip

        # @!parse
        #   # #/components/schemas/update_the_address_for_a_beneficial_owner_belonging_to_a_corporate_entity_parameters/properties/address
        #   #
        #   # @param country [String]
        #   # @param line1 [String]
        #   # @param city [String]
        #   # @param line2 [String]
        #   # @param state [String]
        #   # @param zip [String]
        #   #
        #   def initialize(country:, line1:, city: nil, line2: nil, state: nil, zip: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end
    end
  end
end
