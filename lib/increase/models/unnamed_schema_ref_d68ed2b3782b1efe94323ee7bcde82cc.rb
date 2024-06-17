# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRefD68ed2b3782b1efe94323ee7bcde82cc < BaseModel
      # @!attribute [rw] approved_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was approved.
      #   @return [String]
      required :approved_at, String

      # @!attribute [rw] approved_by
      #   If the Transfer was approved by a user in the dashboard, the email address of that user.
      #   @return [String]
      required :approved_by, String
    end
  end
end
