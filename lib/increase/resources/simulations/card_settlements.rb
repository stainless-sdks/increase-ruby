# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardSettlements
        # @api private
        private def initialize_resources; end

        # Simulates the settlement of an authorization by a card acquirer. After a card
        # authorization is created, the merchant will eventually send a settlement. This
        # simulates that event, which may occur many days after the purchase in
        # production. The amount settled can be different from the amount originally
        # authorized, for example, when adding a tip to a restaurant bill.
        #
        # @overload create(card_id:, pending_transaction_id:, amount: nil, request_options: {})
        #
        # @param card_id [String]
        # @param pending_transaction_id [String]
        # @param amount [Integer]
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Increase::Models::Transaction]
        #
        # @see Increase::Models::Simulations::CardSettlementCreateParams
        def create(params)
          parsed, options = Increase::Models::Simulations::CardSettlementCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "simulations/card_settlements",
            body: parsed,
            model: Increase::Models::Transaction,
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
