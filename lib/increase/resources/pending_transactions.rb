# frozen_string_literal: true

module Increase
  module Resources
    class PendingTransactions
      def initialize(client:)
        @client = client
      end

      # Retrieve a Pending Transaction
      # 
      # @param pending_transaction_id [String] The identifier of the Pending Transaction.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::PendingTransaction]
      def retrieve(pending_transaction_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/pending_transactions/#{pending_transaction_id}"
        req[:model] = Increase::Models::PendingTransaction
        @client.request(req, opts)
      end

      # List Pending Transactions
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id Filter pending transactions to those belonging to the specified Account.
      # @option params [Category] :category
      # @option params [CreatedAt] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [String] :route_id Filter pending transactions to those belonging to the specified Route.
      # @option params [String] :source_id Filter pending transactions to those caused by the specified source.
      # @option params [Status] :status
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Page<Increase::Models::PendingTransaction>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/pending_transactions"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::PendingTransaction
        @client.request(req, opts)
      end
    end
  end
end
