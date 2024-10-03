# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class RealTimePaymentsTransfers
        def initialize(client:)
          @client = client
        end

        # Simulates submission of a Real-Time Payments transfer and handling the response
        #   from the destination financial institution. This transfer must first have a
        #   `status` of `pending_submission`.
        #
        # @param real_time_payments_transfer_id [String] The identifier of the Real-Time Payments Transfer you wish to complete.
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [Rejection, nil] :rejection If set, the simulation will reject the transfer.
        #
        # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::RealTimePaymentsTransfer]
        def complete(real_time_payments_transfer_id, params = {}, opts = {})
          req = {
            method: :post,
            path: "/simulations/real_time_payments_transfers/#{real_time_payments_transfer_id}/complete",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: Increase::Models::RealTimePaymentsTransfer
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
