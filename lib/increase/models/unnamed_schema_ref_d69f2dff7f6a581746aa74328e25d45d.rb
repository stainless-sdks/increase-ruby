# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRefD69f2dff7f6a581746aa74328e25d45d < BaseModel
      # @!attribute [rw] city
      #   The city of the address.
      #   @return [String]
      required :city, String

      # @!attribute [rw] line1
      #   The first line of the address. This is usually the street number and street.
      #   @return [String]
      required :line1, String

      # @!attribute [rw] state
      #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
      #   @return [String]
      required :state, String

      # @!attribute [rw] zip
      #   The ZIP code of the address.
      #   @return [String]
      required :zip, String

      # @!attribute [rw] line2
      #   The second line of the address. This might be the floor or room number.
      #   @return [String]
      optional :line2, String
    end
  end
end
