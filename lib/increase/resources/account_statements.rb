# frozen_string_literal: true

module Increase
  module Resources
    class AccountStatements
      # Retrieve an Account Statement
      #
      # @param account_statement_id [String] The identifier of the Account Statement to retrieve.
      #
      # @param params [Increase::Models::AccountStatementRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::AccountStatement]
      def retrieve(account_statement_id, params = {})
        @client.request(
          method: :get,
          path: ["account_statements/%0s", account_statement_id],
          model: Increase::Models::AccountStatement,
          options: params[:request_options]
        )
      end

      # List Account Statements
      #
      # @param params [Increase::Models::AccountStatementListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id Filter Account Statements to those belonging to the specified Account.
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::Models::AccountStatementListParams::StatementPeriodStart] :statement_period_start
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::AccountStatement>]
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

      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
