# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class RealTimePaymentsTransfers
        # Simulates submission of a
        #   [Real-Time Payments Transfer](#real-time-payments-transfers) and handling the
        #   response from the destination financial institution. This transfer must first
        #   have a `status` of `pending_submission`.
        #
        # @param real_time_payments_transfer_id [String] The identifier of the Real-Time Payments Transfer you wish to complete.
        #
        # @param params [Increase::Models::Simulations::RealTimePaymentsTransferCompleteParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Increase::Models::Simulations::RealTimePaymentsTransferCompleteParams::Rejection] :rejection If set, the simulation will reject the transfer.
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Increase::Models::RealTimePaymentsTransfer]
        def complete(real_time_payments_transfer_id, params = {})
          parsed, options =
            Increase::Models::Simulations::RealTimePaymentsTransferCompleteParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["simulations/real_time_payments_transfers/%0s/complete", real_time_payments_transfer_id],
            body: parsed,
            model: Increase::Models::RealTimePaymentsTransfer,
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
