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
    end
  end
end
