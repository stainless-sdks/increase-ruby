# frozen_string_literal: true

module Increase
  module Resources
    class Transactions
      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end

      # Retrieve a Transaction
      #
      # @param transaction_id [String] The identifier of the Transaction to retrieve.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Transaction]
      #
      def retrieve(transaction_id, opts = {})
        req = {
          method: :get,
          path: ["transactions/%0s", transaction_id],
          model: Increase::Models::Transaction
        }
        @client.request(req, opts)
      end

      # List Transactions
      #
      # @param params [Increase::Models::TransactionListParams, Hash{Symbol => Object}] Attributes to send in this request.
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
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::Transaction>]
      #
      def list(params = {}, opts = {})
        parsed = Increase::Models::TransactionListParams.dump(params)
        req = {
          method: :get,
          path: "transactions",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::Transaction
        }
        @client.request(req, opts)
      end
    end
  end
end
