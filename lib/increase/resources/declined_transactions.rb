# frozen_string_literal: true

module Increase
  module Resources
    class DeclinedTransactions
      # Retrieve a Declined Transaction
      #
      # @param declined_transaction_id [String] The identifier of the Declined Transaction.
      #
      # @param opts [Hash{Symbol=>Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::DeclinedTransaction]
      #
      def retrieve(declined_transaction_id, opts = {})
        req = {
          method: :get,
          path: ["declined_transactions/%0s", declined_transaction_id],
          model: Increase::Models::DeclinedTransaction
        }
        @client.request(req, opts)
      end

      # List Declined Transactions
      #
      # @param params [Increase::Models::DeclinedTransactionListParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [String] :account_id Filter Declined Transactions to ones belonging to the specified Account.
      #
      #   @option params [Increase::Models::DeclinedTransactionListParams::Category] :category
      #
      #   @option params [Increase::Models::DeclinedTransactionListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [String] :route_id Filter Declined Transactions to those belonging to the specified route.
      #
      # @param opts [Hash{Symbol=>Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::DeclinedTransaction>]
      #
      def list(params = {}, opts = {})
        parsed = Increase::Models::DeclinedTransactionListParams.dump(params)
        req = {
          method: :get,
          path: "declined_transactions",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::DeclinedTransaction
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
