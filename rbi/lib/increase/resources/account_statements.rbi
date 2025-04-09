# typed: strong

module Increase
  module Resources
    class AccountStatements
      # Retrieve an Account Statement
      sig do
        params(
          account_statement_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::AccountStatement)
      end
      def retrieve(
        # #/paths//account_statements/{account_statement_id}/get/parameters/0/schema
        account_statement_id,
        request_options: {}
      ); end
      # List Account Statements
      sig do
        params(
          account_id: String,
          cursor: String,
          limit: Integer,
          statement_period_start: T.any(Increase::Models::AccountStatementListParams::StatementPeriodStart, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::AccountStatement])
      end
      def list(
        # #/paths//account_statements/get/parameters/2/schema
        account_id: nil,
        # #/paths//account_statements/get/parameters/0/schema
        cursor: nil,
        # #/paths//account_statements/get/parameters/1/schema
        limit: nil,
        statement_period_start: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
