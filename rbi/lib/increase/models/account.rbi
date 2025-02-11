# typed: strong

module Increase
  module Models
    class Account < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Symbol) }
      attr_accessor :bank

      sig { returns(T.nilable(Time)) }
      attr_accessor :closed_at

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Symbol) }
      attr_accessor :currency

      sig { returns(T.nilable(String)) }
      attr_accessor :entity_id

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(T.nilable(String)) }
      attr_accessor :informational_entity_id

      sig { returns(String) }
      attr_accessor :interest_accrued

      sig { returns(T.nilable(Date)) }
      attr_accessor :interest_accrued_at

      sig { returns(String) }
      attr_accessor :interest_rate

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :program_id

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Symbol) }
      attr_accessor :type

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
        ).void
      end
      def initialize(
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
        override.returns(
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

      class Bank < Increase::Enum
        abstract!

        # Core Bank
        CORE_BANK = :core_bank

        # First Internet Bank of Indiana
        FIRST_INTERNET_BANK = :first_internet_bank

        # Grasshopper Bank
        GRASSHOPPER_BANK = :grasshopper_bank

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Currency < Increase::Enum
        abstract!

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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Status < Increase::Enum
        abstract!

        # Closed Accounts on which no new activity can occur.
        CLOSED = :closed

        # Open Accounts that are ready to use.
        OPEN = :open

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        ACCOUNT = :account

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
