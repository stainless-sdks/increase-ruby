# typed: strong

module Increase
  module Models
    class BalanceLookup < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(Integer) }
      attr_accessor :available_balance

      sig { returns(Integer) }
      attr_accessor :current_balance

      sig { returns(Symbol) }
      attr_accessor :type

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
