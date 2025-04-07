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
        # @overload create(card_payment_id:, amount: nil, request_options: {})
        #
        # @param card_payment_id [String]
        # @param amount [Integer]
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
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
