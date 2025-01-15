# frozen_string_literal: true

module Increase
  module Models
    class EntityArchiveBeneficialOwnerParams < Increase::BaseModel
      # @!attribute beneficial_owner_id
      #   The identifying details of anyone controlling or owning 25% or more of the corporation.
      #
      #   @return [String]
      required :beneficial_owner_id, String

      # @!parse
      #   # @param beneficial_owner_id [String] The identifying details of anyone controlling or owning 25% or more of the
      #   #   corporation.
      #   #
      #   def initialize(beneficial_owner_id:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
