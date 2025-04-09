# typed: strong

module Increase
  module Models
    class InboundRealTimePaymentsTransfer < Increase::Internal::Type::BaseModel
      # #/components/schemas/inbound_real_time_payments_transfer/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/inbound_real_time_payments_transfer/properties/account_id
      sig { returns(String) }
      attr_accessor :account_id

      # #/components/schemas/inbound_real_time_payments_transfer/properties/account_number_id
      sig { returns(String) }
      attr_accessor :account_number_id

      # #/components/schemas/inbound_real_time_payments_transfer/properties/amount
      sig { returns(Integer) }
      attr_accessor :amount

      # #/components/schemas/inbound_real_time_payments_transfer/properties/confirmation
      sig { returns(T.nilable(Increase::Models::InboundRealTimePaymentsTransfer::Confirmation)) }
      attr_reader :confirmation

      sig do
        params(
          confirmation: T.nilable(
            T.any(Increase::Models::InboundRealTimePaymentsTransfer::Confirmation, Increase::Internal::AnyHash)
          )
        )
          .void
      end
      attr_writer :confirmation

      # #/components/schemas/inbound_real_time_payments_transfer/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/inbound_real_time_payments_transfer/properties/creditor_name
      sig { returns(String) }
      attr_accessor :creditor_name

      # #/components/schemas/inbound_real_time_payments_transfer/properties/currency
      sig { returns(Increase::Models::InboundRealTimePaymentsTransfer::Currency::TaggedSymbol) }
      attr_accessor :currency

      # #/components/schemas/inbound_real_time_payments_transfer/properties/debtor_account_number
      sig { returns(String) }
      attr_accessor :debtor_account_number

      # #/components/schemas/inbound_real_time_payments_transfer/properties/debtor_name
      sig { returns(String) }
      attr_accessor :debtor_name

      # #/components/schemas/inbound_real_time_payments_transfer/properties/debtor_routing_number
      sig { returns(String) }
      attr_accessor :debtor_routing_number

      # #/components/schemas/inbound_real_time_payments_transfer/properties/decline
      sig { returns(T.nilable(Increase::Models::InboundRealTimePaymentsTransfer::Decline)) }
      attr_reader :decline

      sig do
        params(
          decline: T.nilable(T.any(Increase::Models::InboundRealTimePaymentsTransfer::Decline, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :decline

      # #/components/schemas/inbound_real_time_payments_transfer/properties/remittance_information
      sig { returns(T.nilable(String)) }
      attr_accessor :remittance_information

      # #/components/schemas/inbound_real_time_payments_transfer/properties/status
      sig { returns(Increase::Models::InboundRealTimePaymentsTransfer::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/inbound_real_time_payments_transfer/properties/transaction_identification
      sig { returns(String) }
      attr_accessor :transaction_identification

      # #/components/schemas/inbound_real_time_payments_transfer/properties/type
      sig { returns(Increase::Models::InboundRealTimePaymentsTransfer::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/inbound_real_time_payments_transfer
      sig do
        params(
          id: String,
          account_id: String,
          account_number_id: String,
          amount: Integer,
          confirmation: T.nilable(
            T.any(Increase::Models::InboundRealTimePaymentsTransfer::Confirmation, Increase::Internal::AnyHash)
          ),
          created_at: Time,
          creditor_name: String,
          currency: Increase::Models::InboundRealTimePaymentsTransfer::Currency::OrSymbol,
          debtor_account_number: String,
          debtor_name: String,
          debtor_routing_number: String,
          decline: T.nilable(T.any(Increase::Models::InboundRealTimePaymentsTransfer::Decline, Increase::Internal::AnyHash)),
          remittance_information: T.nilable(String),
          status: Increase::Models::InboundRealTimePaymentsTransfer::Status::OrSymbol,
          transaction_identification: String,
          type: Increase::Models::InboundRealTimePaymentsTransfer::Type::OrSymbol
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
      ); end
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
              currency: Increase::Models::InboundRealTimePaymentsTransfer::Currency::TaggedSymbol,
              debtor_account_number: String,
              debtor_name: String,
              debtor_routing_number: String,
              decline: T.nilable(Increase::Models::InboundRealTimePaymentsTransfer::Decline),
              remittance_information: T.nilable(String),
              status: Increase::Models::InboundRealTimePaymentsTransfer::Status::TaggedSymbol,
              transaction_identification: String,
              type: Increase::Models::InboundRealTimePaymentsTransfer::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      class Confirmation < Increase::Internal::Type::BaseModel
        # #/components/schemas/inbound_real_time_payments_transfer/properties/confirmation/anyOf/0/properties/confirmed_at
        sig { returns(Time) }
        attr_accessor :confirmed_at

        # #/components/schemas/inbound_real_time_payments_transfer/properties/confirmation/anyOf/0/properties/transaction_id
        sig { returns(String) }
        attr_accessor :transaction_id

        # #/components/schemas/inbound_real_time_payments_transfer/properties/confirmation
        sig { params(confirmed_at: Time, transaction_id: String).returns(T.attached_class) }
        def self.new(confirmed_at:, transaction_id:); end

        sig { override.returns({confirmed_at: Time, transaction_id: String}) }
        def to_hash; end
      end

      # #/components/schemas/inbound_real_time_payments_transfer/properties/currency
      module Currency
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::InboundRealTimePaymentsTransfer::Currency) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::InboundRealTimePaymentsTransfer::Currency::TaggedSymbol) }

        # Canadian Dollar (CAD)
        CAD = T.let(:CAD, Increase::Models::InboundRealTimePaymentsTransfer::Currency::TaggedSymbol)

        # Swiss Franc (CHF)
        CHF = T.let(:CHF, Increase::Models::InboundRealTimePaymentsTransfer::Currency::TaggedSymbol)

        # Euro (EUR)
        EUR = T.let(:EUR, Increase::Models::InboundRealTimePaymentsTransfer::Currency::TaggedSymbol)

        # British Pound (GBP)
        GBP = T.let(:GBP, Increase::Models::InboundRealTimePaymentsTransfer::Currency::TaggedSymbol)

        # Japanese Yen (JPY)
        JPY = T.let(:JPY, Increase::Models::InboundRealTimePaymentsTransfer::Currency::TaggedSymbol)

        # US Dollar (USD)
        USD = T.let(:USD, Increase::Models::InboundRealTimePaymentsTransfer::Currency::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::InboundRealTimePaymentsTransfer::Currency::TaggedSymbol]) }
        def self.values; end
      end

      class Decline < Increase::Internal::Type::BaseModel
        # #/components/schemas/inbound_real_time_payments_transfer/properties/decline/anyOf/0/properties/declined_at
        sig { returns(Time) }
        attr_accessor :declined_at

        # #/components/schemas/inbound_real_time_payments_transfer/properties/decline/anyOf/0/properties/declined_transaction_id
        sig { returns(String) }
        attr_accessor :declined_transaction_id

        # #/components/schemas/inbound_real_time_payments_transfer/properties/decline/anyOf/0/properties/reason
        sig { returns(Increase::Models::InboundRealTimePaymentsTransfer::Decline::Reason::TaggedSymbol) }
        attr_accessor :reason

        # #/components/schemas/inbound_real_time_payments_transfer/properties/decline
        sig do
          params(
            declined_at: Time,
            declined_transaction_id: String,
            reason: Increase::Models::InboundRealTimePaymentsTransfer::Decline::Reason::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(declined_at:, declined_transaction_id:, reason:); end

        sig do
          override
            .returns(
              {
                declined_at: Time,
                declined_transaction_id: String,
                reason: Increase::Models::InboundRealTimePaymentsTransfer::Decline::Reason::TaggedSymbol
              }
            )
        end
        def to_hash; end

        # #/components/schemas/inbound_real_time_payments_transfer/properties/decline/anyOf/0/properties/reason
        module Reason
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::InboundRealTimePaymentsTransfer::Decline::Reason) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::InboundRealTimePaymentsTransfer::Decline::Reason::TaggedSymbol) }

          # The account number is canceled.
          ACCOUNT_NUMBER_CANCELED =
            T.let(
              :account_number_canceled,
              Increase::Models::InboundRealTimePaymentsTransfer::Decline::Reason::TaggedSymbol
            )

          # The account number is disabled.
          ACCOUNT_NUMBER_DISABLED =
            T.let(
              :account_number_disabled,
              Increase::Models::InboundRealTimePaymentsTransfer::Decline::Reason::TaggedSymbol
            )

          # Your account is restricted.
          ACCOUNT_RESTRICTED =
            T.let(
              :account_restricted,
              Increase::Models::InboundRealTimePaymentsTransfer::Decline::Reason::TaggedSymbol
            )

          # Your account is inactive.
          GROUP_LOCKED =
            T.let(:group_locked, Increase::Models::InboundRealTimePaymentsTransfer::Decline::Reason::TaggedSymbol)

          # The account's entity is not active.
          ENTITY_NOT_ACTIVE =
            T.let(
              :entity_not_active,
              Increase::Models::InboundRealTimePaymentsTransfer::Decline::Reason::TaggedSymbol
            )

          # Your account is not enabled to receive Real-Time Payments transfers.
          REAL_TIME_PAYMENTS_NOT_ENABLED =
            T.let(
              :real_time_payments_not_enabled,
              Increase::Models::InboundRealTimePaymentsTransfer::Decline::Reason::TaggedSymbol
            )

          sig do
            override
              .returns(T::Array[Increase::Models::InboundRealTimePaymentsTransfer::Decline::Reason::TaggedSymbol])
          end
          def self.values; end
        end
      end

      # #/components/schemas/inbound_real_time_payments_transfer/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundRealTimePaymentsTransfer::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::InboundRealTimePaymentsTransfer::Status::TaggedSymbol) }

        # The transfer is pending confirmation.
        PENDING_CONFIRMING =
          T.let(:pending_confirming, Increase::Models::InboundRealTimePaymentsTransfer::Status::TaggedSymbol)

        # The transfer was not responded to in time.
        TIMED_OUT = T.let(:timed_out, Increase::Models::InboundRealTimePaymentsTransfer::Status::TaggedSymbol)

        # The transfer has been received successfully and is confirmed.
        CONFIRMED = T.let(:confirmed, Increase::Models::InboundRealTimePaymentsTransfer::Status::TaggedSymbol)

        # The transfer has been declined.
        DECLINED = T.let(:declined, Increase::Models::InboundRealTimePaymentsTransfer::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::InboundRealTimePaymentsTransfer::Status::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/inbound_real_time_payments_transfer/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundRealTimePaymentsTransfer::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::InboundRealTimePaymentsTransfer::Type::TaggedSymbol) }

        INBOUND_REAL_TIME_PAYMENTS_TRANSFER =
          T.let(
            :inbound_real_time_payments_transfer,
            Increase::Models::InboundRealTimePaymentsTransfer::Type::TaggedSymbol
          )

        sig { override.returns(T::Array[Increase::Models::InboundRealTimePaymentsTransfer::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
