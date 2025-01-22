# frozen_string_literal: true

module Increase
  module Models
    class SupplementalDocumentCreateParams < Increase::BaseModel
      # @!attribute entity_id
      #   The identifier of the Entity to associate with the supplemental document.
      #
      #   @return [String]
      required :entity_id, String

      # @!attribute file_id
      #   The identifier of the File containing the document.
      #
      #   @return [String]
      required :file_id, String

      # @!parse
      #   # @param entity_id [String]
      #   # @param file_id [String]
      #   #
      #   def initialize(entity_id:, file_id:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
