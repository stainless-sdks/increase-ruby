# frozen_string_literal: true

module Increase
  module Models
    class InboundRealTimePaymentsTransfer < BaseModel
      # @!attribute [rw] id
      #   The inbound Real-Time Payments transfer's identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The Account to which the transfer was sent.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] account_number_id
      #   The identifier of the Account Number to which this transfer was sent.
      #   @return [String]
      required :account_number_id, String

      # @!attribute [rw] amount
      #   The amount in USD cents.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] confirmation
      #   If your transfer is confirmed, this will contain details of the confirmation.
      #   @return [Increase::Models::InboundRealTimePaymentsTransfer::Confirmation]
      required :confirmation, -> { Increase::Models::InboundRealTimePaymentsTransfer::Confirmation }

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was created.
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] creditor_name
      #   The name the sender of the transfer specified as the recipient of the transfer.
      #   @return [String]
      required :creditor_name, String

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the transfer's currency. This will always be "USD" for a Real-Time Payments transfer.
      #   @return [Symbol, Increase::Models::InboundRealTimePaymentsTransfer::Currency]
      required :currency, enum: -> { Increase::Models::InboundRealTimePaymentsTransfer::Currency }

      # @!attribute [rw] debtor_account_number
      #   The account number of the account that sent the transfer.
      #   @return [String]
      required :debtor_account_number, String

      # @!attribute [rw] debtor_name
      #   The name provided by the sender of the transfer.
      #   @return [String]
      required :debtor_name, String

      # @!attribute [rw] debtor_routing_number
      #   The routing number of the account that sent the transfer.
      #   @return [String]
      required :debtor_routing_number, String

      # @!attribute [rw] decline
      #   If your transfer is declined, this will contain details of the decline.
      #   @return [Increase::Models::InboundRealTimePaymentsTransfer::Decline]
      required :decline, -> { Increase::Models::InboundRealTimePaymentsTransfer::Decline }

      # @!attribute [rw] remittance_information
      #   Additional information included with the transfer.
      #   @return [String]
      required :remittance_information, String

      # @!attribute [rw] status
      #   The lifecycle status of the transfer.
      #   @return [Symbol, Increase::Models::InboundRealTimePaymentsTransfer::Status]
      required :status, enum: -> { Increase::Models::InboundRealTimePaymentsTransfer::Status }

      # @!attribute [rw] transaction_identification
      #   The Real-Time Payments network identification of the transfer.
      #   @return [String]
      required :transaction_identification, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `inbound_real_time_payments_transfer`.
      #   @return [Symbol, Increase::Models::InboundRealTimePaymentsTransfer::Type]
      required :type, enum: -> { Increase::Models::InboundRealTimePaymentsTransfer::Type }

      class Confirmation < BaseModel
        # @!attribute [rw] confirmed_at
        #   The time at which the transfer was confirmed.
        #   @return [Time]
        required :confirmed_at, Time

        # @!attribute [rw] transaction_id
        #   The id of the transaction for the confirmed transfer.
        #   @return [String]
        required :transaction_id, String

        # Create a new instance of Confirmation from a Hash of raw data.
        #
        # @overload initialize(confirmed_at: nil, transaction_id: nil)
        # @param confirmed_at [String] The time at which the transfer was confirmed.
        # @param transaction_id [String] The id of the transaction for the confirmed transfer.
        def initialize(data = {})
          super
        end
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the transfer's currency. This will always be "USD" for a Real-Time Payments transfer.
      class Currency < Increase::Enum
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
      end

      class Decline < BaseModel
        # @!attribute [rw] declined_at
        #   The time at which the transfer was declined.
        #   @return [Time]
        required :declined_at, Time

        # @!attribute [rw] declined_transaction_id
        #   The id of the transaction for the declined transfer.
        #   @return [String]
        required :declined_transaction_id, String

        # @!attribute [rw] reason
        #   The reason for the transfer decline.
        #   @return [Symbol, Increase::Models::InboundRealTimePaymentsTransfer::Decline::Reason]
        required :reason, enum: -> { Increase::Models::InboundRealTimePaymentsTransfer::Decline::Reason }

        # The reason for the transfer decline.
        class Reason < Increase::Enum
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
        end

        # Create a new instance of Decline from a Hash of raw data.
        #
        # @overload initialize(declined_at: nil, declined_transaction_id: nil, reason: nil)
        # @param declined_at [String] The time at which the transfer was declined.
        # @param declined_transaction_id [String] The id of the transaction for the declined transfer.
        # @param reason [String] The reason for the transfer decline.
        def initialize(data = {})
          super
        end
      end

      # The lifecycle status of the transfer.
      class Status < Increase::Enum
        # The transfer is pending confirmation.
        PENDING_CONFIRMING = :pending_confirming

        # The transfer was not responded to in time.
        TIMED_OUT = :timed_out

        # The transfer has been received successfully and is confirmed.
        CONFIRMED = :confirmed

        # The transfer has been declined.
        DECLINED = :declined
      end

      # A constant representing the object's type. For this resource it will always be `inbound_real_time_payments_transfer`.
      class Type < Increase::Enum
        INBOUND_REAL_TIME_PAYMENTS_TRANSFER = :inbound_real_time_payments_transfer
      end

      # Create a new instance of InboundRealTimePaymentsTransfer from a Hash of raw
      #   data.
      #
      # @overload initialize(id: nil, account_id: nil, account_number_id: nil, amount: nil, confirmation: nil, created_at: nil, creditor_name: nil, currency: nil, debtor_account_number: nil, debtor_name: nil, debtor_routing_number: nil, decline: nil, remittance_information: nil, status: nil, transaction_identification: nil, type: nil)
      # @param id [String] The inbound Real-Time Payments transfer's identifier.
      # @param account_id [String] The Account to which the transfer was sent.
      # @param account_number_id [String] The identifier of the Account Number to which this transfer was sent.
      # @param amount [Integer] The amount in USD cents.
      # @param confirmation [Object] If your transfer is confirmed, this will contain details of the confirmation.
      # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the transfer was created.
      # @param creditor_name [String] The name the sender of the transfer specified as the recipient of the transfer.
      # @param currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the transfer's
      #   currency. This will always be "USD" for a Real-Time Payments transfer.
      # @param debtor_account_number [String] The account number of the account that sent the transfer.
      # @param debtor_name [String] The name provided by the sender of the transfer.
      # @param debtor_routing_number [String] The routing number of the account that sent the transfer.
      # @param decline [Object] If your transfer is declined, this will contain details of the decline.
      # @param remittance_information [String] Additional information included with the transfer.
      # @param status [String] The lifecycle status of the transfer.
      # @param transaction_identification [String] The Real-Time Payments network identification of the transfer.
      # @param type [String] A constant representing the object's type. For this resource it will always be
      #   `inbound_real_time_payments_transfer`.
      def initialize(data = {})
        super
      end
    end
  end
end
