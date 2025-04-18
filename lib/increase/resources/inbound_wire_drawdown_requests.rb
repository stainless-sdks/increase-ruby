# frozen_string_literal: true

module Increase
  module Resources
    class InboundWireDrawdownRequests
      # @api private
      private def initialize_resources; end

      # Retrieve an Inbound Wire Drawdown Request
      #
      # @overload retrieve(inbound_wire_drawdown_request_id, request_options: {})
      #
      # @param inbound_wire_drawdown_request_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::InboundWireDrawdownRequest]
      #
      # @see Increase::Models::InboundWireDrawdownRequestRetrieveParams
      def retrieve(inbound_wire_drawdown_request_id, params = {})
        @client.request(
          method: :get,
          path: ["inbound_wire_drawdown_requests/%1$s", inbound_wire_drawdown_request_id],
          model: Increase::Models::InboundWireDrawdownRequest,
          options: params[:request_options]
        )
      end

      # List Inbound Wire Drawdown Requests
      #
      # @overload list(cursor: nil, limit: nil, request_options: {})
      #
      # @param cursor [String]
      # @param limit [Integer]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::InboundWireDrawdownRequest>]
      #
      # @see Increase::Models::InboundWireDrawdownRequestListParams
      def list(params = {})
        parsed, options = Increase::Models::InboundWireDrawdownRequestListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "inbound_wire_drawdown_requests",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::InboundWireDrawdownRequest,
          options: options
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
        initialize_resources
      end
    end
  end
end
