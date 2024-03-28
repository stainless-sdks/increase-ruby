# frozen_string_literal: true

module Increase
  module Resources
    class AccountStatementsResource
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
        request = {}
        request[:method] = :get
        request[:path] = "/account_statements/#{account_statement_id}"
        request[:model] = Increase::Models::AccountStatement
        request.merge!(opts)
        @client.request(request)
      end

      # List Account Statements
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id Filter Account Statements to those belonging to the specified Account.
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Hash] :statement_period_start
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountStatement]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/account_statements"
        query_params = [:account_id, :cursor, :limit, :statement_period_start]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::AccountStatement
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
