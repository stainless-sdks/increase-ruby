# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardRefunds
        def initialize(client:)
          @client = client
        end

        # Simulates refunding a card transaction. The full value of the original sandbox
        #   transaction is refunded.
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :transaction_id The identifier for the Transaction to refund. The Transaction's source must have
        #   a category of card_settlement.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Models::Transaction]
        def create(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/card_refunds"
          req[:body] = params
          req[:model] = Increase::Models::Transaction
          @client.request(req, opts)
        end
      end
    end
  end
end
