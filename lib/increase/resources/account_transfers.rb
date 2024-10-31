# frozen_string_literal: true

module Increase
  module Resources
    class AccountTransfers
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Create an Account Transfer
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :account_id The identifier for the account that will send the transfer.
      #   @option params [Integer] :amount The transfer amount in the minor unit of the account currency. For dollars, for
      #     example, this is cents.
      #   @option params [String] :description The description you choose to give the transfer.
      #   @option params [String] :destination_account_id The identifier for the account that will receive the transfer.
      #   @option params [Boolean, nil] :require_approval Whether the transfer requires explicit approval via the dashboard or API.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountTransfer]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/account_transfers",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::AccountTransfer
        }
        @client.request(req, opts)
      end

      # Retrieve an Account Transfer
      #
      # @param account_transfer_id [String] The identifier of the Account Transfer.
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountTransfer]
      def retrieve(account_transfer_id, opts = {})
        req = {
          method: :get,
          path: "/account_transfers/#{account_transfer_id}",
          model: Increase::Models::AccountTransfer
        }
        @client.request(req, opts)
      end

      # List Account Transfers
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :account_id Filter Account Transfers to those that originated from the specified Account.
      #   @option params [CreatedAt, nil] :created_at
      #   @option params [String, nil] :cursor Return the page of entries after this one.
      #   @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::AccountTransfer>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/account_transfers",
          query: params,
          page: Increase::Page,
          model: Increase::Models::AccountTransfer
        }
        @client.request(req, opts)
      end

      # Approve an Account Transfer
      #
      # @param account_transfer_id [String] The identifier of the Account Transfer to approve.
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountTransfer]
      def approve(account_transfer_id, opts = {})
        req = {
          method: :post,
          path: "/account_transfers/#{account_transfer_id}/approve",
          model: Increase::Models::AccountTransfer
        }
        @client.request(req, opts)
      end

      # Cancel an Account Transfer
      #
      # @param account_transfer_id [String] The identifier of the pending Account Transfer to cancel.
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountTransfer]
      def cancel(account_transfer_id, opts = {})
        req = {
          method: :post,
          path: "/account_transfers/#{account_transfer_id}/cancel",
          model: Increase::Models::AccountTransfer
        }
        @client.request(req, opts)
      end
    end
  end
end
