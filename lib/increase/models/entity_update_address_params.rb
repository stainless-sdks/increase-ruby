# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Entities#update_address
    class EntityUpdateAddressParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute address
      #   #/components/schemas/update_a_natural_person_or_corporations_address_parameters/properties/address
      #
      #   @return [Increase::Models::EntityUpdateAddressParams::Address]
      required :address, -> { Increase::Models::EntityUpdateAddressParams::Address }

      # @!parse
      #   # @param address [Increase::Models::EntityUpdateAddressParams::Address]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(address:, request_options: {}, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class Address < Increase::Internal::Type::BaseModel
        # @!attribute city
        #   #/components/schemas/update_a_natural_person_or_corporations_address_parameters/properties/address/properties/city
        #
        #   @return [String]
        required :city, String

        # @!attribute line1
        #   #/components/schemas/update_a_natural_person_or_corporations_address_parameters/properties/address/properties/line1
        #
        #   @return [String]
        required :line1, String

        # @!attribute state
        #   #/components/schemas/update_a_natural_person_or_corporations_address_parameters/properties/address/properties/state
        #
        #   @return [String]
        required :state, String

        # @!attribute zip
        #   #/components/schemas/update_a_natural_person_or_corporations_address_parameters/properties/address/properties/zip
        #
        #   @return [String]
        required :zip, String

        # @!attribute [r] line2
        #   #/components/schemas/update_a_natural_person_or_corporations_address_parameters/properties/address/properties/line2
        #
        #   @return [String, nil]
        optional :line2, String

        # @!parse
        #   # @return [String]
        #   attr_writer :line2

        # @!parse
        #   # #/components/schemas/update_a_natural_person_or_corporations_address_parameters/properties/address
        #   #
        #   # @param city [String]
        #   # @param line1 [String]
        #   # @param state [String]
        #   # @param zip [String]
        #   # @param line2 [String]
        #   #
        #   def initialize(city:, line1:, state:, zip:, line2: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end
    end
  end
end
