# frozen_string_literal: true

module Increase
  module Resources
    class InboundWireTransfers
      # Retrieve an Inbound Wire Transfer
      #
      # @param inbound_wire_transfer_id [String] The identifier of the Inbound Wire Transfer to get details for.
      #
      # @param params [Increase::Models::InboundWireTransferRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::InboundWireTransfer]
      def retrieve(inbound_wire_transfer_id, params = {})
        @client.request(
          method: :get,
          path: ["inbound_wire_transfers/%0s", inbound_wire_transfer_id],
          model: Increase::Models::InboundWireTransfer,
          options: params[:request_options]
        )
      end

      # List Inbound Wire Transfers
      #
      # @param params [Increase::Models::InboundWireTransferListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id Filter Inbound Wire Transfers to ones belonging to the specified Account.
      #
      #   @option params [String] :account_number_id Filter Inbound Wire Transfers to ones belonging to the specified Account Number.
      #
      #   @option params [Increase::Models::InboundWireTransferListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::Models::InboundWireTransferListParams::Status] :status
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::InboundWireTransfer>]
      def list(params = {})
        parsed, options = Increase::Models::InboundWireTransferListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "inbound_wire_transfers",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::InboundWireTransfer,
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
