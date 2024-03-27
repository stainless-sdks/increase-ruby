# frozen_string_literal: true

module Increase
  module Resources
    class TransactionsResource
      def initialize(client:)
        @client = client
      end

      # Retrieve a Transaction
      #
      # @param transaction_id [String] The identifier of the Transaction to retrieve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Transaction]
      def retrieve(transaction_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/transactions/#{transaction_id}"
        request[:model] = Increase::Models::Transaction
        request.merge!(opts)
        @client.request(request)
      end

      # List Transactions
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id Filter Transactions for those belonging to the specified Account.
      # @option params [Hash] :category
      # @option params [Hash] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [String] :route_id Filter Transactions for those belonging to the specified route. This could be a
      #   Card ID or an Account Number ID.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Transaction]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/transactions"
        query_params = [:account_id, :category, :created_at, :cursor, :limit, :route_id]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::Transaction
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
