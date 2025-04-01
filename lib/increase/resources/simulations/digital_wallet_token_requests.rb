# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class DigitalWalletTokenRequests
        # Simulates a user attempting add a [Card](#cards) to a digital wallet such as
        #   Apple Pay.
        #
        # @param params [Increase::Models::Simulations::DigitalWalletTokenRequestCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :card_id The identifier of the Card to be authorized.
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse]
        def create(params)
          parsed, options =
            Increase::Models::Simulations::DigitalWalletTokenRequestCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "simulations/digital_wallet_token_requests",
            body: parsed,
            model: Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse,
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
