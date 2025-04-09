# typed: strong

module Increase
  module Models
    class BookkeepingAccount < Increase::Internal::Type::BaseModel
      # #/components/schemas/bookkeeping_account/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/bookkeeping_account/properties/account_id
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      # #/components/schemas/bookkeeping_account/properties/compliance_category
      sig { returns(T.nilable(Increase::Models::BookkeepingAccount::ComplianceCategory::TaggedSymbol)) }
      attr_accessor :compliance_category

      # #/components/schemas/bookkeeping_account/properties/entity_id
      sig { returns(T.nilable(String)) }
      attr_accessor :entity_id

      # #/components/schemas/bookkeeping_account/properties/idempotency_key
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # #/components/schemas/bookkeeping_account/properties/name
      sig { returns(String) }
      attr_accessor :name

      # #/components/schemas/bookkeeping_account/properties/type
      sig { returns(Increase::Models::BookkeepingAccount::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/bookkeeping_account
      sig do
        params(
          id: String,
          account_id: T.nilable(String),
          compliance_category: T.nilable(Increase::Models::BookkeepingAccount::ComplianceCategory::OrSymbol),
          entity_id: T.nilable(String),
          idempotency_key: T.nilable(String),
          name: String,
          type: Increase::Models::BookkeepingAccount::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, account_id:, compliance_category:, entity_id:, idempotency_key:, name:, type:); end

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
      def to_hash; end

      # #/components/schemas/bookkeeping_account/properties/compliance_category
      module ComplianceCategory
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::BookkeepingAccount::ComplianceCategory) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::BookkeepingAccount::ComplianceCategory::TaggedSymbol) }

        # A cash in an commingled Increase Account.
        COMMINGLED_CASH =
          T.let(:commingled_cash, Increase::Models::BookkeepingAccount::ComplianceCategory::TaggedSymbol)

        # A customer balance.
        CUSTOMER_BALANCE =
          T.let(:customer_balance, Increase::Models::BookkeepingAccount::ComplianceCategory::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::BookkeepingAccount::ComplianceCategory::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/bookkeeping_account/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::BookkeepingAccount::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::BookkeepingAccount::Type::TaggedSymbol) }

        BOOKKEEPING_ACCOUNT =
          T.let(:bookkeeping_account, Increase::Models::BookkeepingAccount::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::BookkeepingAccount::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
