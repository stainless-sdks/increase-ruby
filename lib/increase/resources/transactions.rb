# frozen_string_literal: true

module Increase
  module Resources
    class Transactions
      # @api private
      private def initialize_resources; end

      # Retrieve a Transaction
      #
      # @overload retrieve(transaction_id, request_options: {})
      #
      # @param transaction_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Transaction]
      #
      # @see Increase::Models::TransactionRetrieveParams
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
      # @overload list(account_id: nil, category: nil, created_at: nil, cursor: nil, limit: nil, route_id: nil, request_options: {})
      #
      # @param account_id [String]
      # @param category [Increase::Models::TransactionListParams::Category]
      # @param created_at [Increase::Models::TransactionListParams::CreatedAt]
      # @param cursor [String]
      # @param limit [Integer]
      # @param route_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::Transaction>]
      #
      # @see Increase::Models::TransactionListParams
      def list(params = {})
        parsed, options = Increase::Models::TransactionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "transactions",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::Transaction,
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
