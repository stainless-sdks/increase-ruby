# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardIncrements
        # Simulates the increment of an authorization by a card acquirer. An authorization
        #   can be incremented multiple times.
        #
        # @overload create(amount:, card_payment_id:, event_subscription_id: nil, request_options: {})
        #
        # @param amount [Integer]
        # @param card_payment_id [String]
        # @param event_subscription_id [String]
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Increase::Models::CardPayment]
        #
        # @see Increase::Models::Simulations::CardIncrementCreateParams
        def create(params)
          parsed, options = Increase::Models::Simulations::CardIncrementCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "simulations/card_increments",
            body: parsed,
            model: Increase::Models::CardPayment,
            options: options
          )
        end

        # @api private
        #
        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
