# frozen_string_literal: true

module Increase
  module Models
    class Group < BaseModel
      # @!attribute [rw] id
      #   The Group identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] ach_debit_status
      #   If the Group is allowed to create ACH debits.
      #   @return [Symbol]
      required :ach_debit_status, Increase::Enum.new(:disabled, :enabled)

      # @!attribute [rw] activation_status
      #   If the Group is activated or not.
      #   @return [Symbol]
      required :activation_status, Increase::Enum.new(:unactivated, :activated)

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Group was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `group`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:group)
    end
  end
end
