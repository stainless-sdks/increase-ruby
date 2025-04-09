# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Accounts#create
    class AccountCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute name
      #   #/components/schemas/create_an_account_parameters/properties/name
      #
      #   @return [String]
      required :name, String

      # @!attribute [r] entity_id
      #   #/components/schemas/create_an_account_parameters/properties/entity_id
      #
      #   @return [String, nil]
      optional :entity_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :entity_id

      # @!attribute [r] informational_entity_id
      #   #/components/schemas/create_an_account_parameters/properties/informational_entity_id
      #
      #   @return [String, nil]
      optional :informational_entity_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :informational_entity_id

      # @!attribute [r] program_id
      #   #/components/schemas/create_an_account_parameters/properties/program_id
      #
      #   @return [String, nil]
      optional :program_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :program_id

      # @!parse
      #   # @param name [String]
      #   # @param entity_id [String]
      #   # @param informational_entity_id [String]
      #   # @param program_id [String]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(name:, entity_id: nil, informational_entity_id: nil, program_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
    end
  end
end
