# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class AccountStatements
        def initialize(client:)
          @client = client
        end

        # Simulates an [Account Statement](#account-statements) being created for an
        #   account. In production, Account Statements are generated once per month.
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :account_id The identifier of the Account the statement is for.
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::AccountStatement]
        def create(params = {}, opts = {})
          request = {}
          request[:method] = :post
          request[:path] = "/simulations/account_statements"
          body_params = [:account_id]
          request[:body] = params.filter { |k, _| body_params.include?(k) }
          request[:model] = Increase::Models::AccountStatement
          request.merge!(opts)
          @client.request(request)
        end
      end
    end
  end
end
