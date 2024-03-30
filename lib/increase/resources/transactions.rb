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
    end
  end
end
