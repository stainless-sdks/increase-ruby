# frozen_string_literal: true

module Increase
  module Resources
    class DeclinedTransactions
      def initialize(client:)
        @client = client
      end

      # Retrieve a Declined Transaction
      #
      # @param declined_transaction_id [String] The identifier of the Declined Transaction.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::DeclinedTransaction]
      def retrieve(declined_transaction_id, opts = {})
        req = {
          method: :get,
          path: "/declined_transactions/#{declined_transaction_id}",
          model: Increase::Models::DeclinedTransaction
        }
        @client.request(req, opts)
      end

      # List Declined Transactions
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :account_id Filter Declined Transactions to ones belonging to the specified Account.
      # @option params [Category, nil] :category
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [String, nil] :route_id Filter Declined Transactions to those belonging to the specified route.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::DeclinedTransaction>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/declined_transactions",
          query: params,
          page: Increase::Page,
          model: Increase::Models::DeclinedTransaction
        }
        @client.request(req, opts)
      end
    end
  end
end
