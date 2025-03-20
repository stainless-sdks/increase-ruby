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
      sig { returns(T.nilable(Increase::Models::BookkeepingAccount::ComplianceCategory::TaggedSymbol)) }
      def compliance_category
      end

      sig do
        params(_: T.nilable(Increase::Models::BookkeepingAccount::ComplianceCategory::TaggedSymbol))
          .returns(T.nilable(Increase::Models::BookkeepingAccount::ComplianceCategory::TaggedSymbol))
      end
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
      sig { returns(Increase::Models::BookkeepingAccount::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::BookkeepingAccount::Type::TaggedSymbol)
          .returns(Increase::Models::BookkeepingAccount::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # Accounts are T-accounts. They can store accounting entries. Your compliance
      #   setup might require annotating money movements using this API. Learn more in our
      #   [guide to Bookkeeping](https://increase.com/documentation/bookkeeping#bookkeeping).
      sig do
        params(
          id: String,
          account_id: T.nilable(String),
          compliance_category: T.nilable(Increase::Models::BookkeepingAccount::ComplianceCategory::TaggedSymbol),
          entity_id: T.nilable(String),
          idempotency_key: T.nilable(String),
          name: String,
          type: Increase::Models::BookkeepingAccount::Type::TaggedSymbol
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
              compliance_category: T.nilable(Increase::Models::BookkeepingAccount::ComplianceCategory::TaggedSymbol),
              entity_id: T.nilable(String),
              idempotency_key: T.nilable(String),
              name: String,
              type: Increase::Models::BookkeepingAccount::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      # The compliance category of the account.
      module ComplianceCategory
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::BookkeepingAccount::ComplianceCategory) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::BookkeepingAccount::ComplianceCategory::TaggedSymbol) }

        # A cash in an commingled Increase Account.
        COMMINGLED_CASH =
          T.let(:commingled_cash, Increase::Models::BookkeepingAccount::ComplianceCategory::TaggedSymbol)

        # A customer balance.
        CUSTOMER_BALANCE =
          T.let(:customer_balance, Increase::Models::BookkeepingAccount::ComplianceCategory::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::BookkeepingAccount::ComplianceCategory::TaggedSymbol]) }
          def values
          end
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `bookkeeping_account`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::BookkeepingAccount::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::BookkeepingAccount::Type::TaggedSymbol) }

        BOOKKEEPING_ACCOUNT =
          T.let(:bookkeeping_account, Increase::Models::BookkeepingAccount::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::BookkeepingAccount::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
