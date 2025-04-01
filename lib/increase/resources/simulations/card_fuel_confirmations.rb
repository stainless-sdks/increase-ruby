# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardFuelConfirmations
        # Simulates the fuel confirmation of an authorization by a card acquirer. This
        #   happens asynchronously right after a fuel pump transaction is completed. A fuel
        #   confirmation can only happen once per authorization.
        #
        # @param params [Increase::Models::Simulations::CardFuelConfirmationCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Integer] :amount The amount of the fuel_confirmation in minor units in the card authorization's
        #     currency.
        #
        #   @option params [String] :card_payment_id The identifier of the Card Payment to create a fuel_confirmation on.
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Increase::Models::CardPayment]
        #
        # @see Increase::Models::Simulations::CardFuelConfirmationCreateParams
        def create(params)
          parsed, options = Increase::Models::Simulations::CardFuelConfirmationCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "simulations/card_fuel_confirmations",
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
