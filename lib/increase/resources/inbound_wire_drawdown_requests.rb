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
        request = {}
        request[:method] = :get
        request[:path] = "/inbound_wire_drawdown_requests/#{inbound_wire_drawdown_request_id}"
        request[:model] = Increase::Models::InboundWireDrawdownRequest
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
