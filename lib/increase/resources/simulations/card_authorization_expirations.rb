# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardAuthorizationExpirations
        # Simulates expiring a Card Authorization immediately.
        #
        # @param params [Increase::Models::Simulations::CardAuthorizationExpirationCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :card_payment_id The identifier of the Card Payment to expire.
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Increase::Models::CardPayment]
        def create(params)
          parsed, options =
            Increase::Models::Simulations::CardAuthorizationExpirationCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "simulations/card_authorization_expirations",
            body: parsed,
            model: Increase::Models::CardPayment,
            options: options
          )
        end

        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
