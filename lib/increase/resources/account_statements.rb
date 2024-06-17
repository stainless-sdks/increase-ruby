# frozen_string_literal: true

module Increase
  module Resources
    class AccountStatements
      def initialize(client:)
        @client = client
      end

      # Retrieve an Account Statement
      # 
      # @param account_statement_id [String] The identifier of the Account Statement to retrieve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::AccountStatement]
      def retrieve(account_statement_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/account_statements/#{account_statement_id}"
        req[:model] = Increase::Models::AccountStatement
        @client.request(req, opts)
      end

      # List Account Statements
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id Filter Account Statements to those belonging to the specified Account.
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [StatementPeriodStart] :statement_period_start
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Page<Increase::Models::AccountStatement>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/account_statements"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::AccountStatement
        @client.request(req, opts)
      end
    end
  end
end
