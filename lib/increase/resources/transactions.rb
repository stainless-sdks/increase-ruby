# frozen_string_literal: true

module Increase
  module Resources
    class Transactions
      def initialize(client:)
        @client = client
      end

      # Retrieve a Transaction
      #
      # @param transaction_id [String] The identifier of the Transaction to retrieve.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Transaction]
      def retrieve(transaction_id, opts = {})
        req = {
          method: :get,
          path: "/transactions/#{transaction_id}",
          model: Increase::Models::Transaction
        }
        @client.request(req, opts)
      end

      # List Transactions
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :account_id Filter Transactions for those belonging to the specified Account.
      # @option params [Category, nil] :category
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [String, nil] :route_id Filter Transactions for those belonging to the specified route. This could be a
      #   Card ID or an Account Number ID.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::Transaction>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/transactions",
          query: params,
          page: Increase::Page,
          model: Increase::Models::Transaction
        }
        @client.request(req, opts)
      end
    end
  end
end
