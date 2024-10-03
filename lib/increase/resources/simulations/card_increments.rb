# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardIncrements
        def initialize(client:)
          @client = client
        end

        # Simulates the increment of an authorization by a card acquirer. An authorization
        #   can be incremented multiple times.
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [Integer] :amount The amount of the increment in minor units in the card authorization's currency.
        # @option params [String] :card_payment_id The identifier of the Card Payment to create a increment on.
        # @option params [String, nil] :event_subscription_id The identifier of the Event Subscription to use. If provided, will override the
        #   default real time event subscription. Because you can only create one real time
        #   decision event subscription, you can use this field to route events to any
        #   specified event subscription for testing purposes.
        #
        # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::CardPayment]
        def create(params = {}, opts = {})
          req = {
            method: :post,
            path: "/simulations/card_increments",
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
