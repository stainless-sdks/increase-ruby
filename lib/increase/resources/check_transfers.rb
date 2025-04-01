# frozen_string_literal: true

module Increase
  module Resources
    class CheckTransfers
      # Create a Check Transfer
      #
      # @param params [Increase::Models::CheckTransferCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id The identifier for the account that will send the transfer.
      #
      #   @option params [Integer] :amount The transfer amount in USD cents.
      #
      #   @option params [Symbol, Increase::Models::CheckTransferCreateParams::FulfillmentMethod] :fulfillment_method Whether Increase will print and mail the check or if you will do it yourself.
      #
      #   @option params [String] :source_account_number_id The identifier of the Account Number from which to send the transfer and print
      #     on the check.
      #
      #   @option params [Increase::Models::CheckTransferCreateParams::PhysicalCheck] :physical_check Details relating to the physical check that Increase will print and mail. This
      #     is required if `fulfillment_method` is equal to `physical_check`. It must not be
      #     included if any other `fulfillment_method` is provided.
      #
      #   @option params [Boolean] :require_approval Whether the transfer requires explicit approval via the dashboard or API.
      #
      #   @option params [Increase::Models::CheckTransferCreateParams::ThirdParty] :third_party Details relating to the custom fulfillment you will perform. This is required if
      #     `fulfillment_method` is equal to `third_party`. It must not be included if any
      #     other `fulfillment_method` is provided.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::CheckTransfer]
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
      # @param check_transfer_id [String] The identifier of the Check Transfer.
      #
      # @param params [Increase::Models::CheckTransferRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::CheckTransfer]
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
      # @param params [Increase::Models::CheckTransferListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id Filter Check Transfers to those that originated from the specified Account.
      #
      #   @option params [Increase::Models::CheckTransferListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::Models::CheckTransferListParams::Status] :status
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::CheckTransfer>]
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
      # @param check_transfer_id [String] The identifier of the Check Transfer to approve.
      #
      # @param params [Increase::Models::CheckTransferApproveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::CheckTransfer]
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
      # @param check_transfer_id [String] The identifier of the pending Check Transfer to cancel.
      #
      # @param params [Increase::Models::CheckTransferCancelParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::CheckTransfer]
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
      # @param check_transfer_id [String] The identifier of the Check Transfer.
      #
      # @param params [Increase::Models::CheckTransferStopPaymentParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, Increase::Models::CheckTransferStopPaymentParams::Reason] :reason The reason why this transfer should be stopped.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::CheckTransfer]
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

      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
