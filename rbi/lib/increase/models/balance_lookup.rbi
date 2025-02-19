# typed: strong

module Increase
  module Models
    class BalanceLookup < Increase::BaseModel
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(Integer) }
      def available_balance
      end

      sig { params(_: Integer).returns(Integer) }
      def available_balance=(_)
      end

      sig { returns(Integer) }
      def current_balance
      end

      sig { params(_: Integer).returns(Integer) }
      def current_balance=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig do
        params(account_id: String, available_balance: Integer, current_balance: Integer, type: Symbol).void
      end
      def initialize(account_id:, available_balance:, current_balance:, type:)
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

      class Type < Increase::Enum
        abstract!

        BALANCE_LOOKUP = :balance_lookup

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
