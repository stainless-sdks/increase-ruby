# frozen_string_literal: true

module Increase
  module Resources
    class CheckTransfers
      # Create a Check Transfer
      #
      # @overload create(account_id:, amount:, fulfillment_method:, source_account_number_id:, physical_check: nil, require_approval: nil, third_party: nil, request_options: {})
      #
      # @param account_id [String]
      # @param amount [Integer]
      # @param fulfillment_method [Symbol, Increase::Models::CheckTransferCreateParams::FulfillmentMethod]
      # @param source_account_number_id [String]
      # @param physical_check [Increase::Models::CheckTransferCreateParams::PhysicalCheck]
      # @param require_approval [Boolean]
      # @param third_party [Increase::Models::CheckTransferCreateParams::ThirdParty]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::CheckTransfer]
      #
      # @see Increase::Models::CheckTransferCreateParams
      def create(params)
        parsed, options = Increase::Models::CheckTransferCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "check_transfers",
          body: parsed,
          model: Increase::Models::CheckTransfer,
          options: options
        )
      end

      # Retrieve a Check Transfer
      #
      # @overload retrieve(check_transfer_id, request_options: {})
      #
      # @param check_transfer_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::CheckTransfer]
      #
      # @see Increase::Models::CheckTransferRetrieveParams
      def retrieve(check_transfer_id, params = {})
        @client.request(
          method: :get,
          path: ["check_transfers/%1$s", check_transfer_id],
          model: Increase::Models::CheckTransfer,
          options: params[:request_options]
        )
      end

      # List Check Transfers
      #
      # @overload list(account_id: nil, created_at: nil, cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      #
      # @param account_id [String]
      # @param created_at [Increase::Models::CheckTransferListParams::CreatedAt]
      # @param cursor [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param status [Increase::Models::CheckTransferListParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Page<Increase::Models::CheckTransfer>]
      #
      # @see Increase::Models::CheckTransferListParams
      def list(params = {})
        parsed, options = Increase::Models::CheckTransferListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "check_transfers",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::CheckTransfer,
          options: options
        )
      end

      # Approve a Check Transfer
      #
      # @overload approve(check_transfer_id, request_options: {})
      #
      # @param check_transfer_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::CheckTransfer]
      #
      # @see Increase::Models::CheckTransferApproveParams
      def approve(check_transfer_id, params = {})
        @client.request(
          method: :post,
          path: ["check_transfers/%1$s/approve", check_transfer_id],
          model: Increase::Models::CheckTransfer,
          options: params[:request_options]
        )
      end

      # Cancel a pending Check Transfer
      #
      # @overload cancel(check_transfer_id, request_options: {})
      #
      # @param check_transfer_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::CheckTransfer]
      #
      # @see Increase::Models::CheckTransferCancelParams
      def cancel(check_transfer_id, params = {})
        @client.request(
          method: :post,
          path: ["check_transfers/%1$s/cancel", check_transfer_id],
          model: Increase::Models::CheckTransfer,
          options: params[:request_options]
        )
      end

      # Request a stop payment on a Check Transfer
      #
      # @overload stop_payment(check_transfer_id, reason: nil, request_options: {})
      #
      # @param check_transfer_id [String]
      # @param reason [Symbol, Increase::Models::CheckTransferStopPaymentParams::Reason]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::CheckTransfer]
      #
      # @see Increase::Models::CheckTransferStopPaymentParams
      def stop_payment(check_transfer_id, params = {})
        parsed, options = Increase::Models::CheckTransferStopPaymentParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["check_transfers/%1$s/stop_payment", check_transfer_id],
          body: parsed,
          model: Increase::Models::CheckTransfer,
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
