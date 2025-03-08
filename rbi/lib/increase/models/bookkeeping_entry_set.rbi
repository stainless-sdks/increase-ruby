# typed: strong

module Increase
  module Models
    class BookkeepingEntrySet < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(Time) }
      def date
      end

      sig { params(_: Time).returns(Time) }
      def date=(_)
      end

      sig { returns(T::Array[Increase::Models::BookkeepingEntrySet::Entry]) }
      def entries
      end

      sig do
        params(_: T::Array[Increase::Models::BookkeepingEntrySet::Entry])
          .returns(T::Array[Increase::Models::BookkeepingEntrySet::Entry])
      end
      def entries=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_id=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig do
        params(
            id: String,
            created_at: Time,
            date: Time,
            entries: T::Array[Increase::Models::BookkeepingEntrySet::Entry],
            idempotency_key: T.nilable(String),
            transaction_id: T.nilable(String),
            type: Symbol
          )
          .returns(T.attached_class)
      end
      def self.new(id:, created_at:, date:, entries:, idempotency_key:, transaction_id:, type:)
      end

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
              type: Symbol
            }
          )
      end
      def to_hash
      end

      class Entry < Increase::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(String) }
        def account_id
        end

        sig { params(_: String).returns(String) }
        def account_id=(_)
        end

        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig { params(id: String, account_id: String, amount: Integer).returns(T.attached_class) }
        def self.new(id:, account_id:, amount:)
        end

        sig { override.returns({id: String, account_id: String, amount: Integer}) }
        def to_hash
        end
      end

      class Type < Increase::Enum
        abstract!

        BOOKKEEPING_ENTRY_SET = :bookkeeping_entry_set

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
