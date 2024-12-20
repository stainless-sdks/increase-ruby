# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class CardSettlements
        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
        end

        # Simulates the settlement of an authorization by a card acquirer. After a card
        #   authorization is created, the merchant will eventually send a settlement. This
        #   simulates that event, which may occur many days after the purchase in
        #   production. The amount settled can be different from the amount originally
        #   authorized, for example, when adding a tip to a restaurant bill.
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String] :card_id The identifier of the Card to create a settlement on.
        #   @option params [String] :pending_transaction_id The identifier of the Pending Transaction for the Card Authorization you wish to
        #     settle.
        #   @option params [Integer, nil] :amount The amount to be settled. This defaults to the amount of the Pending Transaction
        #     being settled.
        #
        # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::Transaction]
        def create(params = {}, opts = {})
          req = {
            method: :post,
            path: "/simulations/card_settlements",
            headers: {"Content-Type" => "application/json"},
            body: params,
            model: Increase::Models::Transaction
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
