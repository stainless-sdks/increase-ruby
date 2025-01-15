# frozen_string_literal: true

module Increase
  module Models
    class IntrafiExclusionCreateParams < Increase::BaseModel
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

      # @!parse
      #   # @param bank_name [String] The name of the financial institution to be excluded.
      #   #
      #   # @param entity_id [String] The identifier of the Entity whose deposits will be excluded.
      #   #
      #   def initialize(bank_name:, entity_id:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
