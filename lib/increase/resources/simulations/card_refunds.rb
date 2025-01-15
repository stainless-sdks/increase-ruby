# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardRefunds
        # Simulates refunding a card transaction. The full value of the original sandbox
        #   transaction is refunded.
        #
        # @param params [Increase::Models::Simulations::CardRefundCreateParams, Hash{Symbol => Object}] Attributes to send in this request.
        #
        #   @option params [String] :transaction_id The identifier for the Transaction to refund. The Transaction's source must have
        #     a category of card_settlement.
        #
        # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::Transaction]
        #
        def create(params = {}, opts = {})
          parsed = Increase::Models::Simulations::CardRefundCreateParams.dump(params)
          req = {
            method: :post,
            path: "simulations/card_refunds",
            body: parsed,
            model: Increase::Models::Transaction
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
