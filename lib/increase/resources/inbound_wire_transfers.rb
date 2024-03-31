# frozen_string_literal: true

module Increase
  module Resources
    class InboundWireTransfers
      def initialize(client:)
        @client = client
      end

      # Retrieve an Inbound Wire Transfer
      #
      # @param inbound_wire_transfer_id [String] The identifier of the Inbound Wire Transfer to get details for.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundWireTransfer]
      def retrieve(inbound_wire_transfer_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/inbound_wire_transfers/#{inbound_wire_transfer_id}"
        req[:model] = Increase::Models::InboundWireTransfer
        @client.request(req, opts)
      end
    end
  end
end
