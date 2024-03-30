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
        request = {}
        request[:method] = :post
        request[:path] = "/account_transfers"
        body_params = [:account_id, :amount, :description, :destination_account_id, :require_approval]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::AccountTransfer
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve an Account Transfer
      #
      # @param account_transfer_id [String] The identifier of the Account Transfer.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountTransfer]
      def retrieve(account_transfer_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/account_transfers/#{account_transfer_id}"
        request[:model] = Increase::Models::AccountTransfer
        request.merge!(opts)
        @client.request(request)
      end

      # Approve an Account Transfer
      #
      # @param account_transfer_id [String] The identifier of the Account Transfer to approve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountTransfer]
      def approve(account_transfer_id, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/account_transfers/#{account_transfer_id}/approve"
        request[:model] = Increase::Models::AccountTransfer
        request.merge!(opts)
        @client.request(request)
      end

      # Cancel an Account Transfer
      #
      # @param account_transfer_id [String] The identifier of the pending Account Transfer to cancel.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountTransfer]
      def cancel(account_transfer_id, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/account_transfers/#{account_transfer_id}/cancel"
        request[:model] = Increase::Models::AccountTransfer
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
