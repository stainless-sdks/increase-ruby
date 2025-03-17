# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundFundsHolds
        # This endpoint simulates immediately releasing an Inbound Funds Hold, which might
        #   be created as a result of e.g., an ACH debit.
        #
        # @param inbound_funds_hold_id [String] The inbound funds hold to release.
        #
        # @param params [Increase::Models::Simulations::InboundFundsHoldReleaseParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Increase::Models::Simulations::InboundFundsHoldReleaseResponse]
        #
        def release(inbound_funds_hold_id, params = {})
          @client.request(
            method: :post,
            path: ["simulations/inbound_funds_holds/%0s/release", inbound_funds_hold_id],
            model: Increase::Models::Simulations::InboundFundsHoldReleaseResponse,
            options: params[:request_options]
          )
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
