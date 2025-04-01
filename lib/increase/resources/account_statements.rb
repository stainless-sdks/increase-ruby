# frozen_string_literal: true

module Increase
  module Resources
    class AccountStatements
      # Retrieve an Account Statement
      #
      # @overload retrieve(account_statement_id, request_options: {})
      #
      # @param account_statement_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::AccountStatement]
      #
      # @see Increase::Models::AccountStatementRetrieveParams
      def retrieve(account_statement_id, params = {})
        @client.request(
          method: :get,
          path: ["account_statements/%1$s", account_statement_id],
          model: Increase::Models::AccountStatement,
          options: params[:request_options]
        )
      end

      # List Account Statements
      #
      # @overload list(account_id: nil, cursor: nil, limit: nil, statement_period_start: nil, request_options: {})
      #
      # @param account_id [String]
      # @param cursor [String]
      # @param limit [Integer]
      # @param statement_period_start [Increase::Models::AccountStatementListParams::StatementPeriodStart]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Page<Increase::Models::AccountStatement>]
      #
      # @see Increase::Models::AccountStatementListParams
      def list(params = {})
        parsed, options = Increase::Models::AccountStatementListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "account_statements",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::AccountStatement,
          options: options
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
