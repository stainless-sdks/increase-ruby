# typed: strong

module Increase
  module Models
    class AccountNumber < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(String) }
      attr_accessor :account_number

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(Increase::Models::AccountNumber::InboundACH) }
      attr_accessor :inbound_ach

      sig { returns(Increase::Models::AccountNumber::InboundChecks) }
      attr_accessor :inbound_checks

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :routing_number

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Symbol) }
      attr_accessor :type

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
        ).void
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
        override.returns(
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
        attr_accessor :debit_status

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
        attr_accessor :status

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
