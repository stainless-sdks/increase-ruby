# frozen_string_literal: true

module Increase
  module Resources
    module Simulations
      class InboundFundsHoldsResource
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
          request = {}
          request[:method] = :post
          request[:path] = "/simulations/inbound_funds_holds/#{inbound_funds_hold_id}/release"
          request[:model] = Increase::Models::InboundFundsHoldReleaseResponse
          request.merge!(opts)
          @client.request(request)
        end
      end
    end
  end
end
