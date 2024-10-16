# frozen_string_literal: true

module Increase
  module Models
    class BookkeepingEntrySet < BaseModel
      # @!attribute [rw] id
      #   The entry set identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] created_at
      #   When the entry set was created.
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] date
      #   The timestamp of the entry set.
      #   @return [Time]
      required :date, Time

      # @!attribute [rw] entries
      #   The entries.
      #   @return [Array<Increase::Models::BookkeepingEntrySet::Entry>]
      required :entries, Increase::ArrayOf.new(-> { Increase::Models::BookkeepingEntrySet::Entry })

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] transaction_id
      #   The transaction identifier, if any.
      #   @return [String]
      required :transaction_id, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `bookkeeping_entry_set`.
      #   @return [Symbol, Increase::Models::BookkeepingEntrySet::Type]
      required :type, enum: -> { Increase::Models::BookkeepingEntrySet::Type }

      class Entry < BaseModel
        # @!attribute [rw] id
        #   The entry identifier.
        #   @return [String]
        required :id, String

        # @!attribute [rw] account_id
        #   The bookkeeping account impacted by the entry.
        #   @return [String]
        required :account_id, String

        # @!attribute [rw] amount
        #   The amount of the entry in minor units.
        #   @return [Integer]
        required :amount, Integer

        # @!parse
        #   # Create a new instance of Entry from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :id The entry identifier.
        #   #   @option data [String] :account_id The bookkeeping account impacted by the entry.
        #   #   @option data [Integer] :amount The amount of the entry in minor units.
        #   def initialize(data = {}) = super
      end

      # A constant representing the object's type. For this resource it will always be `bookkeeping_entry_set`.
      class Type < Increase::Enum
        BOOKKEEPING_ENTRY_SET = :bookkeeping_entry_set
      end

      # @!parse
      #   # Create a new instance of BookkeepingEntrySet from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id The entry set identifier.
      #   #   @option data [String] :created_at When the entry set was created.
      #   #   @option data [String] :date The timestamp of the entry set.
      #   #   @option data [Array<Object>] :entries The entries.
      #   #   @option data [String] :idempotency_key The idempotency key you chose for this object. This value is unique across
      #   #     Increase and is used to ensure that a request is only processed once. Learn more
      #   #     about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #   @option data [String] :transaction_id The transaction identifier, if any.
      #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
      #   #     `bookkeeping_entry_set`.
      #   def initialize(data = {}) = super
    end
  end
end
