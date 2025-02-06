# typed: strong

module Increase
  module Models
    class InboundRealTimePaymentsTransfer < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(String) }
      attr_accessor :account_number_id

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(T.nilable(Increase::Models::InboundRealTimePaymentsTransfer::Confirmation)) }
      attr_accessor :confirmation

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :creditor_name

      sig { returns(Symbol) }
      attr_accessor :currency

      sig { returns(String) }
      attr_accessor :debtor_account_number

      sig { returns(String) }
      attr_accessor :debtor_name

      sig { returns(String) }
      attr_accessor :debtor_routing_number

      sig { returns(T.nilable(Increase::Models::InboundRealTimePaymentsTransfer::Decline)) }
      attr_accessor :decline

      sig { returns(T.nilable(String)) }
      attr_accessor :remittance_information

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :transaction_identification

      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          id: String,
          account_id: String,
          account_number_id: String,
          amount: Integer,
          confirmation: T.nilable(Increase::Models::InboundRealTimePaymentsTransfer::Confirmation),
          created_at: Time,
          creditor_name: String,
          currency: Symbol,
          debtor_account_number: String,
          debtor_name: String,
          debtor_routing_number: String,
          decline: T.nilable(Increase::Models::InboundRealTimePaymentsTransfer::Decline),
          remittance_information: T.nilable(String),
          status: Symbol,
          transaction_identification: String,
          type: Symbol
        ).void
      end
      def initialize(
        id:,
        account_id:,
        account_number_id:,
        amount:,
        confirmation:,
        created_at:,
        creditor_name:,
        currency:,
        debtor_account_number:,
        debtor_name:,
        debtor_routing_number:,
        decline:,
        remittance_information:,
        status:,
        transaction_identification:,
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            account_number_id: String,
            amount: Integer,
            confirmation: T.nilable(Increase::Models::InboundRealTimePaymentsTransfer::Confirmation),
            created_at: Time,
            creditor_name: String,
            currency: Symbol,
            debtor_account_number: String,
            debtor_name: String,
            debtor_routing_number: String,
            decline: T.nilable(Increase::Models::InboundRealTimePaymentsTransfer::Decline),
            remittance_information: T.nilable(String),
            status: Symbol,
            transaction_identification: String,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Confirmation < Increase::BaseModel
        sig { returns(Time) }
        attr_accessor :confirmed_at

        sig { returns(String) }
        attr_accessor :transaction_id

        sig { params(confirmed_at: Time, transaction_id: String).void }
        def initialize(confirmed_at:, transaction_id:)
        end

        sig { override.returns({confirmed_at: Time, transaction_id: String}) }
        def to_hash
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

      class Decline < Increase::BaseModel
        sig { returns(Time) }
        attr_accessor :declined_at

        sig { returns(String) }
        attr_accessor :declined_transaction_id

        sig { returns(Symbol) }
        attr_accessor :reason

        sig { params(declined_at: Time, declined_transaction_id: String, reason: Symbol).void }
        def initialize(declined_at:, declined_transaction_id:, reason:)
        end

        sig { override.returns({declined_at: Time, declined_transaction_id: String, reason: Symbol}) }
        def to_hash
        end

        class Reason < Increase::Enum
          abstract!

          # The account number is canceled.
          ACCOUNT_NUMBER_CANCELED = :account_number_canceled

          # The account number is disabled.
          ACCOUNT_NUMBER_DISABLED = :account_number_disabled

          # Your account is restricted.
          ACCOUNT_RESTRICTED = :account_restricted

          # Your account is inactive.
          GROUP_LOCKED = :group_locked

          # The account's entity is not active.
          ENTITY_NOT_ACTIVE = :entity_not_active

          # Your account is not enabled to receive Real-Time Payments transfers.
          REAL_TIME_PAYMENTS_NOT_ENABLED = :real_time_payments_not_enabled

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Status < Increase::Enum
        abstract!

        # The transfer is pending confirmation.
        PENDING_CONFIRMING = :pending_confirming

        # The transfer was not responded to in time.
        TIMED_OUT = :timed_out

        # The transfer has been received successfully and is confirmed.
        CONFIRMED = :confirmed

        # The transfer has been declined.
        DECLINED = :declined

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        INBOUND_REAL_TIME_PAYMENTS_TRANSFER = :inbound_real_time_payments_transfer

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
