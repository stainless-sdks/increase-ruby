# typed: strong

module Increase
  module Models
    class BookkeepingEntrySet < Increase::Internal::Type::BaseModel
      # #/components/schemas/bookkeeping_entry_set/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/bookkeeping_entry_set/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/bookkeeping_entry_set/properties/date
      sig { returns(Time) }
      attr_accessor :date

      # #/components/schemas/bookkeeping_entry_set/properties/entries
      sig { returns(T::Array[Increase::Models::BookkeepingEntrySet::Entry]) }
      attr_accessor :entries

      # #/components/schemas/bookkeeping_entry_set/properties/idempotency_key
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # #/components/schemas/bookkeeping_entry_set/properties/transaction_id
      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_id

      # #/components/schemas/bookkeeping_entry_set/properties/type
      sig { returns(Increase::Models::BookkeepingEntrySet::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/bookkeeping_entry_set
      sig do
        params(
          id: String,
          created_at: Time,
          date: Time,
          entries: T::Array[T.any(Increase::Models::BookkeepingEntrySet::Entry, Increase::Internal::AnyHash)],
          idempotency_key: T.nilable(String),
          transaction_id: T.nilable(String),
          type: Increase::Models::BookkeepingEntrySet::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, created_at:, date:, entries:, idempotency_key:, transaction_id:, type:); end

      sig do
        override
          .returns(
            {
              id: String,
              created_at: Time,
              date: Time,
              entries: T::Array[Increase::Models::BookkeepingEntrySet::Entry],
              idempotency_key: T.nilable(String),
              transaction_id: T.nilable(String),
              type: Increase::Models::BookkeepingEntrySet::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      class Entry < Increase::Internal::Type::BaseModel
        # #/components/schemas/bookkeeping_entry_set/properties/entries/items/properties/id
        sig { returns(String) }
        attr_accessor :id

        # #/components/schemas/bookkeeping_entry_set/properties/entries/items/properties/account_id
        sig { returns(String) }
        attr_accessor :account_id

        # #/components/schemas/bookkeeping_entry_set/properties/entries/items/properties/amount
        sig { returns(Integer) }
        attr_accessor :amount

        # #/components/schemas/bookkeeping_entry_set/properties/entries/items
        sig { params(id: String, account_id: String, amount: Integer).returns(T.attached_class) }
        def self.new(id:, account_id:, amount:); end

        sig { override.returns({id: String, account_id: String, amount: Integer}) }
        def to_hash; end
      end

      # #/components/schemas/bookkeeping_entry_set/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::BookkeepingEntrySet::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::BookkeepingEntrySet::Type::TaggedSymbol) }

        BOOKKEEPING_ENTRY_SET =
          T.let(:bookkeeping_entry_set, Increase::Models::BookkeepingEntrySet::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::BookkeepingEntrySet::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
