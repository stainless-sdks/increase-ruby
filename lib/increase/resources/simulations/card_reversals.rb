# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardReversals
        def initialize(client:)
          @client = client
        end

        # Simulates the reversal of an authorization by a card acquirer. An authorization
        #   can be partially reversed multiple times, up until the total authorized amount.
        #   Marks the pending transaction as complete if the authorization is fully
        #   reversed.
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :card_payment_id The identifier of the Card Payment to create a reversal on.
        # @option params [Integer] :amount The amount of the reversal in minor units in the card authorization's currency.
        #   This defaults to the authorization amount.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Models::CardPayment]
        def create(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/card_reversals"
          req[:body] = params
          req[:model] = Increase::Models::CardPayment
          @client.request(req, opts)
        end
      end
    end
  end
end
