# typed: strong

module Increase
  module Resources
    class AccountStatements
      sig do
        params(
          account_statement_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::AccountStatement)
      end
      def retrieve(account_statement_id, request_options: {})
      end

      sig do
        params(
          account_id: String,
          cursor: String,
          limit: Integer,
          statement_period_start: Increase::Models::AccountStatementListParams::StatementPeriodStart,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::AccountStatement])
      end
      def list(account_id: nil, cursor: nil, limit: nil, statement_period_start: nil, request_options: {})
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
