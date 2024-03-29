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
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::DeclinedTransaction]
      def retrieve(declined_transaction_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/declined_transactions/#{declined_transaction_id}"
        request[:model] = Increase::Models::DeclinedTransaction
        request.merge!(opts)
        @client.request(request)
      end

      # List Declined Transactions
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id Filter Declined Transactions to ones belonging to the specified Account.
      # @option params [Hash] :category
      # @option params [Hash] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [String] :route_id Filter Declined Transactions to those belonging to the specified route.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::DeclinedTransaction]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/declined_transactions"
        query_params = [:account_id, :category, :created_at, :cursor, :limit, :route_id]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::DeclinedTransaction
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
