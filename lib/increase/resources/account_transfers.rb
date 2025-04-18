# frozen_string_literal: true

module Increase
  module Resources
    class AccountTransfers
      # @api private
      private def initialize_resources; end

      # Create an Account Transfer
      #
      # @overload create(account_id:, amount:, description:, destination_account_id:, require_approval: nil, request_options: {})
      #
      # @param account_id [String]
      # @param amount [Integer]
      # @param description [String]
      # @param destination_account_id [String]
      # @param require_approval [Boolean]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::AccountTransfer]
      #
      # @see Increase::Models::AccountTransferCreateParams
      def create(params)
        parsed, options = Increase::Models::AccountTransferCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "account_transfers",
          body: parsed,
          model: Increase::Models::AccountTransfer,
          options: options
        )
      end

      # Retrieve an Account Transfer
      #
      # @overload retrieve(account_transfer_id, request_options: {})
      #
      # @param account_transfer_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::AccountTransfer]
      #
      # @see Increase::Models::AccountTransferRetrieveParams
      def retrieve(account_transfer_id, params = {})
        @client.request(
          method: :get,
          path: ["account_transfers/%1$s", account_transfer_id],
          model: Increase::Models::AccountTransfer,
          options: params[:request_options]
        )
      end

      # List Account Transfers
      #
      # @overload list(account_id: nil, created_at: nil, cursor: nil, idempotency_key: nil, limit: nil, request_options: {})
      #
      # @param account_id [String]
      # @param created_at [Increase::Models::AccountTransferListParams::CreatedAt]
      # @param cursor [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::AccountTransfer>]
      #
      # @see Increase::Models::AccountTransferListParams
      def list(params = {})
        parsed, options = Increase::Models::AccountTransferListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "account_transfers",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::AccountTransfer,
          options: options
        )
      end

      # Approve an Account Transfer
      #
      # @overload approve(account_transfer_id, request_options: {})
      #
      # @param account_transfer_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::AccountTransfer]
      #
      # @see Increase::Models::AccountTransferApproveParams
      def approve(account_transfer_id, params = {})
        @client.request(
          method: :post,
          path: ["account_transfers/%1$s/approve", account_transfer_id],
          model: Increase::Models::AccountTransfer,
          options: params[:request_options]
        )
      end

      # Cancel an Account Transfer
      #
      # @overload cancel(account_transfer_id, request_options: {})
      #
      # @param account_transfer_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::AccountTransfer]
      #
      # @see Increase::Models::AccountTransferCancelParams
      def cancel(account_transfer_id, params = {})
        @client.request(
          method: :post,
          path: ["account_transfers/%1$s/cancel", account_transfer_id],
          model: Increase::Models::AccountTransfer,
          options: params[:request_options]
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
