# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::InboundRealTimePaymentsTransfers#retrieve
    class InboundRealTimePaymentsTransfer < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/inbound_real_time_payments_transfer/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   #/components/schemas/inbound_real_time_payments_transfer/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute account_number_id
      #   #/components/schemas/inbound_real_time_payments_transfer/properties/account_number_id
      #
      #   @return [String]
      required :account_number_id, String

      # @!attribute amount
      #   #/components/schemas/inbound_real_time_payments_transfer/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute confirmation
      #   #/components/schemas/inbound_real_time_payments_transfer/properties/confirmation
      #
      #   @return [Increase::Models::InboundRealTimePaymentsTransfer::Confirmation, nil]
      required :confirmation, -> { Increase::Models::InboundRealTimePaymentsTransfer::Confirmation }, nil?: true

      # @!attribute created_at
      #   #/components/schemas/inbound_real_time_payments_transfer/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute creditor_name
      #   #/components/schemas/inbound_real_time_payments_transfer/properties/creditor_name
      #
      #   @return [String]
      required :creditor_name, String

      # @!attribute currency
      #   #/components/schemas/inbound_real_time_payments_transfer/properties/currency
      #
      #   @return [Symbol, Increase::Models::InboundRealTimePaymentsTransfer::Currency]
      required :currency, enum: -> { Increase::Models::InboundRealTimePaymentsTransfer::Currency }

      # @!attribute debtor_account_number
      #   #/components/schemas/inbound_real_time_payments_transfer/properties/debtor_account_number
      #
      #   @return [String]
      required :debtor_account_number, String

      # @!attribute debtor_name
      #   #/components/schemas/inbound_real_time_payments_transfer/properties/debtor_name
      #
      #   @return [String]
      required :debtor_name, String

      # @!attribute debtor_routing_number
      #   #/components/schemas/inbound_real_time_payments_transfer/properties/debtor_routing_number
      #
      #   @return [String]
      required :debtor_routing_number, String

      # @!attribute decline
      #   #/components/schemas/inbound_real_time_payments_transfer/properties/decline
      #
      #   @return [Increase::Models::InboundRealTimePaymentsTransfer::Decline, nil]
      required :decline, -> { Increase::Models::InboundRealTimePaymentsTransfer::Decline }, nil?: true

      # @!attribute remittance_information
      #   #/components/schemas/inbound_real_time_payments_transfer/properties/remittance_information
      #
      #   @return [String, nil]
      required :remittance_information, String, nil?: true

      # @!attribute status
      #   #/components/schemas/inbound_real_time_payments_transfer/properties/status
      #
      #   @return [Symbol, Increase::Models::InboundRealTimePaymentsTransfer::Status]
      required :status, enum: -> { Increase::Models::InboundRealTimePaymentsTransfer::Status }

      # @!attribute transaction_identification
      #   #/components/schemas/inbound_real_time_payments_transfer/properties/transaction_identification
      #
      #   @return [String]
      required :transaction_identification, String

      # @!attribute type
      #   #/components/schemas/inbound_real_time_payments_transfer/properties/type
      #
      #   @return [Symbol, Increase::Models::InboundRealTimePaymentsTransfer::Type]
      required :type, enum: -> { Increase::Models::InboundRealTimePaymentsTransfer::Type }

      # @!parse
      #   # #/components/schemas/inbound_real_time_payments_transfer
      #   #
      #   # @param id [String]
      #   # @param account_id [String]
      #   # @param account_number_id [String]
      #   # @param amount [Integer]
      #   # @param confirmation [Increase::Models::InboundRealTimePaymentsTransfer::Confirmation, nil]
      #   # @param created_at [Time]
      #   # @param creditor_name [String]
      #   # @param currency [Symbol, Increase::Models::InboundRealTimePaymentsTransfer::Currency]
      #   # @param debtor_account_number [String]
      #   # @param debtor_name [String]
      #   # @param debtor_routing_number [String]
      #   # @param decline [Increase::Models::InboundRealTimePaymentsTransfer::Decline, nil]
      #   # @param remittance_information [String, nil]
      #   # @param status [Symbol, Increase::Models::InboundRealTimePaymentsTransfer::Status]
      #   # @param transaction_identification [String]
      #   # @param type [Symbol, Increase::Models::InboundRealTimePaymentsTransfer::Type]
      #   #
      #   def initialize(
      #     id:,
      #     account_id:,
      #     account_number_id:,
      #     amount:,
      #     confirmation:,
      #     created_at:,
      #     creditor_name:,
      #     currency:,
      #     debtor_account_number:,
      #     debtor_name:,
      #     debtor_routing_number:,
      #     decline:,
      #     remittance_information:,
      #     status:,
      #     transaction_identification:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # @see Increase::Models::InboundRealTimePaymentsTransfer#confirmation
      class Confirmation < Increase::Internal::Type::BaseModel
        # @!attribute confirmed_at
        #   #/components/schemas/inbound_real_time_payments_transfer/properties/confirmation/anyOf/0/properties/confirmed_at
        #
        #   @return [Time]
        required :confirmed_at, Time

        # @!attribute transaction_id
        #   #/components/schemas/inbound_real_time_payments_transfer/properties/confirmation/anyOf/0/properties/transaction_id
        #
        #   @return [String]
        required :transaction_id, String

        # @!parse
        #   # #/components/schemas/inbound_real_time_payments_transfer/properties/confirmation
        #   #
        #   # @param confirmed_at [Time]
        #   # @param transaction_id [String]
        #   #
        #   def initialize(confirmed_at:, transaction_id:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # #/components/schemas/inbound_real_time_payments_transfer/properties/currency
      #
      # @see Increase::Models::InboundRealTimePaymentsTransfer#currency
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

      # @see Increase::Models::InboundRealTimePaymentsTransfer#decline
      class Decline < Increase::Internal::Type::BaseModel
        # @!attribute declined_at
        #   #/components/schemas/inbound_real_time_payments_transfer/properties/decline/anyOf/0/properties/declined_at
        #
        #   @return [Time]
        required :declined_at, Time

        # @!attribute declined_transaction_id
        #   #/components/schemas/inbound_real_time_payments_transfer/properties/decline/anyOf/0/properties/declined_transaction_id
        #
        #   @return [String]
        required :declined_transaction_id, String

        # @!attribute reason
        #   #/components/schemas/inbound_real_time_payments_transfer/properties/decline/anyOf/0/properties/reason
        #
        #   @return [Symbol, Increase::Models::InboundRealTimePaymentsTransfer::Decline::Reason]
        required :reason, enum: -> { Increase::Models::InboundRealTimePaymentsTransfer::Decline::Reason }

        # @!parse
        #   # #/components/schemas/inbound_real_time_payments_transfer/properties/decline
        #   #
        #   # @param declined_at [Time]
        #   # @param declined_transaction_id [String]
        #   # @param reason [Symbol, Increase::Models::InboundRealTimePaymentsTransfer::Decline::Reason]
        #   #
        #   def initialize(declined_at:, declined_transaction_id:, reason:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/inbound_real_time_payments_transfer/properties/decline/anyOf/0/properties/reason
        #
        # @see Increase::Models::InboundRealTimePaymentsTransfer::Decline#reason
        module Reason
          extend Increase::Internal::Type::Enum

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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # #/components/schemas/inbound_real_time_payments_transfer/properties/status
      #
      # @see Increase::Models::InboundRealTimePaymentsTransfer#status
      module Status
        extend Increase::Internal::Type::Enum

        # The transfer is pending confirmation.
        PENDING_CONFIRMING = :pending_confirming

        # The transfer was not responded to in time.
        TIMED_OUT = :timed_out

        # The transfer has been received successfully and is confirmed.
        CONFIRMED = :confirmed

        # The transfer has been declined.
        DECLINED = :declined

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/inbound_real_time_payments_transfer/properties/type
      #
      # @see Increase::Models::InboundRealTimePaymentsTransfer#type
      module Type
        extend Increase::Internal::Type::Enum

        INBOUND_REAL_TIME_PAYMENTS_TRANSFER = :inbound_real_time_payments_transfer

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
