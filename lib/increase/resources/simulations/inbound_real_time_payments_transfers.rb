# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundRealTimePaymentsTransfers
        # Simulates an
        # [Inbound Real-Time Payments Transfer](#inbound-real-time-payments-transfers) to
        # your account. Real-Time Payments are a beta feature.
        #
        # @overload create(account_number_id:, amount:, debtor_account_number: nil, debtor_name: nil, debtor_routing_number: nil, remittance_information: nil, request_for_payment_id: nil, request_options: {})
        #
        # @param account_number_id [String]
        # @param amount [Integer]
        # @param debtor_account_number [String]
        # @param debtor_name [String]
        # @param debtor_routing_number [String]
        # @param remittance_information [String]
        # @param request_for_payment_id [String]
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Increase::Models::InboundRealTimePaymentsTransfer]
        #
        # @see Increase::Models::Simulations::InboundRealTimePaymentsTransferCreateParams
        def create(params)
          parsed, options =
            Increase::Models::Simulations::InboundRealTimePaymentsTransferCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "simulations/inbound_real_time_payments_transfers",
            body: parsed,
            model: Increase::Models::InboundRealTimePaymentsTransfer,
            options: options
          )
        end

        # @api private
        #
        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
