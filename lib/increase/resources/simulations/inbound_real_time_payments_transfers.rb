# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundRealTimePaymentsTransfers
        # Simulates an
        #   [Inbound Real-Time Payments Transfer](#inbound-real-time-payments-transfers) to
        #   your account. Real-Time Payments are a beta feature.
        #
        # @param params [Increase::Models::Simulations::InboundRealTimePaymentsTransferCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :account_number_id The identifier of the Account Number the inbound Real-Time Payments Transfer is
        #     for.
        #
        #   @option params [Integer] :amount The transfer amount in USD cents. Must be positive.
        #
        #   @option params [String] :debtor_account_number The account number of the account that sent the transfer.
        #
        #   @option params [String] :debtor_name The name provided by the sender of the transfer.
        #
        #   @option params [String] :debtor_routing_number The routing number of the account that sent the transfer.
        #
        #   @option params [String] :remittance_information Additional information included with the transfer.
        #
        #   @option params [String] :request_for_payment_id The identifier of a pending Request for Payment that this transfer will fulfill.
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Increase::Models::InboundRealTimePaymentsTransfer]
        def create(params)
          parsed, options = Increase::Models::Simulations::InboundRealTimePaymentsTransferCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "simulations/inbound_real_time_payments_transfers",
            body: parsed,
            model: Increase::Models::InboundRealTimePaymentsTransfer,
            options: options
          )
        end

        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
