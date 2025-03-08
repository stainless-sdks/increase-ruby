# typed: strong

module Increase
  module Models
    class InboundRealTimePaymentsTransfer < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(String) }
      def account_number_id
      end

      sig { params(_: String).returns(String) }
      def account_number_id=(_)
      end

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(T.nilable(Increase::Models::InboundRealTimePaymentsTransfer::Confirmation)) }
      def confirmation
      end

      sig do
        params(_: T.nilable(Increase::Models::InboundRealTimePaymentsTransfer::Confirmation))
          .returns(T.nilable(Increase::Models::InboundRealTimePaymentsTransfer::Confirmation))
      end
      def confirmation=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(String) }
      def creditor_name
      end

      sig { params(_: String).returns(String) }
      def creditor_name=(_)
      end

      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      sig { returns(String) }
      def debtor_account_number
      end

      sig { params(_: String).returns(String) }
      def debtor_account_number=(_)
      end

      sig { returns(String) }
      def debtor_name
      end

      sig { params(_: String).returns(String) }
      def debtor_name=(_)
      end

      sig { returns(String) }
      def debtor_routing_number
      end

      sig { params(_: String).returns(String) }
      def debtor_routing_number=(_)
      end

      sig { returns(T.nilable(Increase::Models::InboundRealTimePaymentsTransfer::Decline)) }
      def decline
      end

      sig do
        params(_: T.nilable(Increase::Models::InboundRealTimePaymentsTransfer::Decline))
          .returns(T.nilable(Increase::Models::InboundRealTimePaymentsTransfer::Decline))
      end
      def decline=(_)
      end

      sig { returns(T.nilable(String)) }
      def remittance_information
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def remittance_information=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(String) }
      def transaction_identification
      end

      sig { params(_: String).returns(String) }
      def transaction_identification=(_)
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
          )
          .returns(T.attached_class)
      end
      def self.new(
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
        override
          .returns(
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
        def confirmed_at
        end

        sig { params(_: Time).returns(Time) }
        def confirmed_at=(_)
        end

        sig { returns(String) }
        def transaction_id
        end

        sig { params(_: String).returns(String) }
        def transaction_id=(_)
        end

        sig { params(confirmed_at: Time, transaction_id: String).returns(T.attached_class) }
        def self.new(confirmed_at:, transaction_id:)
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Decline < Increase::BaseModel
        sig { returns(Time) }
        def declined_at
        end

        sig { params(_: Time).returns(Time) }
        def declined_at=(_)
        end

        sig { returns(String) }
        def declined_transaction_id
        end

        sig { params(_: String).returns(String) }
        def declined_transaction_id=(_)
        end

        sig { returns(Symbol) }
        def reason
        end

        sig { params(_: Symbol).returns(Symbol) }
        def reason=(_)
        end

        sig { params(declined_at: Time, declined_transaction_id: String, reason: Symbol).returns(T.attached_class) }
        def self.new(declined_at:, declined_transaction_id:, reason:)
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

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Type < Increase::Enum
        abstract!

        INBOUND_REAL_TIME_PAYMENTS_TRANSFER = :inbound_real_time_payments_transfer

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
