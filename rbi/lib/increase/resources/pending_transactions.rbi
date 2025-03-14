# typed: strong

module Increase
  module Resources
    class PendingTransactions
      # Retrieve a Pending Transaction
      sig do
        params(
          pending_transaction_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::PendingTransaction)
      end
      def retrieve(
        # The identifier of the Pending Transaction.
        pending_transaction_id,
        request_options: {}
      )
      end

      # List Pending Transactions
      sig do
        params(
          account_id: String,
          category: Increase::Models::PendingTransactionListParams::Category,
          created_at: Increase::Models::PendingTransactionListParams::CreatedAt,
          cursor: String,
          limit: Integer,
          route_id: String,
          status: Increase::Models::PendingTransactionListParams::Status,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::PendingTransaction])
      end
      def list(
        # Filter pending transactions to those belonging to the specified Account.
        account_id: nil,
        category: nil,
        created_at: nil,
        # Return the page of entries after this one.
        cursor: nil,
        # Limit the size of the list that is returned. The default (and maximum) is 100
        #   objects.
        limit: nil,
        # Filter pending transactions to those belonging to the specified Route.
        route_id: nil,
        status: nil,
        request_options: {}
      )
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
