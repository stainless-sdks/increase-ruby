# frozen_string_literal: true

module Increase
  module Resources
    class DeclinedTransactions
      # @api private
      private def initialize_resources; end

      # Retrieve a Declined Transaction
      #
      # @overload retrieve(declined_transaction_id, request_options: {})
      #
      # @param declined_transaction_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::DeclinedTransaction]
      #
      # @see Increase::Models::DeclinedTransactionRetrieveParams
      def retrieve(declined_transaction_id, params = {})
        @client.request(
          method: :get,
          path: ["declined_transactions/%1$s", declined_transaction_id],
          model: Increase::Models::DeclinedTransaction,
          options: params[:request_options]
        )
      end

      # List Declined Transactions
      #
      # @overload list(account_id: nil, category: nil, created_at: nil, cursor: nil, limit: nil, route_id: nil, request_options: {})
      #
      # @param account_id [String]
      # @param category [Increase::Models::DeclinedTransactionListParams::Category]
      # @param created_at [Increase::Models::DeclinedTransactionListParams::CreatedAt]
      # @param cursor [String]
      # @param limit [Integer]
      # @param route_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::DeclinedTransaction>]
      #
      # @see Increase::Models::DeclinedTransactionListParams
      def list(params = {})
        parsed, options = Increase::Models::DeclinedTransactionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "declined_transactions",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::DeclinedTransaction,
          options: options
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
        initialize_resources
      end
    end
  end
end
