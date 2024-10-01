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
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
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
        req = {}
        req[:method] = :get
        req[:path] = "/account_statements"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::AccountStatement
        @client.request(req, opts)
      end

      class StatementPeriodStart < BaseModel
        # @!attribute [rw] after
        #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :after, DateTime

        # @!attribute [rw] before
        #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :before, DateTime

        # @!attribute [rw] on_or_after
        #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_after, DateTime

        # @!attribute [rw] on_or_before
        #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_before, DateTime
      end
    end
  end
end
