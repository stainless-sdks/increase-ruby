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
        req = {}
        req[:method] = :get
        req[:path] = "/declined_transactions/#{declined_transaction_id}"
        req[:model] = Increase::Models::DeclinedTransaction
        @client.request(req, opts)
      end

      # List Declined Transactions
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id Filter Declined Transactions to ones belonging to the specified Account.
      # @option params [Category] :category
      # @option params [CreatedAt] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [String] :route_id Filter Declined Transactions to those belonging to the specified route.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Page<Increase::Models::DeclinedTransaction>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/declined_transactions"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::DeclinedTransaction
        @client.request(req, opts)
      end
    end
  end
end
