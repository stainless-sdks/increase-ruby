# typed: strong

module Increase
  module Resources
    class Transactions
      sig do
        params(
          transaction_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::Transaction)
      end
      def retrieve(transaction_id, request_options: {})
      end

      sig do
        params(
          account_id: String,
          category: Increase::Models::TransactionListParams::Category,
          created_at: Increase::Models::TransactionListParams::CreatedAt,
          cursor: String,
          limit: Integer,
          route_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::Transaction])
      end
      def list(
        account_id: nil,
        category: nil,
        created_at: nil,
        cursor: nil,
        limit: nil,
        route_id: nil,
        request_options: {}
      )
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
