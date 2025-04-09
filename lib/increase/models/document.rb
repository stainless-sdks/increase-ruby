# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Documents#retrieve
    class Document < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/document/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute category
      #   #/components/schemas/document/properties/category
      #
      #   @return [Symbol, Increase::Models::Document::Category]
      required :category, enum: -> { Increase::Models::Document::Category }

      # @!attribute created_at
      #   #/components/schemas/document/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute entity_id
      #   #/components/schemas/document/properties/entity_id
      #
      #   @return [String, nil]
      required :entity_id, String, nil?: true

      # @!attribute file_id
      #   #/components/schemas/document/properties/file_id
      #
      #   @return [String]
      required :file_id, String

      # @!attribute type
      #   #/components/schemas/document/properties/type
      #
      #   @return [Symbol, Increase::Models::Document::Type]
      required :type, enum: -> { Increase::Models::Document::Type }

      # @!parse
      #   # #/components/schemas/document
      #   #
      #   # @param id [String]
      #   # @param category [Symbol, Increase::Models::Document::Category]
      #   # @param created_at [Time]
      #   # @param entity_id [String, nil]
      #   # @param file_id [String]
      #   # @param type [Symbol, Increase::Models::Document::Type]
      #   #
      #   def initialize(id:, category:, created_at:, entity_id:, file_id:, type:, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/document/properties/category
      #
      # @see Increase::Models::Document#category
      module Category
        extend Increase::Internal::Type::Enum

        # Internal Revenue Service Form 1099-INT.
        FORM_1099_INT = :form_1099_int

        # Internal Revenue Service Form 1099-MISC.
        FORM_1099_MISC = :form_1099_misc

        # A document submitted in response to a proof of authorization request for an ACH transfer.
        PROOF_OF_AUTHORIZATION = :proof_of_authorization

        # Company information, such a policies or procedures, typically submitted during our due diligence process.
        COMPANY_INFORMATION = :company_information

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/document/properties/type
      #
      # @see Increase::Models::Document#type
      module Type
        extend Increase::Internal::Type::Enum

        DOCUMENT = :document

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
