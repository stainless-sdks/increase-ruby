# typed: strong

module Increase
  module Models
    class BalanceLookup < Increase::BaseModel
      # The identifier for the account for which the balance was queried.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The Account's available balance, representing the current balance less any open
      #   Pending Transactions on the Account.
      sig { returns(Integer) }
      def available_balance
      end

      sig { params(_: Integer).returns(Integer) }
      def available_balance=(_)
      end

      # The Account's current balance, representing the sum of all posted Transactions
      #   on the Account.
      sig { returns(Integer) }
      def current_balance
      end

      sig { params(_: Integer).returns(Integer) }
      def current_balance=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `balance_lookup`.
      sig { returns(Increase::Models::BalanceLookup::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::BalanceLookup::Type::TaggedSymbol)
          .returns(Increase::Models::BalanceLookup::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # Represents a request to lookup the balance of an Account at a given point in
      #   time.
      sig do
        params(
          account_id: String,
          available_balance: Integer,
          current_balance: Integer,
          type: Increase::Models::BalanceLookup::Type::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(account_id:, available_balance:, current_balance:, type:)
      end

      sig do
        override
          .returns(
            {
              account_id: String,
              available_balance: Integer,
              current_balance: Integer,
              type: Increase::Models::BalanceLookup::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      # A constant representing the object's type. For this resource it will always be
      #   `balance_lookup`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::BalanceLookup::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::BalanceLookup::Type::TaggedSymbol) }

        BALANCE_LOOKUP = T.let(:balance_lookup, Increase::Models::BalanceLookup::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::BalanceLookup::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
