# typed: strong

module Increase
  module Resources
    class PendingTransactions
      sig do
        params(
            pending_transaction_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::PendingTransaction)
      end
      def retrieve(pending_transaction_id, request_options: {})
      end

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
        account_id: nil,
        category: nil,
        created_at: nil,
        cursor: nil,
        limit: nil,
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
