# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class AccountStatements
        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
        end

        # Simulates an [Account Statement](#account-statements) being created for an
        #   account. In production, Account Statements are generated once per month.
        #
        # @param params [Hash] Attributes to send in this request.
        #   @option params [String] :account_id The identifier of the Account the statement is for.
        #
        # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::AccountStatement]
        def create(params = {}, opts = {})
          req = {
            method: :post,
            path: "/simulations/account_statements",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: Increase::Models::AccountStatement
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
