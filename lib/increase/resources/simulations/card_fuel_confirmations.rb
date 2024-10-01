# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardFuelConfirmations
        def initialize(client:)
          @client = client
        end

        # Simulates the fuel confirmation of an authorization by a card acquirer. This
        #   happens asynchronously right after a fuel pump transaction is completed. A fuel
        #   confirmation can only happen once per authorization.
        #
        # @param params [Hash] Attributes to send in this request.
        # @option params [Integer] :amount The amount of the fuel_confirmation in minor units in the card authorization's
        #   currency.
        # @option params [String] :card_payment_id The identifier of the Card Payment to create a fuel_confirmation on.
        #
        # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::CardPayment]
        def create(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/card_fuel_confirmations"
          req[:body] = params
          req[:model] = Increase::Models::CardPayment
          @client.request(req, opts)
        end
      end
    end
  end
end
