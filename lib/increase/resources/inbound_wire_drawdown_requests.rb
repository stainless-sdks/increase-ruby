# frozen_string_literal: true

module Increase
  module Resources
    class InboundWireDrawdownRequests
      # Retrieve an Inbound Wire Drawdown Request
      #
      # @param inbound_wire_drawdown_request_id [String] The identifier of the Inbound Wire Drawdown Request to retrieve.
      #
      # @param opts [Hash{Symbol=>Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundWireDrawdownRequest]
      #
      def retrieve(inbound_wire_drawdown_request_id, opts = {})
        req = {
          method: :get,
          path: ["inbound_wire_drawdown_requests/%0s", inbound_wire_drawdown_request_id],
          model: Increase::Models::InboundWireDrawdownRequest
        }
        @client.request(req, opts)
      end

      # List Inbound Wire Drawdown Requests
      #
      # @param params [Increase::Models::InboundWireDrawdownRequestListParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      # @param opts [Hash{Symbol=>Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::InboundWireDrawdownRequest>]
      #
      def list(params = {}, opts = {})
        parsed = Increase::Models::InboundWireDrawdownRequestListParams.dump(params)
        req = {
          method: :get,
          path: "inbound_wire_drawdown_requests",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::InboundWireDrawdownRequest
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
