# typed: strong

module Increase
  module Models
    class BookkeepingBalanceLookup < Increase::BaseModel
      # The Bookkeeping Account's current balance, representing the sum of all
      #   Bookkeeping Entries on the Bookkeeping Account.
      sig { returns(Integer) }
      def balance
      end

      sig { params(_: Integer).returns(Integer) }
      def balance=(_)
      end

      # The identifier for the account for which the balance was queried.
      sig { returns(String) }
      def bookkeeping_account_id
      end

      sig { params(_: String).returns(String) }
      def bookkeeping_account_id=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `bookkeeping_balance_lookup`.
      sig { returns(Increase::Models::BookkeepingBalanceLookup::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::BookkeepingBalanceLookup::Type::TaggedSymbol)
          .returns(Increase::Models::BookkeepingBalanceLookup::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # Represents a request to lookup the balance of an Bookkeeping Account at a given
      #   point in time.
      sig do
        params(
          balance: Integer,
          bookkeeping_account_id: String,
          type: Increase::Models::BookkeepingBalanceLookup::Type::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(balance:, bookkeeping_account_id:, type:)
      end

      sig do
        override
          .returns(
            {
              balance: Integer,
              bookkeeping_account_id: String,
              type: Increase::Models::BookkeepingBalanceLookup::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      # A constant representing the object's type. For this resource it will always be
      #   `bookkeeping_balance_lookup`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::BookkeepingBalanceLookup::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::BookkeepingBalanceLookup::Type::TaggedSymbol) }

        BOOKKEEPING_BALANCE_LOOKUP =
          T.let(:bookkeeping_balance_lookup, Increase::Models::BookkeepingBalanceLookup::Type::TaggedSymbol)
      end
    end
  end
end
