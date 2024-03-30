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
        request = {}
        request[:method] = :get
        request[:path] = "/account_statements/#{account_statement_id}"
        request[:model] = Increase::Models::AccountStatement
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
