# frozen_string_literal: true

module Increase
  module Resources
    class AccountTransfers
      # Create an Account Transfer
      #
      # @param params [Increase::Models::AccountTransferCreateParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [String] :account_id The identifier for the account that will send the transfer.
      #
      #   @option params [Integer] :amount The transfer amount in the minor unit of the account currency. For dollars, for
      #     example, this is cents.
      #
      #   @option params [String] :description The description you choose to give the transfer.
      #
      #   @option params [String] :destination_account_id The identifier for the account that will receive the transfer.
      #
      #   @option params [Boolean] :require_approval Whether the transfer requires explicit approval via the dashboard or API.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountTransfer]
      #
      def create(params = {}, opts = {})
        parsed = Increase::Models::AccountTransferCreateParams.dump(params)
        req = {
          method: :post,
          path: "account_transfers",
          body: parsed,
          model: Increase::Models::AccountTransfer
        }
        @client.request(req, opts)
      end

      # Retrieve an Account Transfer
      #
      # @param account_transfer_id [String] The identifier of the Account Transfer.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountTransfer]
      #
      def retrieve(account_transfer_id, opts = {})
        req = {
          method: :get,
          path: ["account_transfers/%0s", account_transfer_id],
          model: Increase::Models::AccountTransfer
        }
        @client.request(req, opts)
      end

      # List Account Transfers
      #
      # @param params [Increase::Models::AccountTransferListParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [String] :account_id Filter Account Transfers to those that originated from the specified Account.
      #
      #   @option params [Increase::Models::AccountTransferListParams::CreatedAt] :created_at
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
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::AccountTransfer>]
      #
      def list(params = {}, opts = {})
        parsed = Increase::Models::AccountTransferListParams.dump(params)
        req = {
          method: :get,
          path: "account_transfers",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::AccountTransfer
        }
        @client.request(req, opts)
      end

      # Approve an Account Transfer
      #
      # @param account_transfer_id [String] The identifier of the Account Transfer to approve.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountTransfer]
      #
      def approve(account_transfer_id, opts = {})
        req = {
          method: :post,
          path: ["account_transfers/%0s/approve", account_transfer_id],
          model: Increase::Models::AccountTransfer
        }
        @client.request(req, opts)
      end

      # Cancel an Account Transfer
      #
      # @param account_transfer_id [String] The identifier of the pending Account Transfer to cancel.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountTransfer]
      #
      def cancel(account_transfer_id, opts = {})
        req = {
          method: :post,
          path: ["account_transfers/%0s/cancel", account_transfer_id],
          model: Increase::Models::AccountTransfer
        }
        @client.request(req, opts)
      end

      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
