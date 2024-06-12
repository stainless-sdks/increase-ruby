# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRef815ce0ce7770f278a32502e740610ade < BaseModel
      # @!attribute [rw] expiration_date
      #   The driver's license's expiration date in YYYY-MM-DD format.
      #   @return [String]
      required :expiration_date, String

      # @!attribute [rw] file_id
      #   The identifier of the File containing the front of the driver's license.
      #   @return [String]
      required :file_id, String

      # @!attribute [rw] state
      #   The state that issued the provided driver's license.
      #   @return [String]
      required :state, String

      # @!attribute [rw] back_file_id
      #   The identifier of the File containing the back of the driver's license.
      #   @return [String]
      optional :back_file_id, String
    end
  end
end
