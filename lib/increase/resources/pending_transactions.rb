# frozen_string_literal: true

module Increase
  module Resources
    class PendingTransactions
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Retrieve a Pending Transaction
      #
      # @param pending_transaction_id [String] The identifier of the Pending Transaction.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::PendingTransaction]
      def retrieve(pending_transaction_id, opts = {})
        req = {
          method: :get,
          path: "/pending_transactions/#{pending_transaction_id}",
          model: Increase::Models::PendingTransaction
        }
        @client.request(req, opts)
      end

      # List Pending Transactions
      #
      # @param params [Hash] Attributes to send in this request.
      #   @option params [String, nil] :account_id Filter pending transactions to those belonging to the specified Account.
      #   @option params [Category, nil] :category
      #   @option params [CreatedAt, nil] :created_at
      #   @option params [String, nil] :cursor Return the page of entries after this one.
      #   @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #   @option params [String, nil] :route_id Filter pending transactions to those belonging to the specified Route.
      #   @option params [Status, nil] :status
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::PendingTransaction>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/pending_transactions",
          query: params,
          page: Increase::Page,
          model: Increase::Models::PendingTransaction
        }
        @client.request(req, opts)
      end
    end
  end
end
