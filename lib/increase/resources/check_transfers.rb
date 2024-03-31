# frozen_string_literal: true

module Increase
  module Resources
    class CheckTransfers
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
        req = {}
        req[:method] = :post
        req[:path] = "/check_transfers"
        req[:body] = params
        req[:model] = Increase::Models::CheckTransfer
        @client.request(req, opts)
      end

      # Retrieve a Check Transfer
      #
      # @param check_transfer_id [String] The identifier of the Check Transfer.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckTransfer]
      def retrieve(check_transfer_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/check_transfers/#{check_transfer_id}"
        req[:model] = Increase::Models::CheckTransfer
        @client.request(req, opts)
      end

      # Approve a Check Transfer
      #
      # @param check_transfer_id [String] The identifier of the Check Transfer to approve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckTransfer]
      def approve(check_transfer_id, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/check_transfers/#{check_transfer_id}/approve"
        req[:model] = Increase::Models::CheckTransfer
        @client.request(req, opts)
      end

      # Cancel a pending Check Transfer
      #
      # @param check_transfer_id [String] The identifier of the pending Check Transfer to cancel.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CheckTransfer]
      def cancel(check_transfer_id, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/check_transfers/#{check_transfer_id}/cancel"
        req[:model] = Increase::Models::CheckTransfer
        @client.request(req, opts)
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
        req = {}
        req[:method] = :post
        req[:path] = "/check_transfers/#{check_transfer_id}/stop_payment"
        req[:body] = params
        req[:model] = Increase::Models::CheckTransfer
        @client.request(req, opts)
      end
    end
  end
end
