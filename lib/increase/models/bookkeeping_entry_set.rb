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

        # Create a new instance of Entry from a Hash of raw data.
        #
        # @overload initialize(id: nil, account_id: nil, amount: nil)
        # @param id [String] The entry identifier.
        # @param account_id [String] The bookkeeping account impacted by the entry.
        # @param amount [Integer] The amount of the entry in minor units.
        def initialize(data = {})
          super
        end
      end

      # A constant representing the object's type. For this resource it will always be `bookkeeping_entry_set`.
      class Type < Increase::Enum
        BOOKKEEPING_ENTRY_SET = :bookkeeping_entry_set
      end

      # Create a new instance of BookkeepingEntrySet from a Hash of raw data.
      #
      # @overload initialize(id: nil, created_at: nil, date: nil, entries: nil, idempotency_key: nil, transaction_id: nil, type: nil)
      # @param id [String] The entry set identifier.
      # @param created_at [String] When the entry set was created.
      # @param date [String] The timestamp of the entry set.
      # @param entries [Array<Object>] The entries.
      # @param idempotency_key [String] The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      # @param transaction_id [String] The transaction identifier, if any.
      # @param type [String] A constant representing the object's type. For this resource it will always be
      #   `bookkeeping_entry_set`.
      def initialize(data = {})
        super
      end
    end
  end
end
