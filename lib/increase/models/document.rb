# frozen_string_literal: true

module Increase
  module Models
    class Document < BaseModel
      # @!attribute [rw] id
      #   The Document identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] category
      #   The type of document.
      #   @return [Symbol]
      required :category, Increase::Enum.new(:form_1099_int, :proof_of_authorization, :company_information)

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Document was created.
      #   @return [String]
      required :created_at, String

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
      #   @return [Symbol]
      required :type, Increase::Enum.new(:document)
    end
  end
end
