# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Accounts#create
    class Account < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/account/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute bank
      #   #/components/schemas/account/properties/bank
      #
      #   @return [Symbol, Increase::Models::Account::Bank]
      required :bank, enum: -> { Increase::Models::Account::Bank }

      # @!attribute closed_at
      #   #/components/schemas/account/properties/closed_at
      #
      #   @return [Time, nil]
      required :closed_at, Time, nil?: true

      # @!attribute created_at
      #   #/components/schemas/account/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   #/components/schemas/account/properties/currency
      #
      #   @return [Symbol, Increase::Models::Account::Currency]
      required :currency, enum: -> { Increase::Models::Account::Currency }

      # @!attribute entity_id
      #   #/components/schemas/account/properties/entity_id
      #
      #   @return [String, nil]
      required :entity_id, String, nil?: true

      # @!attribute idempotency_key
      #   #/components/schemas/account/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute informational_entity_id
      #   #/components/schemas/account/properties/informational_entity_id
      #
      #   @return [String, nil]
      required :informational_entity_id, String, nil?: true

      # @!attribute interest_accrued
      #   #/components/schemas/account/properties/interest_accrued
      #
      #   @return [String]
      required :interest_accrued, String

      # @!attribute interest_accrued_at
      #   #/components/schemas/account/properties/interest_accrued_at
      #
      #   @return [Date, nil]
      required :interest_accrued_at, Date, nil?: true

      # @!attribute interest_rate
      #   #/components/schemas/account/properties/interest_rate
      #
      #   @return [String]
      required :interest_rate, String

      # @!attribute name
      #   #/components/schemas/account/properties/name
      #
      #   @return [String]
      required :name, String

      # @!attribute program_id
      #   #/components/schemas/account/properties/program_id
      #
      #   @return [String]
      required :program_id, String

      # @!attribute status
      #   #/components/schemas/account/properties/status
      #
      #   @return [Symbol, Increase::Models::Account::Status]
      required :status, enum: -> { Increase::Models::Account::Status }

      # @!attribute type
      #   #/components/schemas/account/properties/type
      #
      #   @return [Symbol, Increase::Models::Account::Type]
      required :type, enum: -> { Increase::Models::Account::Type }

      # @!parse
      #   # #/components/schemas/account
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

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/account/properties/bank
      #
      # @see Increase::Models::Account#bank
      module Bank
        extend Increase::Internal::Type::Enum

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

      # #/components/schemas/account/properties/currency
      #
      # @see Increase::Models::Account#currency
      module Currency
        extend Increase::Internal::Type::Enum

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

      # #/components/schemas/account/properties/status
      #
      # @see Increase::Models::Account#status
      module Status
        extend Increase::Internal::Type::Enum

        # Closed Accounts on which no new activity can occur.
        CLOSED = :closed

        # Open Accounts that are ready to use.
        OPEN = :open

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/account/properties/type
      #
      # @see Increase::Models::Account#type
      module Type
        extend Increase::Internal::Type::Enum

        ACCOUNT = :account

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
