# frozen_string_literal: true

module Increase
  module Models
    class Document < Increase::BaseModel
      # @!attribute [rw] id
      #   The Document identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] category
      #   The type of document.
      #   @return [Symbol, Increase::Models::Document::Category]
      required :category, enum: -> { Increase::Models::Document::Category }

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Document was created.
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] entity_id
      #   The identifier of the Entity the document was generated for.
      #   @return [String]
      required :entity_id, String

      # @!attribute [rw] file_id
      #   The identifier of the File containing the Document's contents.
      #   @return [String]
      required :file_id, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `document`.
      #   @return [Symbol, Increase::Models::Document::Type]
      required :type, enum: -> { Increase::Models::Document::Type }

      # The type of document.
      class Category < Increase::Enum
        # Internal Revenue Service Form 1099-INT.
        FORM_1099_INT = :form_1099_int

        # A document submitted in response to a proof of authorization request for an ACH transfer.
        PROOF_OF_AUTHORIZATION = :proof_of_authorization

        # Company information, such a policies or procedures, typically submitted during our due diligence process.
        COMPANY_INFORMATION = :company_information
      end

      # A constant representing the object's type. For this resource it will always be `document`.
      class Type < Increase::Enum
        DOCUMENT = :document
      end

      # @!parse
      #   # Create a new instance of Document from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id The Document identifier.
      #   #   @option data [String] :category The type of document.
      #   #   @option data [String] :created_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the
      #   #     Document was created.
      #   #   @option data [String] :entity_id The identifier of the Entity the document was generated for.
      #   #   @option data [String] :file_id The identifier of the File containing the Document's contents.
      #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
      #   #     `document`.
      #   def initialize(data = {}) = super
    end
  end
end
