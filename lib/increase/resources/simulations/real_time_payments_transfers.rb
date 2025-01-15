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
        # @param params [Increase::Models::Simulations::RealTimePaymentsTransferCompleteParams, Hash{Symbol => Object}] Attributes to send in this request.
        #
        #   @option params [Increase::Models::Simulations::RealTimePaymentsTransferCompleteParams::Rejection] :rejection If set, the simulation will reject the transfer.
        #
        # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::RealTimePaymentsTransfer]
        #
        def complete(real_time_payments_transfer_id, params = {}, opts = {})
          parsed = Increase::Models::Simulations::RealTimePaymentsTransferCompleteParams.dump(params)
          req = {
            method: :post,
            path: ["simulations/real_time_payments_transfers/%0s/complete", real_time_payments_transfer_id],
            body: parsed,
            model: Increase::Models::RealTimePaymentsTransfer
          }
          @client.request(req, opts)
        end

        # @param client [Increase::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
