# frozen_string_literal: true

module Increase
  module Models
    class EntityUpdateIndustryCodeParams < Increase::BaseModel
      # @!attribute industry_code
      #   The North American Industry Classification System (NAICS) code for the corporation's primary line of business. This is a number, like `5132` for `Software Publishers`. A full list of classification codes is available [here](https://increase.com/documentation/data-dictionary#north-american-industry-classification-system-codes).
      #
      #   @return [String]
      required :industry_code, String

      # @!parse
      #   # @param industry_code [String] The North American Industry Classification System (NAICS) code for the
      #   #   corporation's primary line of business. This is a number, like `5132` for
      #   #   `Software Publishers`. A full list of classification codes is available
      #   #   [here](https://increase.com/documentation/data-dictionary#north-american-industry-classification-system-codes).
      #   #
      #   def initialize(industry_code:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
