# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRef57b69d41260167c23101790623b96103 < BaseModel
      # @!attribute [rw] after
      #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
      #   @return [String]
      optional :after, String

      # @!attribute [rw] before
      #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
      #   @return [String]
      optional :before, String

      # @!attribute [rw] on_or_after
      #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
      #   @return [String]
      optional :on_or_after, String

      # @!attribute [rw] on_or_before
      #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
      #   @return [String]
      optional :on_or_before, String
    end
  end
end
