# typed: strong

module Increase
  module Models
    class BookkeepingEntrySet < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Time) }
      attr_accessor :date

      sig { returns(T::Array[Increase::Models::BookkeepingEntrySet::Entry]) }
      attr_accessor :entries

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_id

      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          id: String,
          created_at: Time,
          date: Time,
          entries: T::Array[Increase::Models::BookkeepingEntrySet::Entry],
          idempotency_key: T.nilable(String),
          transaction_id: T.nilable(String),
          type: Symbol
        ).void
      end
      def initialize(id:, created_at:, date:, entries:, idempotency_key:, transaction_id:, type:)
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            date: Time,
            entries: T::Array[Increase::Models::BookkeepingEntrySet::Entry],
            idempotency_key: T.nilable(String),
            transaction_id: T.nilable(String),
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Entry < Increase::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :account_id

        sig { returns(Integer) }
        attr_accessor :amount

        sig { params(id: String, account_id: String, amount: Integer).void }
        def initialize(id:, account_id:, amount:)
        end

        sig { override.returns({id: String, account_id: String, amount: Integer}) }
        def to_hash
        end
      end

      class Type < Increase::Enum
        abstract!

        BOOKKEEPING_ENTRY_SET = :bookkeeping_entry_set

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
