# frozen_string_literal: true

module Increase
  module Resources
    class InboundWireDrawdownRequestsResource
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

      # List Inbound Wire Drawdown Requests
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundWireDrawdownRequest]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/inbound_wire_drawdown_requests"
        query_params = [:cursor, :limit]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::InboundWireDrawdownRequest
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
