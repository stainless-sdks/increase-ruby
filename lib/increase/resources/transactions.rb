# frozen_string_literal: true

module Increase
  module Resources
    class Transactions
      # Retrieve a Transaction
      #
      # @param transaction_id [String] The identifier of the Transaction to retrieve.
      #
      # @param params [Increase::Models::TransactionRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::Transaction]
      def retrieve(transaction_id, params = {})
        @client.request(
          method: :get,
          path: ["transactions/%1$s", transaction_id],
          model: Increase::Models::Transaction,
          options: params[:request_options]
        )
      end

      # List Transactions
      #
      # @param params [Increase::Models::TransactionListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id Filter Transactions for those belonging to the specified Account.
      #
      #   @option params [Increase::Models::TransactionListParams::Category] :category
      #
      #   @option params [Increase::Models::TransactionListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [String] :route_id Filter Transactions for those belonging to the specified route. This could be a
      #     Card ID or an Account Number ID.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::Transaction>]
      def list(params = {})
        parsed, options = Increase::Models::TransactionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "transactions",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::Transaction,
          options: options
        )
      end

      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
