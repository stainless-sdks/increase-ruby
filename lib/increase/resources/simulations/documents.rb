# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class Documents
        # Simulates an tax document being created for an account.
        #
        # @param params [Increase::Models::Simulations::DocumentCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :account_id The identifier of the Account the tax document is for.
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Increase::Models::Document]
        #
        def create(params)
          parsed, options = Increase::Models::Simulations::DocumentCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "simulations/documents",
            body: parsed,
            model: Increase::Models::Document,
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
