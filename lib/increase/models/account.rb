# frozen_string_literal: true

module Increase
  module Models
    class Account < Increase::BaseModel
      # @!attribute id
      #   The Account identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute bank
      #   The bank the Account is with.
      #
      #   @return [Symbol, Increase::Models::Account::Bank]
      required :bank, enum: -> { Increase::Models::Account::Bank }

      # @!attribute closed_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Account
      #     was closed.
      #
      #   @return [Time, nil]
      required :closed_at, Time, nil?: true

      # @!attribute created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Account
      #     was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Account
      #     currency.
      #
      #   @return [Symbol, Increase::Models::Account::Currency]
      required :currency, enum: -> { Increase::Models::Account::Currency }

      # @!attribute entity_id
      #   The identifier for the Entity the Account belongs to.
      #
      #   @return [String, nil]
      required :entity_id, String, nil?: true

      # @!attribute idempotency_key
      #   The idempotency key you chose for this object. This value is unique across
      #     Increase and is used to ensure that a request is only processed once. Learn more
      #     about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute informational_entity_id
      #   The identifier of an Entity that, while not owning the Account, is associated
      #     with its activity.
      #
      #   @return [String, nil]
      required :informational_entity_id, String, nil?: true

      # @!attribute interest_accrued
      #   The interest accrued but not yet paid, expressed as a string containing a
      #     floating-point value.
      #
      #   @return [String]
      required :interest_accrued, String

      # @!attribute interest_accrued_at
      #   The latest [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which
      #     interest was accrued.
      #
      #   @return [Date, nil]
      required :interest_accrued_at, Date, nil?: true

      # @!attribute interest_rate
      #   The Interest Rate currently being earned on the account, as a string containing
      #     a decimal number. For example, a 1% interest rate would be represented as
      #     "0.01".
      #
      #   @return [String]
      required :interest_rate, String

      # @!attribute name
      #   The name you choose for the Account.
      #
      #   @return [String]
      required :name, String

      # @!attribute program_id
      #   The identifier of the Program determining the compliance and commercial terms of
      #     this Account.
      #
      #   @return [String]
      required :program_id, String

      # @!attribute status
      #   The status of the Account.
      #
      #   @return [Symbol, Increase::Models::Account::Status]
      required :status, enum: -> { Increase::Models::Account::Status }

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be
      #     `account`.
      #
      #   @return [Symbol, Increase::Models::Account::Type]
      required :type, enum: -> { Increase::Models::Account::Type }

      # @!parse
      #   # Accounts are your bank accounts with Increase. They store money, receive
      #   #   transfers, and send payments. They earn interest and have depository insurance.
      #   #
      #   # @param id [String]
      #   # @param bank [Symbol, Increase::Models::Account::Bank]
      #   # @param closed_at [Time, nil]
      #   # @param created_at [Time]
      #   # @param currency [Symbol, Increase::Models::Account::Currency]
      #   # @param entity_id [String, nil]
      #   # @param idempotency_key [String, nil]
      #   # @param informational_entity_id [String, nil]
      #   # @param interest_accrued [String]
      #   # @param interest_accrued_at [Date, nil]
      #   # @param interest_rate [String]
      #   # @param name [String]
      #   # @param program_id [String]
      #   # @param status [Symbol, Increase::Models::Account::Status]
      #   # @param type [Symbol, Increase::Models::Account::Type]
      #   #
      #   def initialize(
      #     id:,
      #     bank:,
      #     closed_at:,
      #     created_at:,
      #     currency:,
      #     entity_id:,
      #     idempotency_key:,
      #     informational_entity_id:,
      #     interest_accrued:,
      #     interest_accrued_at:,
      #     interest_rate:,
      #     name:,
      #     program_id:,
      #     status:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The bank the Account is with.
      #
      # @see Increase::Models::Account#bank
      module Bank
        extend Increase::Enum

        # Core Bank
        CORE_BANK = :core_bank

        # First Internet Bank of Indiana
        FIRST_INTERNET_BANK = :first_internet_bank

        # Grasshopper Bank
        GRASSHOPPER_BANK = :grasshopper_bank

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Account
      #   currency.
      #
      # @see Increase::Models::Account#currency
      module Currency
        extend Increase::Enum

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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # The status of the Account.
      #
      # @see Increase::Models::Account#status
      module Status
        extend Increase::Enum

        # Closed Accounts on which no new activity can occur.
        CLOSED = :closed

        # Open Accounts that are ready to use.
        OPEN = :open

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `account`.
      #
      # @see Increase::Models::Account#type
      module Type
        extend Increase::Enum

        ACCOUNT = :account

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
