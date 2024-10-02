# frozen_string_literal: true

module Increase
  module Models
    class Account < BaseModel
      # @!attribute [rw] id
      #   The Account identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] bank
      #   The bank the Account is with.
      #   One of the constants defined in {Increase::Models::Account::Bank}
      #   @return [Symbol]
      required :bank, enum: -> { Increase::Models::Account::Bank }

      # @!attribute [rw] closed_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Account was closed.
      #   @return [DateTime]
      required :closed_at, DateTime

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Account was created.
      #   @return [DateTime]
      required :created_at, DateTime

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Account currency.
      #   One of the constants defined in {Increase::Models::Account::Currency}
      #   @return [Symbol]
      required :currency, enum: -> { Increase::Models::Account::Currency }

      # @!attribute [rw] entity_id
      #   The identifier for the Entity the Account belongs to.
      #   @return [String]
      required :entity_id, String

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] informational_entity_id
      #   The identifier of an Entity that, while not owning the Account, is associated with its activity.
      #   @return [String]
      required :informational_entity_id, String

      # @!attribute [rw] interest_accrued
      #   The interest accrued but not yet paid, expressed as a string containing a floating-point value.
      #   @return [String]
      required :interest_accrued, String

      # @!attribute [rw] interest_accrued_at
      #   The latest [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which interest was accrued.
      #   @return [Date]
      required :interest_accrued_at, Date

      # @!attribute [rw] interest_rate
      #   The Interest Rate currently being earned on the account, as a string containing a decimal number. For example, a 1% interest rate would be represented as "0.01".
      #   @return [String]
      required :interest_rate, String

      # @!attribute [rw] name_
      #   The name you choose for the Account.
      #   @return [String]
      required :name_, String

      # @!attribute [rw] program_id
      #   The identifier of the Program determining the compliance and commercial terms of this Account.
      #   @return [String]
      required :program_id, String

      # @!attribute [rw] status
      #   The status of the Account.
      #   One of the constants defined in {Increase::Models::Account::Status}
      #   @return [Symbol]
      required :status, enum: -> { Increase::Models::Account::Status }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `account`.
      #   One of the constants defined in {Increase::Models::Account::Type}
      #   @return [Symbol]
      required :type, enum: -> { Increase::Models::Account::Type }

      # The bank the Account is with.
      class Bank < Increase::Enum
        # Blue Ridge Bank, N.A.
        BLUE_RIDGE_BANK = :blue_ridge_bank

        # First Internet Bank of Indiana
        FIRST_INTERNET_BANK = :first_internet_bank

        # Grasshopper Bank
        GRASSHOPPER_BANK = :grasshopper_bank
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Account currency.
      class Currency < Increase::Enum
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
        # Open Accounts that are ready to use.
        OPEN = :open

        # Closed Accounts on which no new activity can occur.
        CLOSED = :closed
      end

      # A constant representing the object's type. For this resource it will always be `account`.
      class Type < Increase::Enum
        ACCOUNT = :account
      end
    end
  end
end
