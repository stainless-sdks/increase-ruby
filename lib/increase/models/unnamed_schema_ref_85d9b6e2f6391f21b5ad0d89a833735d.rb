# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRef85d9b6e2f6391f21b5ad0d89a833735d < BaseModel
      # @!attribute [rw] country
      #   The country that issued the passport.
      #   @return [String]
      required :country, String

      # @!attribute [rw] expiration_date
      #   The passport's expiration date in YYYY-MM-DD format.
      #   @return [String]
      required :expiration_date, String

      # @!attribute [rw] file_id
      #   The identifier of the File containing the passport.
      #   @return [String]
      required :file_id, String
    end
  end
end
