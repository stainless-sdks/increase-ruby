# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class WireTransfers
        def initialize(client:)
          @client = client
        end

        # Simulates the reversal of a [Wire Transfer](#wire-transfers) by the Federal
        #   Reserve due to error conditions. This will also create a
        #   [Transaction](#transaction) to account for the returned funds. This Wire
        #   Transfer must first have a `status` of `complete`.
        #
        # @param wire_transfer_id [String] The identifier of the Wire Transfer you wish to reverse.
        # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::WireTransfer]
        def reverse(wire_transfer_id, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/wire_transfers/#{wire_transfer_id}/reverse"
          req[:model] = Increase::Models::WireTransfer
          @client.request(req, opts)
        end

        # Simulates the submission of a [Wire Transfer](#wire-transfers) to the Federal
        #   Reserve. This transfer must first have a `status` of `pending_approval` or
        #   `pending_creating`.
        #
        # @param wire_transfer_id [String] The identifier of the Wire Transfer you wish to submit.
        # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::WireTransfer]
        def submit(wire_transfer_id, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/wire_transfers/#{wire_transfer_id}/submit"
          req[:model] = Increase::Models::WireTransfer
          @client.request(req, opts)
        end
      end
    end
  end
end
