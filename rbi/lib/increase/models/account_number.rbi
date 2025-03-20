# typed: strong

module Increase
  module Models
    class AccountNumber < Increase::BaseModel
      # The Account Number identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The identifier for the account this Account Number belongs to.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The account number.
      sig { returns(String) }
      def account_number
      end

      sig { params(_: String).returns(String) }
      def account_number=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Account
      #   Number was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
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

      # Properties related to how this Account Number handles inbound ACH transfers.
      sig { returns(Increase::Models::AccountNumber::InboundACH) }
      def inbound_ach
      end

      sig do
        params(_: T.any(Increase::Models::AccountNumber::InboundACH, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::AccountNumber::InboundACH, Increase::Util::AnyHash))
      end
      def inbound_ach=(_)
      end

      # Properties related to how this Account Number should handle inbound check
      #   withdrawals.
      sig { returns(Increase::Models::AccountNumber::InboundChecks) }
      def inbound_checks
      end

      sig do
        params(_: T.any(Increase::Models::AccountNumber::InboundChecks, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::AccountNumber::InboundChecks, Increase::Util::AnyHash))
      end
      def inbound_checks=(_)
      end

      # The name you choose for the Account Number.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # The American Bankers' Association (ABA) Routing Transit Number (RTN).
      sig { returns(String) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      # This indicates if payments can be made to the Account Number.
      sig { returns(Increase::Models::AccountNumber::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Increase::Models::AccountNumber::Status::TaggedSymbol)
          .returns(Increase::Models::AccountNumber::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `account_number`.
      sig { returns(Increase::Models::AccountNumber::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::AccountNumber::Type::TaggedSymbol)
          .returns(Increase::Models::AccountNumber::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # Each account can have multiple account and routing numbers. We recommend that
      #   you use a set per vendor. This is similar to how you use different passwords for
      #   different websites. Account numbers can also be used to seamlessly reconcile
      #   inbound payments. Generating a unique account number per vendor ensures you
      #   always know the originator of an incoming payment.
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
          status: Increase::Models::AccountNumber::Status::TaggedSymbol,
          type: Increase::Models::AccountNumber::Type::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
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
              status: Increase::Models::AccountNumber::Status::TaggedSymbol,
              type: Increase::Models::AccountNumber::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      class InboundACH < Increase::BaseModel
        # Whether ACH debits are allowed against this Account Number. Note that they will
        #   still be declined if this is `allowed` if the Account Number is not active.
        sig { returns(Increase::Models::AccountNumber::InboundACH::DebitStatus::TaggedSymbol) }
        def debit_status
        end

        sig do
          params(_: Increase::Models::AccountNumber::InboundACH::DebitStatus::TaggedSymbol)
            .returns(Increase::Models::AccountNumber::InboundACH::DebitStatus::TaggedSymbol)
        end
        def debit_status=(_)
        end

        # Properties related to how this Account Number handles inbound ACH transfers.
        sig do
          params(debit_status: Increase::Models::AccountNumber::InboundACH::DebitStatus::TaggedSymbol)
            .returns(T.attached_class)
        end
        def self.new(debit_status:)
        end

        sig { override.returns({debit_status: Increase::Models::AccountNumber::InboundACH::DebitStatus::TaggedSymbol}) }
        def to_hash
        end

        # Whether ACH debits are allowed against this Account Number. Note that they will
        #   still be declined if this is `allowed` if the Account Number is not active.
        module DebitStatus
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountNumber::InboundACH::DebitStatus) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::AccountNumber::InboundACH::DebitStatus::TaggedSymbol) }

          # ACH Debits are allowed.
          ALLOWED = T.let(:allowed, Increase::Models::AccountNumber::InboundACH::DebitStatus::TaggedSymbol)

          # ACH Debits are blocked.
          BLOCKED = T.let(:blocked, Increase::Models::AccountNumber::InboundACH::DebitStatus::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Increase::Models::AccountNumber::InboundACH::DebitStatus::TaggedSymbol]) }
            def values
            end
          end
        end
      end

      class InboundChecks < Increase::BaseModel
        # How Increase should process checks with this account number printed on them.
        sig { returns(Increase::Models::AccountNumber::InboundChecks::Status::TaggedSymbol) }
        def status
        end

        sig do
          params(_: Increase::Models::AccountNumber::InboundChecks::Status::TaggedSymbol)
            .returns(Increase::Models::AccountNumber::InboundChecks::Status::TaggedSymbol)
        end
        def status=(_)
        end

        # Properties related to how this Account Number should handle inbound check
        #   withdrawals.
        sig do
          params(status: Increase::Models::AccountNumber::InboundChecks::Status::TaggedSymbol)
            .returns(T.attached_class)
        end
        def self.new(status:)
        end

        sig { override.returns({status: Increase::Models::AccountNumber::InboundChecks::Status::TaggedSymbol}) }
        def to_hash
        end

        # How Increase should process checks with this account number printed on them.
        module Status
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountNumber::InboundChecks::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::AccountNumber::InboundChecks::Status::TaggedSymbol) }

          # Checks with this Account Number will be processed even if they are not associated with a Check Transfer.
          ALLOWED = T.let(:allowed, Increase::Models::AccountNumber::InboundChecks::Status::TaggedSymbol)

          # Checks with this Account Number will be processed only if they can be matched to an existing Check Transfer.
          CHECK_TRANSFERS_ONLY =
            T.let(:check_transfers_only, Increase::Models::AccountNumber::InboundChecks::Status::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Increase::Models::AccountNumber::InboundChecks::Status::TaggedSymbol]) }
            def values
            end
          end
        end
      end

      # This indicates if payments can be made to the Account Number.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountNumber::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::AccountNumber::Status::TaggedSymbol) }

        # The account number is active.
        ACTIVE = T.let(:active, Increase::Models::AccountNumber::Status::TaggedSymbol)

        # The account number is temporarily disabled.
        DISABLED = T.let(:disabled, Increase::Models::AccountNumber::Status::TaggedSymbol)

        # The account number is permanently disabled.
        CANCELED = T.let(:canceled, Increase::Models::AccountNumber::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::AccountNumber::Status::TaggedSymbol]) }
          def values
          end
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `account_number`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountNumber::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::AccountNumber::Type::TaggedSymbol) }

        ACCOUNT_NUMBER = T.let(:account_number, Increase::Models::AccountNumber::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::AccountNumber::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
