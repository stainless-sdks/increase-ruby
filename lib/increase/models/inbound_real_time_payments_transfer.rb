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

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] creditor_name
      #   The name the sender of the transfer specified as the recipient of the transfer.
      #   @return [String]
      required :creditor_name, String

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the transfer's currency. This will always be "USD" for a Real-Time Payments transfer.
      #   @return [Symbol]
      required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

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

      # @!attribute [rw] remittance_information
      #   Additional information included with the transfer.
      #   @return [String]
      required :remittance_information, String

      # @!attribute [rw] status
      #   The lifecycle status of the transfer.
      #   @return [Symbol]
      required :status, Increase::Enum.new(:pending_confirmation, :timed_out, :confirmed)

      # @!attribute [rw] transaction_identification
      #   The Real-Time Payments network identification of the transfer.
      #   @return [String]
      required :transaction_identification, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `inbound_real_time_payments_transfer`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:inbound_real_time_payments_transfer)
    end
  end
end