# typed: strong

module Increase
  module Models
    class BookkeepingEntry < Increase::BaseModel
      # The entry identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The identifier for the Account the Entry belongs to.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The Entry amount in the minor unit of its currency. For dollars, for example,
      #   this is cents.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # When the entry set was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The identifier for the Account the Entry belongs to.
      sig { returns(String) }
      def entry_set_id
      end

      sig { params(_: String).returns(String) }
      def entry_set_id=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `bookkeeping_entry`.
      sig { returns(Increase::Models::BookkeepingEntry::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::BookkeepingEntry::Type::TaggedSymbol)
          .returns(Increase::Models::BookkeepingEntry::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # Entries are T-account entries recording debits and credits. Your compliance
      #   setup might require annotating money movements using this API. Learn more in our
      #   [guide to Bookkeeping](https://increase.com/documentation/bookkeeping#bookkeeping).
      sig do
        params(
          id: String,
          account_id: String,
          amount: Integer,
          created_at: Time,
          entry_set_id: String,
          type: Increase::Models::BookkeepingEntry::Type::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, account_id:, amount:, created_at:, entry_set_id:, type:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_id: String,
              amount: Integer,
              created_at: Time,
              entry_set_id: String,
              type: Increase::Models::BookkeepingEntry::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      # A constant representing the object's type. For this resource it will always be
      #   `bookkeeping_entry`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::BookkeepingEntry::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::BookkeepingEntry::Type::TaggedSymbol) }

        BOOKKEEPING_ENTRY = T.let(:bookkeeping_entry, Increase::Models::BookkeepingEntry::Type::TaggedSymbol)
      end
    end
  end
end
