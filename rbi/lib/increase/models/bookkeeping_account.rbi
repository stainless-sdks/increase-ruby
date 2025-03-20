# typed: strong

module Increase
  module Models
    class BookkeepingAccount < Increase::BaseModel
      # The account identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The API Account associated with this bookkeeping account.
      sig { returns(T.nilable(String)) }
      def account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def account_id=(_)
      end

      # The compliance category of the account.
      sig { returns(T.nilable(Symbol)) }
      def compliance_category
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def compliance_category=(_)
      end

      # The Entity associated with this bookkeeping account.
      sig { returns(T.nilable(String)) }
      def entity_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def entity_id=(_)
      end

      # The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      # The name you choose for the account.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `bookkeeping_account`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # Accounts are T-accounts. They can store accounting entries. Your compliance
      #   setup might require annotating money movements using this API. Learn more in our
      #   [guide to Bookkeeping](https://increase.com/documentation/bookkeeping#bookkeeping).
      sig do
        params(
          id: String,
          account_id: T.nilable(String),
          compliance_category: T.nilable(Symbol),
          entity_id: T.nilable(String),
          idempotency_key: T.nilable(String),
          name: String,
          type: Symbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, account_id:, compliance_category:, entity_id:, idempotency_key:, name:, type:)
      end

      sig do
        override
          .returns(
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

      # The compliance category of the account.
      class ComplianceCategory < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # A cash in an commingled Increase Account.
        COMMINGLED_CASH = :commingled_cash

        # A customer balance.
        CUSTOMER_BALANCE = :customer_balance
      end

      # A constant representing the object's type. For this resource it will always be
      #   `bookkeeping_account`.
      class Type < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        BOOKKEEPING_ACCOUNT = :bookkeeping_account
      end
    end
  end
end
