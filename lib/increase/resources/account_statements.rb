# frozen_string_literal: true

module Increase
  module Resources
    class AccountStatements
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Retrieve an Account Statement
      #
      # @param account_statement_id [String] The identifier of the Account Statement to retrieve.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountStatement]
      def retrieve(account_statement_id, opts = {})
        req = {
          method: :get,
          path: "/account_statements/#{account_statement_id}",
          model: Increase::Models::AccountStatement
        }
        @client.request(req, opts)
      end

      # List Account Statements
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :account_id Filter Account Statements to those belonging to the specified Account.
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [StatementPeriodStart, nil] :statement_period_start
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::AccountStatement>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/account_statements",
          query: params,
          page: Increase::Page,
          model: Increase::Models::AccountStatement
        }
        @client.request(req, opts)
      end
    end
  end
end
