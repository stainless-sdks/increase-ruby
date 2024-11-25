# frozen_string_literal: true

module Increase
  module Resources
    class InboundWireTransfers
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Retrieve an Inbound Wire Transfer
      #
      # @param inbound_wire_transfer_id [String] The identifier of the Inbound Wire Transfer to get details for.
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundWireTransfer]
      def retrieve(inbound_wire_transfer_id, opts = {})
        req = {
          method: :get,
          path: "/inbound_wire_transfers/#{inbound_wire_transfer_id}",
          model: Increase::Models::InboundWireTransfer
        }
        @client.request(req, opts)
      end

      # List Inbound Wire Transfers
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :account_id Filter Inbound Wire Tranfers to ones belonging to the specified Account.
      #   @option params [String, nil] :account_number_id Filter Inbound Wire Tranfers to ones belonging to the specified Account Number.
      #   @option params [Increase::Models::InboundWireTransferListParams::CreatedAt, nil] :created_at
      #   @option params [String, nil] :cursor Return the page of entries after this one.
      #   @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #   @option params [Symbol, Increase::Models::InboundWireTransferListParams::Status, nil] :status Filter Inbound Wire Transfers to those with the specified status.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::InboundWireTransfer>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/inbound_wire_transfers",
          query: params,
          page: Increase::Page,
          model: Increase::Models::InboundWireTransfer
        }
        @client.request(req, opts)
      end
    end
  end
end
