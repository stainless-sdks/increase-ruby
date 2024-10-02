# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundRealTimePaymentsTransfers
        def initialize(client:)
          @client = client
        end

        # Simulates an inbound Real-Time Payments transfer to your account. Real-Time
        #   Payments are a beta feature.
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :account_number_id The identifier of the Account Number the inbound Real-Time Payments Transfer is
        #   for.
        # @option params [Integer] :amount The transfer amount in USD cents. Must be positive.
        # @option params [String] :debtor_account_number The account number of the account that sent the transfer.
        # @option params [String] :debtor_name The name provided by the sender of the transfer.
        # @option params [String] :debtor_routing_number The routing number of the account that sent the transfer.
        # @option params [String] :remittance_information Additional information included with the transfer.
        # @option params [String] :request_for_payment_id The identifier of a pending Request for Payment that this transfer will fulfill.
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::InboundRealTimePaymentsTransfer]
        def create(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/inbound_real_time_payments_transfers"
          req[:body] = params
          req[:model] = Increase::Models::InboundRealTimePaymentsTransfer
          @client.request(req, opts)
        end
      end
    end
  end
end
