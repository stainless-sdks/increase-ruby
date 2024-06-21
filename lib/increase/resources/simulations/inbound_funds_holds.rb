# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InboundFundsHolds
        def initialize(client:)
          @client = client
        end

        # This endpoint simulates immediately releasing an inbound funds hold, which might
        #   be created as a result of e.g., an ACH debit.
        # 
        # @param inbound_funds_hold_id [String] The inbound funds hold to release.
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Models::InboundFundsHoldReleaseResponse]
        def release(inbound_funds_hold_id, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/inbound_funds_holds/#{inbound_funds_hold_id}/release"
          req[:model] = Increase::Models::InboundFundsHoldReleaseResponse
          @client.request(req, opts)
        end
      end
    end
  end
end
