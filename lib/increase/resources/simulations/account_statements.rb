# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class AccountStatements
        # Simulates an [Account Statement](#account-statements) being created for an
        #   account. In production, Account Statements are generated once per month.
        #
        # @param params [Increase::Models::Simulations::AccountStatementCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :account_id The identifier of the Account the statement is for.
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Increase::Models::AccountStatement]
        #
        def create(params)
          parsed, options = Increase::Models::Simulations::AccountStatementCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "simulations/account_statements",
            body: parsed,
            model: Increase::Models::AccountStatement,
            options: options
          )
        end

        # @param client [Increase::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
