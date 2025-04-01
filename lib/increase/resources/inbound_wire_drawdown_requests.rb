# frozen_string_literal: true

module Increase
  module Resources
    class InboundWireDrawdownRequests
      # Retrieve an Inbound Wire Drawdown Request
      #
      # @param inbound_wire_drawdown_request_id [String] The identifier of the Inbound Wire Drawdown Request to retrieve.
      #
      # @param params [Increase::Models::InboundWireDrawdownRequestRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::InboundWireDrawdownRequest]
      def retrieve(inbound_wire_drawdown_request_id, params = {})
        @client.request(
          method: :get,
          path: ["inbound_wire_drawdown_requests/%0s", inbound_wire_drawdown_request_id],
          model: Increase::Models::InboundWireDrawdownRequest,
          options: params[:request_options]
        )
      end

      # List Inbound Wire Drawdown Requests
      #
      # @param params [Increase::Models::InboundWireDrawdownRequestListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::InboundWireDrawdownRequest>]
      def list(params = {})
        parsed, options = Increase::Models::InboundWireDrawdownRequestListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "inbound_wire_drawdown_requests",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::InboundWireDrawdownRequest,
          options: options
        )
      end

      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
