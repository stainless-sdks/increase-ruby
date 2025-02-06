# typed: strong

module Increase
  module Models
    class BookkeepingAccount < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :compliance_category

      sig { returns(T.nilable(String)) }
      attr_accessor :entity_id

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          id: String,
          account_id: T.nilable(String),
          compliance_category: T.nilable(Symbol),
          entity_id: T.nilable(String),
          idempotency_key: T.nilable(String),
          name: String,
          type: Symbol
        ).void
      end
      def initialize(id:, account_id:, compliance_category:, entity_id:, idempotency_key:, name:, type:)
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: T.nilable(String),
            compliance_category: T.nilable(Symbol),
            entity_id: T.nilable(String),
            idempotency_key: T.nilable(String),
            name: String,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class ComplianceCategory < Increase::Enum
        abstract!

        # A cash in an commingled Increase Account.
        COMMINGLED_CASH = T.let(:commingled_cash, T.nilable(Symbol))

        # A customer balance.
        CUSTOMER_BALANCE = T.let(:customer_balance, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        BOOKKEEPING_ACCOUNT = :bookkeeping_account

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
