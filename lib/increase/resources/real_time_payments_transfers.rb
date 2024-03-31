# frozen_string_literal: true

module Increase
  module Resources
    class RealTimePaymentsTransfers
      def initialize(client:)
        @client = client
      end

      # Create a Real-Time Payments Transfer
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Integer] :amount The transfer amount in USD cents. For Real-Time Payments transfers, must be
      #   positive.
      # @option params [String] :creditor_name The name of the transfer's recipient.
      # @option params [String] :remittance_information Unstructured information that will show on the recipient's bank statement.
      # @option params [String] :source_account_number_id The identifier of the Account Number from which to send the transfer.
      # @option params [String] :debtor_name The name of the transfer's sender. If not provided, the account's entity name
      #   will be used.
      # @option params [String] :destination_account_number The destination account number.
      # @option params [String] :destination_routing_number The destination American Bankers' Association (ABA) Routing Transit Number
      #   (RTN).
      # @option params [String] :external_account_id The ID of an External Account to initiate a transfer to. If this parameter is
      #   provided, `destination_account_number` and `destination_routing_number` must be
      #   absent.
      # @option params [Boolean] :require_approval Whether the transfer requires explicit approval via the dashboard or API.
      # @option params [String] :ultimate_creditor_name The name of the party on whose behalf the creditor is receiving the payment.
      # @option params [String] :ultimate_debtor_name The name of the the party on whose behalf the debtor is instructing the payment.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::RealTimePaymentsTransfer]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/real_time_payments_transfers"
        req[:body] = params
        req[:model] = Increase::Models::RealTimePaymentsTransfer
        @client.request(req, opts)
      end

      # Retrieve a Real-Time Payments Transfer
      #
      # @param real_time_payments_transfer_id [String] The identifier of the Real-Time Payments Transfer.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::RealTimePaymentsTransfer]
      def retrieve(real_time_payments_transfer_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/real_time_payments_transfers/#{real_time_payments_transfer_id}"
        req[:model] = Increase::Models::RealTimePaymentsTransfer
        @client.request(req, opts)
      end
    end
  end
end
