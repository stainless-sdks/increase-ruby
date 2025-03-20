# typed: strong

module Increase
  module Models
    class BookkeepingEntrySet < Increase::BaseModel
      # The entry set identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # When the entry set was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The timestamp of the entry set.
      sig { returns(Time) }
      def date
      end

      sig { params(_: Time).returns(Time) }
      def date=(_)
      end

      # The entries.
      sig { returns(T::Array[Increase::Models::BookkeepingEntrySet::Entry]) }
      def entries
      end

      sig do
        params(_: T::Array[Increase::Models::BookkeepingEntrySet::Entry])
          .returns(T::Array[Increase::Models::BookkeepingEntrySet::Entry])
      end
      def entries=(_)
      end

      # The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      # The transaction identifier, if any.
      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_id=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `bookkeeping_entry_set`.
      sig { returns(Increase::Models::BookkeepingEntrySet::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::BookkeepingEntrySet::Type::TaggedSymbol)
          .returns(Increase::Models::BookkeepingEntrySet::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # Entry Sets are accounting entries that are transactionally applied. Your
      #   compliance setup might require annotating money movements using this API. Learn
      #   more in our
      #   [guide to Bookkeeping](https://increase.com/documentation/bookkeeping#bookkeeping).
      sig do
        params(
          id: String,
          created_at: Time,
          date: Time,
          entries: T::Array[Increase::Models::BookkeepingEntrySet::Entry],
          idempotency_key: T.nilable(String),
          transaction_id: T.nilable(String),
          type: Increase::Models::BookkeepingEntrySet::Type::TaggedSymbol
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
              type: Increase::Models::BookkeepingEntrySet::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      class Entry < Increase::BaseModel
        # The entry identifier.
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # The bookkeeping account impacted by the entry.
        sig { returns(String) }
        def account_id
        end

        sig { params(_: String).returns(String) }
        def account_id=(_)
        end

        # The amount of the entry in minor units.
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

      # A constant representing the object's type. For this resource it will always be
      #   `bookkeeping_entry_set`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::BookkeepingEntrySet::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::BookkeepingEntrySet::Type::TaggedSymbol) }

        BOOKKEEPING_ENTRY_SET =
          T.let(:bookkeeping_entry_set, Increase::Models::BookkeepingEntrySet::Type::TaggedSymbol)
      end
    end
  end
end
