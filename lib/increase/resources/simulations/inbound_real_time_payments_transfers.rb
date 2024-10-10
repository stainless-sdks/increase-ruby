# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundRealTimePaymentsTransfers
        # @param client [Increase::Client]
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
        # @option params [String, nil] :debtor_account_number The account number of the account that sent the transfer.
        # @option params [String, nil] :debtor_name The name provided by the sender of the transfer.
        # @option params [String, nil] :debtor_routing_number The routing number of the account that sent the transfer.
        # @option params [String, nil] :remittance_information Additional information included with the transfer.
        # @option params [String, nil] :request_for_payment_id The identifier of a pending Request for Payment that this transfer will fulfill.
        #
        # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::InboundRealTimePaymentsTransfer]
        def create(params = {}, opts = {})
          req = {
            method: :post,
            path: "/simulations/inbound_real_time_payments_transfers",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: Increase::Models::InboundRealTimePaymentsTransfer
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
