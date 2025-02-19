# typed: strong

module Increase
  module Models
    class Account < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Symbol) }
      def bank
      end

      sig { params(_: Symbol).returns(Symbol) }
      def bank=(_)
      end

      sig { returns(T.nilable(Time)) }
      def closed_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def closed_at=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      sig { returns(T.nilable(String)) }
      def entity_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def entity_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(T.nilable(String)) }
      def informational_entity_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def informational_entity_id=(_)
      end

      sig { returns(String) }
      def interest_accrued
      end

      sig { params(_: String).returns(String) }
      def interest_accrued=(_)
      end

      sig { returns(T.nilable(Date)) }
      def interest_accrued_at
      end

      sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
      def interest_accrued_at=(_)
      end

      sig { returns(String) }
      def interest_rate
      end

      sig { params(_: String).returns(String) }
      def interest_rate=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(String) }
      def program_id
      end

      sig { params(_: String).returns(String) }
      def program_id=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

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
          .void
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
