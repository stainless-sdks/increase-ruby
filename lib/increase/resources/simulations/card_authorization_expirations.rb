# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardAuthorizationExpirations
        # Simulates expiring a Card Authorization immediately.
        #
        # @param params [Increase::Models::Simulations::CardAuthorizationExpirationCreateParams, Hash{Symbol=>Object}] Attributes to send in this request.
        #
        #   @option params [String] :card_payment_id The identifier of the Card Payment to expire.
        #
        # @param opts [Hash{Symbol=>Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::CardPayment]
        #
        def create(params = {}, opts = {})
          parsed = Increase::Models::Simulations::CardAuthorizationExpirationCreateParams.dump(params)
          req = {
            method: :post,
            path: "simulations/card_authorization_expirations",
            body: parsed,
            model: Increase::Models::CardPayment
          }
          @client.request(req, opts)
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
