# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRef82face1aab784473d47c1f44bfd0d0d5 < BaseModel
      # @!attribute [rw] country
      #   The two-character ISO 3166-1 code representing the country that issued the document.
      #   @return [String]
      required :country, String

      # @!attribute [rw] description
      #   A description of the document submitted.
      #   @return [String]
      required :description, String

      # @!attribute [rw] file_id
      #   The identifier of the File containing the front of the document.
      #   @return [String]
      required :file_id, String

      # @!attribute [rw] back_file_id
      #   The identifier of the File containing the back of the document. Not every document has a reverse side.
      #   @return [String]
      optional :back_file_id, String

      # @!attribute [rw] expiration_date
      #   The document's expiration date in YYYY-MM-DD format.
      #   @return [String]
      optional :expiration_date, String
    end
  end
end
