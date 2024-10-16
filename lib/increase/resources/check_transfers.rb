# frozen_string_literal: true

module Increase
  module Resources
    class CheckTransfers
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Create a Check Transfer
      #
      # @param params [Hash] Attributes to send in this request.
      #   @option params [String] :account_id The identifier for the account that will send the transfer.
      #   @option params [Integer] :amount The transfer amount in USD cents.
      #   @option params [String] :source_account_number_id The identifier of the Account Number from which to send the transfer and print
      #     on the check.
      #   @option params [Symbol, FulfillmentMethod, nil] :fulfillment_method Whether Increase will print and mail the check or if you will do it yourself.
      #   @option params [PhysicalCheck, nil] :physical_check Details relating to the physical check that Increase will print and mail. This
      #     is required if `fulfillment_method` is equal to `physical_check`. It must not be
      #     included if any other `fulfillment_method` is provided.
      #   @option params [Boolean, nil] :require_approval Whether the transfer requires explicit approval via the dashboard or API.
      #   @option params [ThirdParty, nil] :third_party Details relating to the custom fulfillment you will perform. This is required if
      #     `fulfillment_method` is equal to `third_party`. It must not be included if any
      #     other `fulfillment_method` is provided.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckTransfer]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/check_transfers",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::CheckTransfer
        }
        @client.request(req, opts)
      end

      # Retrieve a Check Transfer
      #
      # @param check_transfer_id [String] The identifier of the Check Transfer.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckTransfer]
      def retrieve(check_transfer_id, opts = {})
        req = {
          method: :get,
          path: "/check_transfers/#{check_transfer_id}",
          model: Increase::Models::CheckTransfer
        }
        @client.request(req, opts)
      end

      # List Check Transfers
      #
      # @param params [Hash] Attributes to send in this request.
      #   @option params [String, nil] :account_id Filter Check Transfers to those that originated from the specified Account.
      #   @option params [CreatedAt, nil] :created_at
      #   @option params [String, nil] :cursor Return the page of entries after this one.
      #   @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::CheckTransfer>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/check_transfers",
          query: params,
          page: Increase::Page,
          model: Increase::Models::CheckTransfer
        }
        @client.request(req, opts)
      end

      # Approve a Check Transfer
      #
      # @param check_transfer_id [String] The identifier of the Check Transfer to approve.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckTransfer]
      def approve(check_transfer_id, opts = {})
        req = {
          method: :post,
          path: "/check_transfers/#{check_transfer_id}/approve",
          model: Increase::Models::CheckTransfer
        }
        @client.request(req, opts)
      end

      # Cancel a pending Check Transfer
      #
      # @param check_transfer_id [String] The identifier of the pending Check Transfer to cancel.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckTransfer]
      def cancel(check_transfer_id, opts = {})
        req = {
          method: :post,
          path: "/check_transfers/#{check_transfer_id}/cancel",
          model: Increase::Models::CheckTransfer
        }
        @client.request(req, opts)
      end

      # Request a stop payment on a Check Transfer
      #
      # @param check_transfer_id [String] The identifier of the Check Transfer.
      #
      # @param params [Hash] Attributes to send in this request.
      #   @option params [Symbol, Reason, nil] :reason The reason why this transfer should be stopped.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckTransfer]
      def stop_payment(check_transfer_id, params = {}, opts = {})
        req = {
          method: :post,
          path: "/check_transfers/#{check_transfer_id}/stop_payment",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::CheckTransfer
        }
        @client.request(req, opts)
      end
    end
  end
end
