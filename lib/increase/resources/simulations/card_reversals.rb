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
        # @param params [Increase::Models::Simulations::CardReversalCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :card_payment_id The identifier of the Card Payment to create a reversal on.
        #
        #   @option params [Integer] :amount The amount of the reversal in minor units in the card authorization's currency.
        #     This defaults to the authorization amount.
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Increase::Models::CardPayment]
        #
        # @see Increase::Models::Simulations::CardReversalCreateParams
        def create(params)
          parsed, options = Increase::Models::Simulations::CardReversalCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "simulations/card_reversals",
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
