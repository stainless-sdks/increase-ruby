# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::BookkeepingEntrySets#create
    class BookkeepingEntrySet < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/bookkeeping_entry_set/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   #/components/schemas/bookkeeping_entry_set/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute date
      #   #/components/schemas/bookkeeping_entry_set/properties/date
      #
      #   @return [Time]
      required :date, Time

      # @!attribute entries
      #   #/components/schemas/bookkeeping_entry_set/properties/entries
      #
      #   @return [Array<Increase::Models::BookkeepingEntrySet::Entry>]
      required :entries, -> { Increase::Internal::Type::ArrayOf[Increase::Models::BookkeepingEntrySet::Entry] }

      # @!attribute idempotency_key
      #   #/components/schemas/bookkeeping_entry_set/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute transaction_id
      #   #/components/schemas/bookkeeping_entry_set/properties/transaction_id
      #
      #   @return [String, nil]
      required :transaction_id, String, nil?: true

      # @!attribute type
      #   #/components/schemas/bookkeeping_entry_set/properties/type
      #
      #   @return [Symbol, Increase::Models::BookkeepingEntrySet::Type]
      required :type, enum: -> { Increase::Models::BookkeepingEntrySet::Type }

      # @!parse
      #   # #/components/schemas/bookkeeping_entry_set
      #   #
      #   # @param id [String]
      #   # @param created_at [Time]
      #   # @param date [Time]
      #   # @param entries [Array<Increase::Models::BookkeepingEntrySet::Entry>]
      #   # @param idempotency_key [String, nil]
      #   # @param transaction_id [String, nil]
      #   # @param type [Symbol, Increase::Models::BookkeepingEntrySet::Type]
      #   #
      #   def initialize(id:, created_at:, date:, entries:, idempotency_key:, transaction_id:, type:, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class Entry < Increase::Internal::Type::BaseModel
        # @!attribute id
        #   #/components/schemas/bookkeeping_entry_set/properties/entries/items/properties/id
        #
        #   @return [String]
        required :id, String

        # @!attribute account_id
        #   #/components/schemas/bookkeeping_entry_set/properties/entries/items/properties/account_id
        #
        #   @return [String]
        required :account_id, String

        # @!attribute amount
        #   #/components/schemas/bookkeeping_entry_set/properties/entries/items/properties/amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!parse
        #   # #/components/schemas/bookkeeping_entry_set/properties/entries/items
        #   #
        #   # @param id [String]
        #   # @param account_id [String]
        #   # @param amount [Integer]
        #   #
        #   def initialize(id:, account_id:, amount:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # #/components/schemas/bookkeeping_entry_set/properties/type
      #
      # @see Increase::Models::BookkeepingEntrySet#type
      module Type
        extend Increase::Internal::Type::Enum

        BOOKKEEPING_ENTRY_SET = :bookkeeping_entry_set

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
