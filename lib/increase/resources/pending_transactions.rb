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
        request = {}
        request[:method] = :get
        request[:path] = "/pending_transactions/#{pending_transaction_id}"
        request[:model] = Increase::Models::PendingTransaction
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
