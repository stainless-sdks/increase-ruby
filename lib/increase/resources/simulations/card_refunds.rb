# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardRefunds
        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
        end

        # Simulates refunding a card transaction. The full value of the original sandbox
        #   transaction is refunded.
        #
        # @param params [Hash] Attributes to send in this request.
        #   @option params [String] :transaction_id The identifier for the Transaction to refund. The Transaction's source must have
        #     a category of card_settlement.
        #
        # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::Transaction]
        def create(params = {}, opts = {})
          req = {
            method: :post,
            path: "/simulations/card_refunds",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: Increase::Models::Transaction
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
