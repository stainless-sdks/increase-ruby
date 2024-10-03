# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardAuthorizationExpirations
        def initialize(client:)
          @client = client
        end

        # Simulates expiring a card authorization immediately.
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :card_payment_id The identifier of the Card Payment to expire.
        #
        # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::CardPayment]
        def create(params = {}, opts = {})
          req = {
            method: :post,
            path: "/simulations/card_authorization_expirations",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: Increase::Models::CardPayment
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
