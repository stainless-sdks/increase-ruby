# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardSettlements
        # Simulates the settlement of an authorization by a card acquirer. After a card
        #   authorization is created, the merchant will eventually send a settlement. This
        #   simulates that event, which may occur many days after the purchase in
        #   production. The amount settled can be different from the amount originally
        #   authorized, for example, when adding a tip to a restaurant bill.
        #
        # @param params [Increase::Models::Simulations::CardSettlementCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :card_id The identifier of the Card to create a settlement on.
        #
        #   @option params [String] :pending_transaction_id The identifier of the Pending Transaction for the Card Authorization you wish to
        #     settle.
        #
        #   @option params [Integer] :amount The amount to be settled. This defaults to the amount of the Pending Transaction
        #     being settled.
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Increase::Models::Transaction]
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

        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
