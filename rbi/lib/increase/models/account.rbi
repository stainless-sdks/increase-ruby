# typed: strong

module Increase
  module Models
    class Account < Increase::Internal::Type::BaseModel
      # #/components/schemas/account/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/account/properties/bank
      sig { returns(Increase::Models::Account::Bank::TaggedSymbol) }
      attr_accessor :bank

      # #/components/schemas/account/properties/closed_at
      sig { returns(T.nilable(Time)) }
      attr_accessor :closed_at

      # #/components/schemas/account/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/account/properties/currency
      sig { returns(Increase::Models::Account::Currency::TaggedSymbol) }
      attr_accessor :currency

      # #/components/schemas/account/properties/entity_id
      sig { returns(T.nilable(String)) }
      attr_accessor :entity_id

      # #/components/schemas/account/properties/idempotency_key
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # #/components/schemas/account/properties/informational_entity_id
      sig { returns(T.nilable(String)) }
      attr_accessor :informational_entity_id

      # #/components/schemas/account/properties/interest_accrued
      sig { returns(String) }
      attr_accessor :interest_accrued

      # #/components/schemas/account/properties/interest_accrued_at
      sig { returns(T.nilable(Date)) }
      attr_accessor :interest_accrued_at

      # #/components/schemas/account/properties/interest_rate
      sig { returns(String) }
      attr_accessor :interest_rate

      # #/components/schemas/account/properties/name
      sig { returns(String) }
      attr_accessor :name

      # #/components/schemas/account/properties/program_id
      sig { returns(String) }
      attr_accessor :program_id

      # #/components/schemas/account/properties/status
      sig { returns(Increase::Models::Account::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/account/properties/type
      sig { returns(Increase::Models::Account::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/account
      sig do
        params(
          id: String,
          bank: Increase::Models::Account::Bank::OrSymbol,
          closed_at: T.nilable(Time),
          created_at: Time,
          currency: Increase::Models::Account::Currency::OrSymbol,
          entity_id: T.nilable(String),
          idempotency_key: T.nilable(String),
          informational_entity_id: T.nilable(String),
          interest_accrued: String,
          interest_accrued_at: T.nilable(Date),
          interest_rate: String,
          name: String,
          program_id: String,
          status: Increase::Models::Account::Status::OrSymbol,
          type: Increase::Models::Account::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        bank:,
        closed_at:,
        created_at:,
        currency:,
        entity_id:,
        idempotency_key:,
        informational_entity_id:,
        interest_accrued:,
        interest_accrued_at:,
        interest_rate:,
        name:,
        program_id:,
        status:,
        type:
      ); end
      sig do
        override
          .returns(
            {
              id: String,
              bank: Increase::Models::Account::Bank::TaggedSymbol,
              closed_at: T.nilable(Time),
              created_at: Time,
              currency: Increase::Models::Account::Currency::TaggedSymbol,
              entity_id: T.nilable(String),
              idempotency_key: T.nilable(String),
              informational_entity_id: T.nilable(String),
              interest_accrued: String,
              interest_accrued_at: T.nilable(Date),
              interest_rate: String,
              name: String,
              program_id: String,
              status: Increase::Models::Account::Status::TaggedSymbol,
              type: Increase::Models::Account::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      # #/components/schemas/account/properties/bank
      module Bank
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Account::Bank) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Account::Bank::TaggedSymbol) }

        # Core Bank
        CORE_BANK = T.let(:core_bank, Increase::Models::Account::Bank::TaggedSymbol)

        # First Internet Bank of Indiana
        FIRST_INTERNET_BANK = T.let(:first_internet_bank, Increase::Models::Account::Bank::TaggedSymbol)

        # Grasshopper Bank
        GRASSHOPPER_BANK = T.let(:grasshopper_bank, Increase::Models::Account::Bank::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Account::Bank::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/account/properties/currency
      module Currency
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Account::Currency) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Account::Currency::TaggedSymbol) }

        # Canadian Dollar (CAD)
        CAD = T.let(:CAD, Increase::Models::Account::Currency::TaggedSymbol)

        # Swiss Franc (CHF)
        CHF = T.let(:CHF, Increase::Models::Account::Currency::TaggedSymbol)

        # Euro (EUR)
        EUR = T.let(:EUR, Increase::Models::Account::Currency::TaggedSymbol)

        # British Pound (GBP)
        GBP = T.let(:GBP, Increase::Models::Account::Currency::TaggedSymbol)

        # Japanese Yen (JPY)
        JPY = T.let(:JPY, Increase::Models::Account::Currency::TaggedSymbol)

        # US Dollar (USD)
        USD = T.let(:USD, Increase::Models::Account::Currency::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Account::Currency::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/account/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Account::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Account::Status::TaggedSymbol) }

        # Closed Accounts on which no new activity can occur.
        CLOSED = T.let(:closed, Increase::Models::Account::Status::TaggedSymbol)

        # Open Accounts that are ready to use.
        OPEN = T.let(:open, Increase::Models::Account::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Account::Status::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/account/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Account::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Account::Type::TaggedSymbol) }

        ACCOUNT = T.let(:account, Increase::Models::Account::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Account::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
