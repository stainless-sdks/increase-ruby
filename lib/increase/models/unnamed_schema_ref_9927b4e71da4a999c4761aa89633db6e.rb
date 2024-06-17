# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRef9927b4e71da4a999c4761aa89633db6e < BaseModel
      # @!attribute [rw] address
      #   The individual's physical address. Mail receiving locations like PO Boxes and PMB's are disallowed.
      #   @return [Increase::Models::UnnamedSchemaRefD69f2dff7f6a581746aa74328e25d45d]
      required :address, -> { Increase::Models::UnnamedSchemaRefD69f2dff7f6a581746aa74328e25d45d }

      # @!attribute [rw] date_of_birth
      #   The person's date of birth in YYYY-MM-DD format.
      #   @return [String]
      required :date_of_birth, String

      # @!attribute [rw] identification
      #   A means of verifying the person's identity.
      #   @return [Increase::Models::UnnamedSchemaRefA7512f2cef9a05b49ef117e9562cb122]
      required :identification, -> { Increase::Models::UnnamedSchemaRefA7512f2cef9a05b49ef117e9562cb122 }

      # @!attribute [rw] name_
      #   The person's legal name.
      #   @return [String]
      required :name_, String

      # @!attribute [rw] confirmed_no_us_tax_id
      #   The identification method for an individual can only be a passport, driver's license, or other document if you've confirmed the individual does not have a US tax id (either a Social Security Number or Individual Taxpayer Identification Number).
      #   @return [Boolean]
      optional :confirmed_no_us_tax_id, Increase::BooleanModel
    end
  end
end
