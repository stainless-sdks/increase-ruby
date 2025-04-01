# frozen_string_literal: true

module Increase
  module Resources
    class InboundACHTransfers
      # Retrieve an Inbound ACH Transfer
      #
      # @param inbound_ach_transfer_id [String] The identifier of the Inbound ACH Transfer to get details for.
      #
      # @param params [Increase::Models::InboundACHTransferRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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
      # @param params [Increase::Models::InboundACHTransferListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id Filter Inbound ACH Transfers to ones belonging to the specified Account.
      #
      #   @option params [String] :account_number_id Filter Inbound ACH Transfers to ones belonging to the specified Account Number.
      #
      #   @option params [Increase::Models::InboundACHTransferListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::Models::InboundACHTransferListParams::Status] :status
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::InboundACHTransfer>]
      #
      # @see Increase::Models::InboundACHTransferListParams
      def list(params = {})
        parsed, options = Increase::Models::InboundACHTransferListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "inbound_ach_transfers",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::InboundACHTransfer,
          options: options
        )
      end

      # Create a notification of change for an Inbound ACH Transfer
      #
      # @param inbound_ach_transfer_id [String] The identifier of the Inbound ACH Transfer for which to create a notification of
      #   change.
      #
      # @param params [Increase::Models::InboundACHTransferCreateNotificationOfChangeParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :updated_account_number The updated account number to send in the notification of change.
      #
      #   @option params [String] :updated_routing_number The updated routing number to send in the notification of change.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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
      # @param inbound_ach_transfer_id [String] The identifier of the Inbound ACH Transfer to decline.
      #
      # @param params [Increase::Models::InboundACHTransferDeclineParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, Increase::Models::InboundACHTransferDeclineParams::Reason] :reason The reason why this transfer will be returned. If this parameter is unset, the
      #     return codes will be `payment_stopped` for debits and
      #     `credit_entry_refused_by_receiver` for credits.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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
      # @param inbound_ach_transfer_id [String] The identifier of the Inbound ACH Transfer to return to the originating
      #   financial institution.
      #
      # @param params [Increase::Models::InboundACHTransferTransferReturnParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, Increase::Models::InboundACHTransferTransferReturnParams::Reason] :reason The reason why this transfer will be returned. The most usual return codes are
      #     `payment_stopped` for debits and `credit_entry_refused_by_receiver` for credits.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
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
      end
    end
  end
end
