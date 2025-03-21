# typed: strong

module Increase
  module Models
    class Account < Increase::BaseModel
      # The Account identifier.
      sig { returns(String) }
      attr_accessor :id

      # The bank the Account is with.
      sig { returns(Increase::Models::Account::Bank::TaggedSymbol) }
      attr_accessor :bank

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Account
      #   was closed.
      sig { returns(T.nilable(Time)) }
      attr_accessor :closed_at

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Account
      #   was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Account
      #   currency.
      sig { returns(Increase::Models::Account::Currency::TaggedSymbol) }
      attr_accessor :currency

      # The identifier for the Entity the Account belongs to.
      sig { returns(T.nilable(String)) }
      attr_accessor :entity_id

      # The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # The identifier of an Entity that, while not owning the Account, is associated
      #   with its activity.
      sig { returns(T.nilable(String)) }
      attr_accessor :informational_entity_id

      # The interest accrued but not yet paid, expressed as a string containing a
      #   floating-point value.
      sig { returns(String) }
      attr_accessor :interest_accrued

      # The latest [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which
      #   interest was accrued.
      sig { returns(T.nilable(Date)) }
      attr_accessor :interest_accrued_at

      # The Interest Rate currently being earned on the account, as a string containing
      #   a decimal number. For example, a 1% interest rate would be represented as
      #   "0.01".
      sig { returns(String) }
      attr_accessor :interest_rate

      # The name you choose for the Account.
      sig { returns(String) }
      attr_accessor :name

      # The identifier of the Program determining the compliance and commercial terms of
      #   this Account.
      sig { returns(String) }
      attr_accessor :program_id

      # The status of the Account.
      sig { returns(Increase::Models::Account::Status::TaggedSymbol) }
      attr_accessor :status

      # A constant representing the object's type. For this resource it will always be
      #   `account`.
      sig { returns(Increase::Models::Account::Type::TaggedSymbol) }
      attr_accessor :type

      # Accounts are your bank accounts with Increase. They store money, receive
      #   transfers, and send payments. They earn interest and have depository insurance.
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
      )
      end

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
      def to_hash
      end

      # The bank the Account is with.
      module Bank
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Account::Bank) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::Account::Bank::TaggedSymbol) }

        # Core Bank
        CORE_BANK = T.let(:core_bank, Increase::Models::Account::Bank::TaggedSymbol)

        # First Internet Bank of Indiana
        FIRST_INTERNET_BANK = T.let(:first_internet_bank, Increase::Models::Account::Bank::TaggedSymbol)

        # Grasshopper Bank
        GRASSHOPPER_BANK = T.let(:grasshopper_bank, Increase::Models::Account::Bank::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Account::Bank::TaggedSymbol]) }
        def self.values
        end
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Account
      #   currency.
      module Currency
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Account::Currency) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::Account::Currency::TaggedSymbol) }

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
        def self.values
        end
      end

      # The status of the Account.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Account::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::Account::Status::TaggedSymbol) }

        # Closed Accounts on which no new activity can occur.
        CLOSED = T.let(:closed, Increase::Models::Account::Status::TaggedSymbol)

        # Open Accounts that are ready to use.
        OPEN = T.let(:open, Increase::Models::Account::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Account::Status::TaggedSymbol]) }
        def self.values
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `account`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Account::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::Account::Type::TaggedSymbol) }

        ACCOUNT = T.let(:account, Increase::Models::Account::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Account::Type::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
