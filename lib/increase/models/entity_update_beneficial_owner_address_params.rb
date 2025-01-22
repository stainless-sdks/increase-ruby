# frozen_string_literal: true

module Increase
  module Models
    class EntityUpdateBeneficialOwnerAddressParams < Increase::BaseModel
      # @!attribute address
      #   The individual's physical address. Mail receiving locations like PO Boxes and
      #     PMB's are disallowed.
      #
      #   @return [Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address]
      required :address, -> { Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address }

      # @!attribute beneficial_owner_id
      #   The identifying details of anyone controlling or owning 25% or more of the
      #     corporation.
      #
      #   @return [String]
      required :beneficial_owner_id, String

      # @!parse
      #   # @param address [Increase::Models::EntityUpdateBeneficialOwnerAddressParams::Address]
      #   # @param beneficial_owner_id [String]
      #   #
      #   def initialize(address:, beneficial_owner_id:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      # ```ruby
      # address => {
      #   city: String,
      #   line1: String,
      #   state: String,
      #   zip: String,
      #   line2: String
      # }
      # ```
      class Address < Increase::BaseModel
        # @!attribute city
        #   The city of the address.
        #
        #   @return [String]
        required :city, String

        # @!attribute line1
        #   The first line of the address. This is usually the street number and street.
        #
        #   @return [String]
        required :line1, String

        # @!attribute state
        #   The two-letter United States Postal Service (USPS) abbreviation for the state of
        #     the address.
        #
        #   @return [String]
        required :state, String

        # @!attribute zip
        #   The ZIP code of the address.
        #
        #   @return [String]
        required :zip, String

        # @!attribute [r] line2
        #   The second line of the address. This might be the floor or room number.
        #
        #   @return [String, nil]
        optional :line2, String

        # @!parse
        #   # @return [String]
        #   attr_writer :line2

        # @!parse
        #   # The individual's physical address. Mail receiving locations like PO Boxes and
        #   #   PMB's are disallowed.
        #   #
        #   # @param city [String]
        #   # @param line1 [String]
        #   # @param state [String]
        #   # @param zip [String]
        #   # @param line2 [String]
        #   #
        #   def initialize(city:, line1:, state:, zip:, line2: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
