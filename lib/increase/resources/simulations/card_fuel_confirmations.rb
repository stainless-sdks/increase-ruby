# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardFuelConfirmations
        # @api private
        private def initialize_resources; end

        # Simulates the fuel confirmation of an authorization by a card acquirer. This
        # happens asynchronously right after a fuel pump transaction is completed. A fuel
        # confirmation can only happen once per authorization.
        #
        # @overload create(amount:, card_payment_id:, request_options: {})
        #
        # @param amount [Integer]
        # @param card_payment_id [String]
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
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
          initialize_resources
        end
      end
    end
  end
end
