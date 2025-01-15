# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardReversals
        # Simulates the reversal of an authorization by a card acquirer. An authorization
        #   can be partially reversed multiple times, up until the total authorized amount.
        #   Marks the pending transaction as complete if the authorization is fully
        #   reversed.
        #
        # @param params [Increase::Models::Simulations::CardReversalCreateParams, Hash{Symbol => Object}] Attributes to send in this request.
        #
        #   @option params [String] :card_payment_id The identifier of the Card Payment to create a reversal on.
        #
        #   @option params [Integer] :amount The amount of the reversal in minor units in the card authorization's currency.
        #     This defaults to the authorization amount.
        #
        # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::CardPayment]
        #
        def create(params = {}, opts = {})
          parsed = Increase::Models::Simulations::CardReversalCreateParams.dump(params)
          req = {
            method: :post,
            path: "simulations/card_reversals",
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
