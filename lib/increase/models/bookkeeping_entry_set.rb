# frozen_string_literal: true

module Increase
  module Models
    # @example
    # ```ruby
    # bookkeeping_entry_set => {
    #   id: String,
    #   created_at: Time,
    #   date: Time,
    #   entries: -> { Increase::ArrayOf[Increase::Models::BookkeepingEntrySet::Entry] === _1 },
    #   idempotency_key: String,
    #   **_
    # }
    # ```
    class BookkeepingEntrySet < Increase::BaseModel
      # @!attribute id
      #   The entry set identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   When the entry set was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute date
      #   The timestamp of the entry set.
      #
      #   @return [Time]
      required :date, Time

      # @!attribute entries
      #   The entries.
      #
      #   @return [Array<Increase::Models::BookkeepingEntrySet::Entry>]
      required :entries, -> { Increase::ArrayOf[Increase::Models::BookkeepingEntrySet::Entry] }

      # @!attribute idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      required :idempotency_key, String

      # @!attribute transaction_id
      #   The transaction identifier, if any.
      #
      #   @return [String, nil]
      required :transaction_id, String

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be `bookkeeping_entry_set`.
      #
      #   @return [Symbol, Increase::Models::BookkeepingEntrySet::Type]
      required :type, enum: -> { Increase::Models::BookkeepingEntrySet::Type }

      # @!parse
      #   # Entry Sets are accounting entries that are transactionally applied. Your
      #   #   compliance setup might require annotating money movements using this API. Learn
      #   #   more in our
      #   #   [guide to Bookkeeping](https://increase.com/documentation/bookkeeping#bookkeeping).
      #   #
      #   # @param id [String] The entry set identifier.
      #   #
      #   # @param created_at [String] When the entry set was created.
      #   #
      #   # @param date [String] The timestamp of the entry set.
      #   #
      #   # @param entries [Array<Increase::Models::BookkeepingEntrySet::Entry>] The entries.
      #   #
      #   # @param idempotency_key [String, nil] The idempotency key you chose for this object. This value is unique across
      #   #   Increase and is used to ensure that a request is only processed once. Learn more
      #   #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #
      #   # @param transaction_id [String, nil] The transaction identifier, if any.
      #   #
      #   # @param type [String] A constant representing the object's type. For this resource it will always be
      #   #   `bookkeeping_entry_set`.
      #   #
      #   def initialize(id:, created_at:, date:, entries:, idempotency_key:, transaction_id:, type:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      # ```ruby
      # entry => {
      #   id: String,
      #   account_id: String,
      #   amount: Integer
      # }
      # ```
      class Entry < Increase::BaseModel
        # @!attribute id
        #   The entry identifier.
        #
        #   @return [String]
        required :id, String

        # @!attribute account_id
        #   The bookkeeping account impacted by the entry.
        #
        #   @return [String]
        required :account_id, String

        # @!attribute amount
        #   The amount of the entry in minor units.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!parse
        #   # @param id [String] The entry identifier.
        #   #
        #   # @param account_id [String] The bookkeeping account impacted by the entry.
        #   #
        #   # @param amount [Integer] The amount of the entry in minor units.
        #   #
        #   def initialize(id:, account_id:, amount:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end

      # A constant representing the object's type. For this resource it will always be `bookkeeping_entry_set`.
      #
      # @example
      # ```ruby
      # case type
      # in :bookkeeping_entry_set
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        BOOKKEEPING_ENTRY_SET = :bookkeeping_entry_set

        finalize!
      end
    end
  end
end
