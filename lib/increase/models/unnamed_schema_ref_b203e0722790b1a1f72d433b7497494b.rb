# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRefB203e0722790b1a1f72d433b7497494b < BaseModel
      # @!attribute [rw] city
      #   The city of the address.
      #   @return [String]
      required :city, String

      # @!attribute [rw] line1
      #   The first line of the address.
      #   @return [String]
      required :line1, String

      # @!attribute [rw] line2
      #   The second line of the address.
      #   @return [String]
      required :line2, String

      # @!attribute [rw] state
      #   The two-letter United States Postal Service (USPS) abbreviation for the state of the address.
      #   @return [String]
      required :state, String

      # @!attribute [rw] zip
      #   The ZIP code of the address.
      #   @return [String]
      required :zip, String
    end
  end
end
