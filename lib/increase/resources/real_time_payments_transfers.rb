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
        request = {}
        request[:method] = :post
        request[:path] = "/real_time_payments_transfers"
        body_params = [
          :amount,
          :creditor_name,
          :remittance_information,
          :source_account_number_id,
          :debtor_name,
          :destination_account_number,
          :destination_routing_number,
          :external_account_id,
          :require_approval,
          :ultimate_creditor_name,
          :ultimate_debtor_name
        ]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::RealTimePaymentsTransfer
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve a Real-Time Payments Transfer
      #
      # @param real_time_payments_transfer_id [String] The identifier of the Real-Time Payments Transfer.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::RealTimePaymentsTransfer]
      def retrieve(real_time_payments_transfer_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/real_time_payments_transfers/#{real_time_payments_transfer_id}"
        request[:model] = Increase::Models::RealTimePaymentsTransfer
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
