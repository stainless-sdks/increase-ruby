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
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] date
      #   The timestamp of the entry set.
      #   @return [String]
      required :date, String

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
      #   @return [Symbol]
      required :type, Increase::Enum.new(:bookkeeping_entry_set)

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
      end
    end
  end
end
