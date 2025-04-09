# typed: strong

module Increase
  module Models
    class AccountNumber < Increase::Internal::Type::BaseModel
      # #/components/schemas/account_number/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/account_number/properties/account_id
      sig { returns(String) }
      attr_accessor :account_id

      # #/components/schemas/account_number/properties/account_number
      sig { returns(String) }
      attr_accessor :account_number

      # #/components/schemas/account_number/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/account_number/properties/idempotency_key
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # #/components/schemas/account_number/properties/inbound_ach
      sig { returns(Increase::Models::AccountNumber::InboundACH) }
      attr_reader :inbound_ach

      sig { params(inbound_ach: T.any(Increase::Models::AccountNumber::InboundACH, Increase::Internal::AnyHash)).void }
      attr_writer :inbound_ach

      # #/components/schemas/account_number/properties/inbound_checks
      sig { returns(Increase::Models::AccountNumber::InboundChecks) }
      attr_reader :inbound_checks

      sig do
        params(inbound_checks: T.any(Increase::Models::AccountNumber::InboundChecks, Increase::Internal::AnyHash))
          .void
      end
      attr_writer :inbound_checks

      # #/components/schemas/account_number/properties/name
      sig { returns(String) }
      attr_accessor :name

      # #/components/schemas/account_number/properties/routing_number
      sig { returns(String) }
      attr_accessor :routing_number

      # #/components/schemas/account_number/properties/status
      sig { returns(Increase::Models::AccountNumber::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/account_number/properties/type
      sig { returns(Increase::Models::AccountNumber::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/account_number
      sig do
        params(
          id: String,
          account_id: String,
          account_number: String,
          created_at: Time,
          idempotency_key: T.nilable(String),
          inbound_ach: T.any(Increase::Models::AccountNumber::InboundACH, Increase::Internal::AnyHash),
          inbound_checks: T.any(Increase::Models::AccountNumber::InboundChecks, Increase::Internal::AnyHash),
          name: String,
          routing_number: String,
          status: Increase::Models::AccountNumber::Status::OrSymbol,
          type: Increase::Models::AccountNumber::Type::OrSymbol
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
      ); end
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
      def to_hash; end

      class InboundACH < Increase::Internal::Type::BaseModel
        # #/components/schemas/account_number/properties/inbound_ach/properties/debit_status
        sig { returns(Increase::Models::AccountNumber::InboundACH::DebitStatus::TaggedSymbol) }
        attr_accessor :debit_status

        # #/components/schemas/account_number/properties/inbound_ach
        sig do
          params(debit_status: Increase::Models::AccountNumber::InboundACH::DebitStatus::OrSymbol)
            .returns(T.attached_class)
        end
        def self.new(debit_status:); end

        sig { override.returns({debit_status: Increase::Models::AccountNumber::InboundACH::DebitStatus::TaggedSymbol}) }
        def to_hash; end

        # #/components/schemas/account_number/properties/inbound_ach/properties/debit_status
        module DebitStatus
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountNumber::InboundACH::DebitStatus) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::AccountNumber::InboundACH::DebitStatus::TaggedSymbol) }

          # ACH Debits are allowed.
          ALLOWED = T.let(:allowed, Increase::Models::AccountNumber::InboundACH::DebitStatus::TaggedSymbol)

          # ACH Debits are blocked.
          BLOCKED = T.let(:blocked, Increase::Models::AccountNumber::InboundACH::DebitStatus::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::AccountNumber::InboundACH::DebitStatus::TaggedSymbol]) }
          def self.values; end
        end
      end

      class InboundChecks < Increase::Internal::Type::BaseModel
        # #/components/schemas/account_number/properties/inbound_checks/properties/status
        sig { returns(Increase::Models::AccountNumber::InboundChecks::Status::TaggedSymbol) }
        attr_accessor :status

        # #/components/schemas/account_number/properties/inbound_checks
        sig { params(status: Increase::Models::AccountNumber::InboundChecks::Status::OrSymbol).returns(T.attached_class) }
        def self.new(status:); end

        sig { override.returns({status: Increase::Models::AccountNumber::InboundChecks::Status::TaggedSymbol}) }
        def to_hash; end

        # #/components/schemas/account_number/properties/inbound_checks/properties/status
        module Status
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountNumber::InboundChecks::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::AccountNumber::InboundChecks::Status::TaggedSymbol) }

          # Checks with this Account Number will be processed even if they are not associated with a Check Transfer.
          ALLOWED = T.let(:allowed, Increase::Models::AccountNumber::InboundChecks::Status::TaggedSymbol)

          # Checks with this Account Number will be processed only if they can be matched to an existing Check Transfer.
          CHECK_TRANSFERS_ONLY =
            T.let(:check_transfers_only, Increase::Models::AccountNumber::InboundChecks::Status::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::AccountNumber::InboundChecks::Status::TaggedSymbol]) }
          def self.values; end
        end
      end

      # #/components/schemas/account_number/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountNumber::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::AccountNumber::Status::TaggedSymbol) }

        # The account number is active.
        ACTIVE = T.let(:active, Increase::Models::AccountNumber::Status::TaggedSymbol)

        # The account number is temporarily disabled.
        DISABLED = T.let(:disabled, Increase::Models::AccountNumber::Status::TaggedSymbol)

        # The account number is permanently disabled.
        CANCELED = T.let(:canceled, Increase::Models::AccountNumber::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::AccountNumber::Status::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/account_number/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::AccountNumber::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::AccountNumber::Type::TaggedSymbol) }

        ACCOUNT_NUMBER = T.let(:account_number, Increase::Models::AccountNumber::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::AccountNumber::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
