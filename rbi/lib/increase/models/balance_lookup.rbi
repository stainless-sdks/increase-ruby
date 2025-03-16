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
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # Represents a request to lookup the balance of an Account at a given point in
      #   time.
      sig do
        params(account_id: String, available_balance: Integer, current_balance: Integer, type: Symbol)
          .returns(T.attached_class)
      end
      def self.new(account_id:, available_balance:, current_balance:, type:)
      end

      sig do
        override.returns(
          {
            account_id: String,
            available_balance: Integer,
            current_balance: Integer,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      # A constant representing the object's type. For this resource it will always be
      #   `balance_lookup`.
      class Type < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        BALANCE_LOOKUP = :balance_lookup
      end
    end
  end
end
