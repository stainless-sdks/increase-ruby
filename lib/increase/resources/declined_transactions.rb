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
    end
  end
end
