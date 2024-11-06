# frozen_string_literal: true

module Increase
  module Models
    class BookkeepingEntry < Increase::BaseModel
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
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] entry_set_id
      #   The identifier for the Account the Entry belongs to.
      #   @return [String]
      required :entry_set_id, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `bookkeeping_entry`.
      #   @return [Symbol, Increase::Models::BookkeepingEntry::Type]
      required :type, enum: -> { Increase::Models::BookkeepingEntry::Type }

      # A constant representing the object's type. For this resource it will always be `bookkeeping_entry`.
      class Type < Increase::Enum
        BOOKKEEPING_ENTRY = :bookkeeping_entry
      end

      # @!parse
      #   # Create a new instance of BookkeepingEntry from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id The entry identifier.
      #   #   @option data [String] :account_id The identifier for the Account the Entry belongs to.
      #   #   @option data [Integer] :amount The Entry amount in the minor unit of its currency. For dollars, for example,
      #   #     this is cents.
      #   #   @option data [String] :created_at When the entry set was created.
      #   #   @option data [String] :entry_set_id The identifier for the Account the Entry belongs to.
      #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
      #   #     `bookkeeping_entry`.
      #   def initialize(data = {}) = super
    end
  end
end
