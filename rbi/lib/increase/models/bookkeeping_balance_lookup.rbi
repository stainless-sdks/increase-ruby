# typed: strong

module Increase
  module Models
    class BookkeepingBalanceLookup < Increase::BaseModel
      sig { returns(Integer) }
      def balance
      end

      sig { params(_: Integer).returns(Integer) }
      def balance=(_)
      end

      sig { returns(String) }
      def bookkeeping_account_id
      end

      sig { params(_: String).returns(String) }
      def bookkeeping_account_id=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig { params(balance: Integer, bookkeeping_account_id: String, type: Symbol).returns(T.attached_class) }
      def self.new(balance:, bookkeeping_account_id:, type:)
      end

      sig { override.returns({balance: Integer, bookkeeping_account_id: String, type: Symbol}) }
      def to_hash
      end

      class Type < Increase::Enum
        abstract!

        BOOKKEEPING_BALANCE_LOOKUP = :bookkeeping_balance_lookup

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
