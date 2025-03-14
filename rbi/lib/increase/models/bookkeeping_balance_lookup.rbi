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
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # Represents a request to lookup the balance of an Bookkeeping Account at a given
      #   point in time.
      sig { params(balance: Integer, bookkeeping_account_id: String, type: Symbol).returns(T.attached_class) }
      def self.new(balance:, bookkeeping_account_id:, type:)
      end

      sig { override.returns({balance: Integer, bookkeeping_account_id: String, type: Symbol}) }
      def to_hash
      end

      # A constant representing the object's type. For this resource it will always be
      #   `bookkeeping_balance_lookup`.
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
