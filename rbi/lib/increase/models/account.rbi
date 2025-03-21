# typed: strong

module Increase
  module Models
    class Account < Increase::BaseModel
      # The Account identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The bank the Account is with.
      sig { returns(Symbol) }
      def bank
      end

      sig { params(_: Symbol).returns(Symbol) }
      def bank=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Account
      #   was closed.
      sig { returns(T.nilable(Time)) }
      def closed_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def closed_at=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Account
      #   was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Account
      #   currency.
      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      # The identifier for the Entity the Account belongs to.
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

      # The identifier of an Entity that, while not owning the Account, is associated
      #   with its activity.
      sig { returns(T.nilable(String)) }
      def informational_entity_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def informational_entity_id=(_)
      end

      # The interest accrued but not yet paid, expressed as a string containing a
      #   floating-point value.
      sig { returns(String) }
      def interest_accrued
      end

      sig { params(_: String).returns(String) }
      def interest_accrued=(_)
      end

      # The latest [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which
      #   interest was accrued.
      sig { returns(T.nilable(Date)) }
      def interest_accrued_at
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def interest_accrued_at=(_)
      end

      # The Interest Rate currently being earned on the account, as a string containing
      #   a decimal number. For example, a 1% interest rate would be represented as
      #   "0.01".
      sig { returns(String) }
      def interest_rate
      end

      sig { params(_: String).returns(String) }
      def interest_rate=(_)
      end

      # The name you choose for the Account.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # The identifier of the Program determining the compliance and commercial terms of
      #   this Account.
      sig { returns(String) }
      def program_id
      end

      sig { params(_: String).returns(String) }
      def program_id=(_)
      end

      # The status of the Account.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `account`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # Accounts are your bank accounts with Increase. They store money, receive
      #   transfers, and send payments. They earn interest and have depository insurance.
      sig do
        params(
          id: String,
          bank: Symbol,
          closed_at: T.nilable(Time),
          created_at: Time,
          currency: Symbol,
          entity_id: T.nilable(String),
          idempotency_key: T.nilable(String),
          informational_entity_id: T.nilable(String),
          interest_accrued: String,
          interest_accrued_at: T.nilable(Date),
          interest_rate: String,
          name: String,
          program_id: String,
          status: Symbol,
          type: Symbol
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
              bank: Symbol,
              closed_at: T.nilable(Time),
              created_at: Time,
              currency: Symbol,
              entity_id: T.nilable(String),
              idempotency_key: T.nilable(String),
              informational_entity_id: T.nilable(String),
              interest_accrued: String,
              interest_accrued_at: T.nilable(Date),
              interest_rate: String,
              name: String,
              program_id: String,
              status: Symbol,
              type: Symbol
            }
          )
      end
      def to_hash
      end

      # The bank the Account is with.
      class Bank < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # Core Bank
        CORE_BANK = :core_bank

        # First Internet Bank of Indiana
        FIRST_INTERNET_BANK = :first_internet_bank

        # Grasshopper Bank
        GRASSHOPPER_BANK = :grasshopper_bank
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Account
      #   currency.
      class Currency < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # Canadian Dollar (CAD)
        CAD = :CAD

        # Swiss Franc (CHF)
        CHF = :CHF

        # Euro (EUR)
        EUR = :EUR

        # British Pound (GBP)
        GBP = :GBP

        # Japanese Yen (JPY)
        JPY = :JPY

        # US Dollar (USD)
        USD = :USD
      end

      # The status of the Account.
      class Status < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # Closed Accounts on which no new activity can occur.
        CLOSED = :closed

        # Open Accounts that are ready to use.
        OPEN = :open
      end

      # A constant representing the object's type. For this resource it will always be
      #   `account`.
      class Type < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ACCOUNT = :account
      end
    end
  end
end
