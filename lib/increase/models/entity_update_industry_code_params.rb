# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Entities#update_industry_code
    class EntityUpdateIndustryCodeParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute industry_code
      #   #/components/schemas/update_the_industry_code_for_a_corporate_entity_parameters/properties/industry_code
      #
      #   @return [String]
      required :industry_code, String

      # @!parse
      #   # @param industry_code [String]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(industry_code:, request_options: {}, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
    end
  end
end
