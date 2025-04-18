# frozen_string_literal: true

module Increase
  module Resources
    class InboundWireTransfers
      # @api private
      private def initialize_resources; end

      # Retrieve an Inbound Wire Transfer
      #
      # @overload retrieve(inbound_wire_transfer_id, request_options: {})
      #
      # @param inbound_wire_transfer_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::InboundWireTransfer]
      #
      # @see Increase::Models::InboundWireTransferRetrieveParams
      def retrieve(inbound_wire_transfer_id, params = {})
        @client.request(
          method: :get,
          path: ["inbound_wire_transfers/%1$s", inbound_wire_transfer_id],
          model: Increase::Models::InboundWireTransfer,
          options: params[:request_options]
        )
      end

      # List Inbound Wire Transfers
      #
      # @overload list(account_id: nil, account_number_id: nil, created_at: nil, cursor: nil, limit: nil, status: nil, request_options: {})
      #
      # @param account_id [String]
      # @param account_number_id [String]
      # @param created_at [Increase::Models::InboundWireTransferListParams::CreatedAt]
      # @param cursor [String]
      # @param limit [Integer]
      # @param status [Increase::Models::InboundWireTransferListParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::InboundWireTransfer>]
      #
      # @see Increase::Models::InboundWireTransferListParams
      def list(params = {})
        parsed, options = Increase::Models::InboundWireTransferListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "inbound_wire_transfers",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::InboundWireTransfer,
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
