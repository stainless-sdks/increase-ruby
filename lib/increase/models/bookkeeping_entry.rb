# frozen_string_literal: true

module Increase
  module Models
    class BookkeepingEntry < BaseModel
      # @!attribute [rw] id
      #   The entry identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The identifier for the Account the Entry belongs to.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] amount
      #   The Entry amount in the minor unit of its currency. For dollars, for example, this is cents.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] created_at
      #   When the entry set was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] entry_set_id
      #   The identifier for the Account the Entry belongs to.
      #   @return [String]
      required :entry_set_id, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `bookkeeping_entry`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:bookkeeping_entry)
    end
  end
end
