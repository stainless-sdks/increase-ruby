# frozen_string_literal: true

module Increase
  module Resources
    class DeclinedTransactions
      # Retrieve a Declined Transaction
      #
      # @param declined_transaction_id [String] The identifier of the Declined Transaction.
      #
      # @param params [Increase::Models::DeclinedTransactionRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::DeclinedTransaction]
      #
      def retrieve(declined_transaction_id, params = {})
        @client.request(
          method: :get,
          path: ["declined_transactions/%0s", declined_transaction_id],
          model: Increase::Models::DeclinedTransaction,
          options: params[:request_options]
        )
      end

      # List Declined Transactions
      #
      # @param params [Increase::Models::DeclinedTransactionListParams, Hash{Symbol=>Object}] .
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
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::DeclinedTransaction>]
      #
      def list(params = {})
        parsed, options = Increase::Models::DeclinedTransactionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "declined_transactions",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::DeclinedTransaction,
          options: options
        )
      end

      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
