# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::IntrafiExclusions#create
    class IntrafiExclusionCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute bank_name
      #   The name of the financial institution to be excluded.
      #
      #   @return [String]
      required :bank_name, String

      # @!attribute entity_id
      #   The identifier of the Entity whose deposits will be excluded.
      #
      #   @return [String]
      required :entity_id, String

      # @!method initialize(bank_name:, entity_id:, request_options: {})
      #   @param bank_name [String] The name of the financial institution to be excluded.
      #
      #   @param entity_id [String] The identifier of the Entity whose deposits will be excluded.
      #
      #   @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
