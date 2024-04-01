# frozen_string_literal: true

module Increase
  module Resources
    class InboundWireDrawdownRequests
      def initialize(client:)
        @client = client
      end

      # Retrieve an Inbound Wire Drawdown Request
      #
      # @param inbound_wire_drawdown_request_id [String] The identifier of the Inbound Wire Drawdown Request to retrieve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundWireDrawdownRequest]
      def retrieve(inbound_wire_drawdown_request_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/inbound_wire_drawdown_requests/#{inbound_wire_drawdown_request_id}"
        req[:model] = Increase::Models::InboundWireDrawdownRequest
        @client.request(req, opts)
      end
    end
  end
end
