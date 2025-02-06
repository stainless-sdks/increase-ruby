# typed: strong

module Increase
  module Models
    class BookkeepingBalanceLookup < Increase::BaseModel
      sig { returns(Integer) }
      attr_accessor :balance

      sig { returns(String) }
      attr_accessor :bookkeeping_account_id

      sig { returns(Symbol) }
      attr_accessor :type

      sig { params(balance: Integer, bookkeeping_account_id: String, type: Symbol).void }
      def initialize(balance:, bookkeeping_account_id:, type:)
      end

      sig { override.returns({balance: Integer, bookkeeping_account_id: String, type: Symbol}) }
      def to_hash
      end

      class Type < Increase::Enum
        abstract!

        BOOKKEEPING_BALANCE_LOOKUP = :bookkeeping_balance_lookup

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
