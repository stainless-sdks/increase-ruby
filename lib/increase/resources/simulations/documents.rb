# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class Documents
        # @param client [Increase::Client]
        #
        def initialize(client:)
          @client = client
        end

        # Simulates an tax document being created for an account.
        #
        # @param params [Increase::Models::Simulations::DocumentCreateParams, Hash{Symbol => Object}] Attributes to send in this request.
        #
        #   @option params [String] :account_id The identifier of the Account the tax document is for.
        #
        # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::Document]
        #
        def create(params = {}, opts = {})
          parsed = Increase::Models::Simulations::DocumentCreateParams.dump(params)
          req = {
            method: :post,
            path: "simulations/documents",
            body: parsed,
            model: Increase::Models::Document
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
