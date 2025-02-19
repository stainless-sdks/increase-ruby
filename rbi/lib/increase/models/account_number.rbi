# typed: strong

module Increase
  module Models
    class AccountNumber < Increase::BaseModel
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
      def account_number
      end

      sig { params(_: String).returns(String) }
      def account_number=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(Increase::Models::AccountNumber::InboundACH) }
      def inbound_ach
      end

      sig do
        params(_: Increase::Models::AccountNumber::InboundACH).returns(Increase::Models::AccountNumber::InboundACH)
      end
      def inbound_ach=(_)
      end

      sig { returns(Increase::Models::AccountNumber::InboundChecks) }
      def inbound_checks
      end

      sig do
        params(_: Increase::Models::AccountNumber::InboundChecks)
          .returns(Increase::Models::AccountNumber::InboundChecks)
      end
      def inbound_checks=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(String) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
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
          account_id: String,
          account_number: String,
          created_at: Time,
          idempotency_key: T.nilable(String),
          inbound_ach: Increase::Models::AccountNumber::InboundACH,
          inbound_checks: Increase::Models::AccountNumber::InboundChecks,
          name: String,
          routing_number: String,
          status: Symbol,
          type: Symbol
        )
          .void
      end
      def initialize(
        id:,
        account_id:,
        account_number:,
        created_at:,
        idempotency_key:,
        inbound_ach:,
        inbound_checks:,
        name:,
        routing_number:,
        status:,
        type:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_id: String,
              account_number: String,
              created_at: Time,
              idempotency_key: T.nilable(String),
              inbound_ach: Increase::Models::AccountNumber::InboundACH,
              inbound_checks: Increase::Models::AccountNumber::InboundChecks,
              name: String,
              routing_number: String,
              status: Symbol,
              type: Symbol
            }
          )
      end
      def to_hash
      end

      class InboundACH < Increase::BaseModel
        sig { returns(Symbol) }
        def debit_status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def debit_status=(_)
        end

        sig { params(debit_status: Symbol).void }
        def initialize(debit_status:)
        end

        sig { override.returns({debit_status: Symbol}) }
        def to_hash
        end

        class DebitStatus < Increase::Enum
          abstract!

          # ACH Debits are allowed.
          ALLOWED = :allowed

          # ACH Debits are blocked.
          BLOCKED = :blocked

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class InboundChecks < Increase::BaseModel
        sig { returns(Symbol) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        sig { params(status: Symbol).void }
        def initialize(status:)
        end

        sig { override.returns({status: Symbol}) }
        def to_hash
        end

        class Status < Increase::Enum
          abstract!

          # Checks with this Account Number will be processed even if they are not associated with a Check Transfer.
          ALLOWED = :allowed

          # Checks with this Account Number will be processed only if they can be matched to an existing Check Transfer.
          CHECK_TRANSFERS_ONLY = :check_transfers_only

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Status < Increase::Enum
        abstract!

        # The account number is active.
        ACTIVE = :active

        # The account number is temporarily disabled.
        DISABLED = :disabled

        # The account number is permanently disabled.
        CANCELED = :canceled

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        ACCOUNT_NUMBER = :account_number

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
