# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::SupplementalDocuments#create
    class EntitySupplementalDocument < Increase::Internal::Type::BaseModel
      # @!attribute created_at
      #   #/components/schemas/entity_supplemental_document/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute entity_id
      #   #/components/schemas/entity_supplemental_document/properties/entity_id
      #
      #   @return [String]
      required :entity_id, String

      # @!attribute file_id
      #   #/components/schemas/entity_supplemental_document/properties/file_id
      #
      #   @return [String]
      required :file_id, String

      # @!attribute idempotency_key
      #   #/components/schemas/entity_supplemental_document/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute type
      #   #/components/schemas/entity_supplemental_document/properties/type
      #
      #   @return [Symbol, Increase::Models::EntitySupplementalDocument::Type]
      required :type, enum: -> { Increase::Models::EntitySupplementalDocument::Type }

      # @!parse
      #   # #/components/schemas/entity_supplemental_document
      #   #
      #   # @param created_at [Time]
      #   # @param entity_id [String]
      #   # @param file_id [String]
      #   # @param idempotency_key [String, nil]
      #   # @param type [Symbol, Increase::Models::EntitySupplementalDocument::Type]
      #   #
      #   def initialize(created_at:, entity_id:, file_id:, idempotency_key:, type:, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/entity_supplemental_document/properties/type
      #
      # @see Increase::Models::EntitySupplementalDocument#type
      module Type
        extend Increase::Internal::Type::Enum

        ENTITY_SUPPLEMENTAL_DOCUMENT = :entity_supplemental_document

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
