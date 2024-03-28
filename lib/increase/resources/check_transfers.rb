# frozen_string_literal: true

module Increase
  module Resources
    class CheckTransfersResource
      def initialize(client:)
        @client = client
      end

      # Create a Check Transfer
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id The identifier for the account that will send the transfer.
      # @option params [Integer] :amount The transfer amount in cents.
      # @option params [String] :source_account_number_id The identifier of the Account Number from which to send the transfer and print
      #   on the check.
      # @option params [Symbol] :fulfillment_method Whether Increase will print and mail the check or if you will do it yourself.
      # @option params [Hash] :physical_check Details relating to the physical check that Increase will print and mail. This
      #   is required if `fulfillment_method` is equal to `physical_check`. It must not be
      #   included if any other `fulfillment_method` is provided.
      # @option params [Boolean] :require_approval Whether the transfer requires explicit approval via the dashboard or API.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckTransfer]
      def create(params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/check_transfers"
        body_params = [
          :account_id,
          :amount,
          :source_account_number_id,
          :fulfillment_method,
          :physical_check,
          :require_approval
        ]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::CheckTransfer
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve a Check Transfer
      #
      # @param check_transfer_id [String] The identifier of the Check Transfer.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckTransfer]
      def retrieve(check_transfer_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/check_transfers/#{check_transfer_id}"
        request[:model] = Increase::Models::CheckTransfer
        request.merge!(opts)
        @client.request(request)
      end

      # List Check Transfers
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id Filter Check Transfers to those that originated from the specified Account.
      # @option params [Hash] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckTransfer]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/check_transfers"
        query_params = [:account_id, :created_at, :cursor, :idempotency_key, :limit]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::CheckTransfer
        request.merge!(opts)
        @client.request(request)
      end

      # Approve a Check Transfer
      #
      # @param check_transfer_id [String] The identifier of the Check Transfer to approve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckTransfer]
      def approve(check_transfer_id, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/check_transfers/#{check_transfer_id}/approve"
        request[:model] = Increase::Models::CheckTransfer
        request.merge!(opts)
        @client.request(request)
      end

      # Cancel a pending Check Transfer
      #
      # @param check_transfer_id [String] The identifier of the pending Check Transfer to cancel.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckTransfer]
      def cancel(check_transfer_id, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/check_transfers/#{check_transfer_id}/cancel"
        request[:model] = Increase::Models::CheckTransfer
        request.merge!(opts)
        @client.request(request)
      end

      # Request a stop payment on a Check Transfer
      #
      # @param check_transfer_id [String] The identifier of the Check Transfer.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol] :reason The reason why this transfer should be stopped.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckTransfer]
      def stop_payment(check_transfer_id, params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/check_transfers/#{check_transfer_id}/stop_payment"
        body_params = [:reason]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::CheckTransfer
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
