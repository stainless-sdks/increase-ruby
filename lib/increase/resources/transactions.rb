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
        req = {}
        req[:method] = :get
        req[:path] = "/transactions/#{transaction_id}"
        req[:model] = Increase::Models::Transaction
        @client.request(req, opts)
      end
    end
  end
end
