# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundFundsHolds
        # This endpoint simulates immediately releasing an Inbound Funds Hold, which might
        # be created as a result of e.g., an ACH debit.
        #
        # @overload release(inbound_funds_hold_id, request_options: {})
        #
        # @param inbound_funds_hold_id [String] The inbound funds hold to release.
        #
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Increase::Models::Simulations::InboundFundsHoldReleaseResponse]
        #
        # @see Increase::Models::Simulations::InboundFundsHoldReleaseParams
        def release(inbound_funds_hold_id, params = {})
          @client.request(
            method: :post,
            path: ["simulations/inbound_funds_holds/%1$s/release", inbound_funds_hold_id],
            model: Increase::Models::Simulations::InboundFundsHoldReleaseResponse,
            options: params[:request_options]
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
