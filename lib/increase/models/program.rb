# frozen_string_literal: true

module Increase
  module Models
    class Program < BaseModel
      # @!attribute [rw] id
      #   The Program identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] billing_account_id
      #   The Program billing account.
      #   @return [String]
      required :billing_account_id, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Program was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] name_
      #   The name of the Program.
      #   @return [String]
      required :name_, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `program`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:program)

      # @!attribute [rw] updated_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Program was last updated.
      #   @return [String]
      required :updated_at, String
    end
  end
end
