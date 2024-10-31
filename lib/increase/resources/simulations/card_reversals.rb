# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardReversals
        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
        end

        # Simulates the reversal of an authorization by a card acquirer. An authorization
        #   can be partially reversed multiple times, up until the total authorized amount.
        #   Marks the pending transaction as complete if the authorization is fully
        #   reversed.
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String] :card_payment_id The identifier of the Card Payment to create a reversal on.
        #   @option params [Integer, nil] :amount The amount of the reversal in minor units in the card authorization's currency.
        #     This defaults to the authorization amount.
        #
        # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::CardPayment]
        def create(params = {}, opts = {})
          req = {
            method: :post,
            path: "/simulations/card_reversals",
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
