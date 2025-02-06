# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardRefunds
        # Simulates refunding a card transaction. The full value of the original sandbox
        #   transaction is refunded.
        #
        # @param params [Increase::Models::Simulations::CardRefundCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :transaction_id The identifier for the Transaction to refund. The Transaction's source must have
        #     a category of card_settlement.
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Increase::Models::Transaction]
        #
        def create(params)
          parsed, options = Increase::Models::Simulations::CardRefundCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "simulations/card_refunds",
            body: parsed,
            model: Increase::Models::Transaction,
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
