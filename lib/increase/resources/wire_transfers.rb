# frozen_string_literal: true

module Increase
  module Resources
    class WireTransfers
      # Create a Wire Transfer
      #
      # @overload create(account_id:, amount:, beneficiary_name:, message_to_recipient:, account_number: nil, beneficiary_address_line1: nil, beneficiary_address_line2: nil, beneficiary_address_line3: nil, external_account_id: nil, originator_address_line1: nil, originator_address_line2: nil, originator_address_line3: nil, originator_name: nil, require_approval: nil, routing_number: nil, source_account_number_id: nil, request_options: {})
      #
      # @param account_id [String]
      # @param amount [Integer]
      # @param beneficiary_name [String]
      # @param message_to_recipient [String]
      # @param account_number [String]
      # @param beneficiary_address_line1 [String]
      # @param beneficiary_address_line2 [String]
      # @param beneficiary_address_line3 [String]
      # @param external_account_id [String]
      # @param originator_address_line1 [String]
      # @param originator_address_line2 [String]
      # @param originator_address_line3 [String]
      # @param originator_name [String]
      # @param require_approval [Boolean]
      # @param routing_number [String]
      # @param source_account_number_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::WireTransfer]
      #
      # @see Increase::Models::WireTransferCreateParams
      def create(params)
        parsed, options = Increase::Models::WireTransferCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "wire_transfers",
          body: parsed,
          model: Increase::Models::WireTransfer,
          options: options
        )
      end

      # Retrieve a Wire Transfer
      #
      # @overload retrieve(wire_transfer_id, request_options: {})
      #
      # @param wire_transfer_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::WireTransfer]
      #
      # @see Increase::Models::WireTransferRetrieveParams
      def retrieve(wire_transfer_id, params = {})
        @client.request(
          method: :get,
          path: ["wire_transfers/%1$s", wire_transfer_id],
          model: Increase::Models::WireTransfer,
          options: params[:request_options]
        )
      end

      # List Wire Transfers
      #
      # @overload list(account_id: nil, created_at: nil, cursor: nil, external_account_id: nil, idempotency_key: nil, limit: nil, request_options: {})
      #
      # @param account_id [String]
      # @param created_at [Increase::Models::WireTransferListParams::CreatedAt]
      # @param cursor [String]
      # @param external_account_id [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::WireTransfer>]
      #
      # @see Increase::Models::WireTransferListParams
      def list(params = {})
        parsed, options = Increase::Models::WireTransferListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "wire_transfers",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::WireTransfer,
          options: options
        )
      end

      # Approve a Wire Transfer
      #
      # @overload approve(wire_transfer_id, request_options: {})
      #
      # @param wire_transfer_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::WireTransfer]
      #
      # @see Increase::Models::WireTransferApproveParams
      def approve(wire_transfer_id, params = {})
        @client.request(
          method: :post,
          path: ["wire_transfers/%1$s/approve", wire_transfer_id],
          model: Increase::Models::WireTransfer,
          options: params[:request_options]
        )
      end

      # Cancel a pending Wire Transfer
      #
      # @overload cancel(wire_transfer_id, request_options: {})
      #
      # @param wire_transfer_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::WireTransfer]
      #
      # @see Increase::Models::WireTransferCancelParams
      def cancel(wire_transfer_id, params = {})
        @client.request(
          method: :post,
          path: ["wire_transfers/%1$s/cancel", wire_transfer_id],
          model: Increase::Models::WireTransfer,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
