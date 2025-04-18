# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class DigitalWalletTokenRequests
        # @api private
        private def initialize_resources; end

        # Simulates a user attempting add a [Card](#cards) to a digital wallet such as
        # Apple Pay.
        #
        # @overload create(card_id:, request_options: {})
        #
        # @param card_id [String]
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Increase::Models::Simulations::DigitalWalletTokenRequestCreateResponse]
        #
        # @see Increase::Models::Simulations::DigitalWalletTokenRequestCreateParams
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

        # @api private
        #
        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
          initialize_resources
        end
      end
    end
  end
end
