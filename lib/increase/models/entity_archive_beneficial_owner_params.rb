# frozen_string_literal: true

module Increase
  module Models
    class EntityArchiveBeneficialOwnerParams < Increase::BaseModel
      # @!parse
      #   extend Increase::Type::RequestParameters::Converter
      include Increase::RequestParameters

      # @!attribute beneficial_owner_id
      #   The identifying details of anyone controlling or owning 25% or more of the
      #     corporation.
      #
      #   @return [String]
      required :beneficial_owner_id, String

      # @!parse
      #   # @param beneficial_owner_id [String]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(beneficial_owner_id:, request_options: {}, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
