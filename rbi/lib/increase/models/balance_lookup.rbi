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
        params(account_id: String, available_balance: Integer, current_balance: Integer, type: Symbol)
          .returns(T.attached_class)
      end
      def self.new(account_id:, available_balance:, current_balance:, type:)
      end

      sig { override.returns({account_id: String, available_balance: Integer, current_balance: Integer, type: Symbol}) }
      def to_hash
      end

      class Type < Increase::Enum
        abstract!

        BALANCE_LOOKUP = :balance_lookup

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
