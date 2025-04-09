# typed: strong

module Increase
  module Resources
    class PendingTransactions
      # Retrieve a Pending Transaction
      sig do
        params(
          pending_transaction_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::PendingTransaction)
      end
      def retrieve(
        # #/paths//pending_transactions/{pending_transaction_id}/get/parameters/0/schema
        pending_transaction_id,
        request_options: {}
      ); end
      # List Pending Transactions
      sig do
        params(
          account_id: String,
          category: T.any(Increase::Models::PendingTransactionListParams::Category, Increase::Internal::AnyHash),
          created_at: T.any(Increase::Models::PendingTransactionListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          limit: Integer,
          route_id: String,
          status: T.any(Increase::Models::PendingTransactionListParams::Status, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::PendingTransaction])
      end
      def list(
        # #/paths//pending_transactions/get/parameters/2/schema
        account_id: nil,
        category: nil,
        created_at: nil,
        # #/paths//pending_transactions/get/parameters/0/schema
        cursor: nil,
        # #/paths//pending_transactions/get/parameters/1/schema
        limit: nil,
        # #/paths//pending_transactions/get/parameters/3/schema
        route_id: nil,
        status: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
