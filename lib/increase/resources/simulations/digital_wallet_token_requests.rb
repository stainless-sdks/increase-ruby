# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class DigitalWalletTokenRequests
        # Simulates a user attempting add a [Card](#cards) to a digital wallet such as
        #   Apple Pay.
        #
        # @param params [Increase::Models::Simulations::DigitalWalletTokenRequestCreateParams, Hash{Symbol => Object}] Attributes to send in this request.
        #
        #   @option params [String] :card_id The identifier of the Card to be authorized.
        #
        # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse]
        #
        def create(params = {}, opts = {})
          parsed = Increase::Models::Simulations::DigitalWalletTokenRequestCreateParams.dump(params)
          req = {
            method: :post,
            path: "simulations/digital_wallet_token_requests",
            body: parsed,
            model: Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse
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
