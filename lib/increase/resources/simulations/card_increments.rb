# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardIncrements
        # Simulates the increment of an authorization by a card acquirer. An authorization
        #   can be incremented multiple times.
        #
        # @param params [Increase::Models::Simulations::CardIncrementCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Integer] :amount The amount of the increment in minor units in the card authorization's currency.
        #
        #   @option params [String] :card_payment_id The identifier of the Card Payment to create a increment on.
        #
        #   @option params [String] :event_subscription_id The identifier of the Event Subscription to use. If provided, will override the
        #     default real time event subscription. Because you can only create one real time
        #     decision event subscription, you can use this field to route events to any
        #     specified event subscription for testing purposes.
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Increase::Models::CardPayment]
        #
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

        # @param client [Increase::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
