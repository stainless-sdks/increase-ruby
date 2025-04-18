# frozen_string_literal: true

module Increase
  module Resources
    class InboundACHTransfers
      # @api private
      private def initialize_resources; end

      # Retrieve an Inbound ACH Transfer
      #
      # @overload retrieve(inbound_ach_transfer_id, request_options: {})
      #
      # @param inbound_ach_transfer_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::InboundACHTransfer]
      #
      # @see Increase::Models::InboundACHTransferRetrieveParams
      def retrieve(inbound_ach_transfer_id, params = {})
        @client.request(
          method: :get,
          path: ["inbound_ach_transfers/%1$s", inbound_ach_transfer_id],
          model: Increase::Models::InboundACHTransfer,
          options: params[:request_options]
        )
      end

      # List Inbound ACH Transfers
      #
      # @overload list(account_id: nil, account_number_id: nil, created_at: nil, cursor: nil, limit: nil, status: nil, request_options: {})
      #
      # @param account_id [String]
      # @param account_number_id [String]
      # @param created_at [Increase::Models::InboundACHTransferListParams::CreatedAt]
      # @param cursor [String]
      # @param limit [Integer]
      # @param status [Increase::Models::InboundACHTransferListParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::InboundACHTransfer>]
      #
      # @see Increase::Models::InboundACHTransferListParams
      def list(params = {})
        parsed, options = Increase::Models::InboundACHTransferListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "inbound_ach_transfers",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::InboundACHTransfer,
          options: options
        )
      end

      # Create a notification of change for an Inbound ACH Transfer
      #
      # @overload create_notification_of_change(inbound_ach_transfer_id, updated_account_number: nil, updated_routing_number: nil, request_options: {})
      #
      # @param inbound_ach_transfer_id [String]
      # @param updated_account_number [String]
      # @param updated_routing_number [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::InboundACHTransfer]
      #
      # @see Increase::Models::InboundACHTransferCreateNotificationOfChangeParams
      def create_notification_of_change(inbound_ach_transfer_id, params = {})
        parsed, options =
          Increase::Models::InboundACHTransferCreateNotificationOfChangeParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["inbound_ach_transfers/%1$s/create_notification_of_change", inbound_ach_transfer_id],
          body: parsed,
          model: Increase::Models::InboundACHTransfer,
          options: options
        )
      end

      # Decline an Inbound ACH Transfer
      #
      # @overload decline(inbound_ach_transfer_id, reason: nil, request_options: {})
      #
      # @param inbound_ach_transfer_id [String]
      # @param reason [Symbol, Increase::Models::InboundACHTransferDeclineParams::Reason]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::InboundACHTransfer]
      #
      # @see Increase::Models::InboundACHTransferDeclineParams
      def decline(inbound_ach_transfer_id, params = {})
        parsed, options = Increase::Models::InboundACHTransferDeclineParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["inbound_ach_transfers/%1$s/decline", inbound_ach_transfer_id],
          body: parsed,
          model: Increase::Models::InboundACHTransfer,
          options: options
        )
      end

      # Return an Inbound ACH Transfer
      #
      # @overload transfer_return(inbound_ach_transfer_id, reason:, request_options: {})
      #
      # @param inbound_ach_transfer_id [String]
      # @param reason [Symbol, Increase::Models::InboundACHTransferTransferReturnParams::Reason]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::InboundACHTransfer]
      #
      # @see Increase::Models::InboundACHTransferTransferReturnParams
      def transfer_return(inbound_ach_transfer_id, params)
        parsed, options = Increase::Models::InboundACHTransferTransferReturnParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["inbound_ach_transfers/%1$s/transfer_return", inbound_ach_transfer_id],
          body: parsed,
          model: Increase::Models::InboundACHTransfer,
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
