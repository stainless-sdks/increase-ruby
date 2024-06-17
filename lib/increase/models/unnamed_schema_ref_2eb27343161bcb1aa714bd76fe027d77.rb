# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRef2eb27343161bcb1aa714bd76fe027d77 < BaseModel
      # @!attribute [rw] canceled_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Transfer was canceled.
      #   @return [String]
      required :canceled_at, String

      # @!attribute [rw] canceled_by
      #   If the Transfer was canceled by a user in the dashboard, the email address of that user.
      #   @return [String]
      required :canceled_by, String
    end
  end
end
