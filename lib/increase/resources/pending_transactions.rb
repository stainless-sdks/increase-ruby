# frozen_string_literal: true

module Increase
  module Resources
    class PendingTransactions
      # Retrieve a Pending Transaction
      #
      # @overload retrieve(pending_transaction_id, request_options: {})
      #
      # @param pending_transaction_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::PendingTransaction]
      #
      # @see Increase::Models::PendingTransactionRetrieveParams
      def retrieve(pending_transaction_id, params = {})
        @client.request(
          method: :get,
          path: ["pending_transactions/%1$s", pending_transaction_id],
          model: Increase::Models::PendingTransaction,
          options: params[:request_options]
        )
      end

      # List Pending Transactions
      #
      # @overload list(account_id: nil, category: nil, created_at: nil, cursor: nil, limit: nil, route_id: nil, status: nil, request_options: {})
      #
      # @param account_id [String]
      # @param category [Increase::Models::PendingTransactionListParams::Category]
      # @param created_at [Increase::Models::PendingTransactionListParams::CreatedAt]
      # @param cursor [String]
      # @param limit [Integer]
      # @param route_id [String]
      # @param status [Increase::Models::PendingTransactionListParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Page<Increase::Models::PendingTransaction>]
      #
      # @see Increase::Models::PendingTransactionListParams
      def list(params = {})
        parsed, options = Increase::Models::PendingTransactionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "pending_transactions",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::PendingTransaction,
          options: options
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
