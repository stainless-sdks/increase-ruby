# frozen_string_literal: true

module Increase
  module Models
    class EntityUpdateAddressParams < Increase::BaseModel
      # @!attribute address
      #   The entity's physical address. Mail receiving locations like PO Boxes and PMB's are disallowed.
      #
      #   @return [Increase::Models::EntityUpdateAddressParams::Address]
      required :address, -> { Increase::Models::EntityUpdateAddressParams::Address }

      # @!parse
      #   # @param address [Increase::Models::EntityUpdateAddressParams::Address] The entity's physical address. Mail receiving locations like PO Boxes and PMB's
      #   #   are disallowed.
      #   #
      #   def initialize(address:, **) = super

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
        #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
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
        #   # The entity's physical address. Mail receiving locations like PO Boxes and PMB's
        #   #   are disallowed.
        #   #
        #   # @param city [String] The city of the address.
        #   #
        #   # @param line1 [String] The first line of the address. This is usually the street number and street.
        #   #
        #   # @param state [String] The two-letter United States Postal Service (USPS) abbreviation for the state of
        #   #   the address.
        #   #
        #   # @param zip [String] The ZIP code of the address.
        #   #
        #   # @param line2 [String] The second line of the address. This might be the floor or room number.
        #   #
        #   def initialize(city:, line1:, state:, zip:, line2: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
