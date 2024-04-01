# frozen_string_literal: true

module Increase
  module Resources
    class AccountTransfers
      def initialize(client:)
        @client = client
      end

      # Create an Account Transfer
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id The identifier for the account that will send the transfer.
      # @option params [Integer] :amount The transfer amount in the minor unit of the account currency. For dollars, for
      #   example, this is cents.
      # @option params [String] :description The description you choose to give the transfer.
      # @option params [String] :destination_account_id The identifier for the account that will receive the transfer.
      # @option params [Boolean] :require_approval Whether the transfer requires explicit approval via the dashboard or API.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountTransfer]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/account_transfers"
        req[:body] = params
        req[:model] = Increase::Models::AccountTransfer
        @client.request(req, opts)
      end

      # Retrieve an Account Transfer
      #
      # @param account_transfer_id [String] The identifier of the Account Transfer.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountTransfer]
      def retrieve(account_transfer_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/account_transfers/#{account_transfer_id}"
        req[:model] = Increase::Models::AccountTransfer
        @client.request(req, opts)
      end

      # Approve an Account Transfer
      #
      # @param account_transfer_id [String] The identifier of the Account Transfer to approve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountTransfer]
      def approve(account_transfer_id, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/account_transfers/#{account_transfer_id}/approve"
        req[:model] = Increase::Models::AccountTransfer
        @client.request(req, opts)
      end

      # Cancel an Account Transfer
      #
      # @param account_transfer_id [String] The identifier of the pending Account Transfer to cancel.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountTransfer]
      def cancel(account_transfer_id, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/account_transfers/#{account_transfer_id}/cancel"
        req[:model] = Increase::Models::AccountTransfer
        @client.request(req, opts)
      end
    end
  end
end
