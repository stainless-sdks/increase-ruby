# frozen_string_literal: true

module Increase
  module Resources
    class PendingTransactions
      # Retrieve a Pending Transaction
      #
      # @param pending_transaction_id [String] The identifier of the Pending Transaction.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::PendingTransaction]
      #
      def retrieve(pending_transaction_id, opts = {})
        req = {
          method: :get,
          path: ["pending_transactions/%0s", pending_transaction_id],
          model: Increase::Models::PendingTransaction
        }
        @client.request(req, opts)
      end

      # List Pending Transactions
      #
      # @param params [Increase::Models::PendingTransactionListParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [String] :account_id Filter pending transactions to those belonging to the specified Account.
      #
      #   @option params [Increase::Models::PendingTransactionListParams::Category] :category
      #
      #   @option params [Increase::Models::PendingTransactionListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [String] :route_id Filter pending transactions to those belonging to the specified Route.
      #
      #   @option params [Increase::Models::PendingTransactionListParams::Status] :status
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::PendingTransaction>]
      #
      def list(params = {}, opts = {})
        parsed = Increase::Models::PendingTransactionListParams.dump(params)
        req = {
          method: :get,
          path: "pending_transactions",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::PendingTransaction
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
