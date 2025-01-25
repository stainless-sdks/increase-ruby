# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class PhysicalCards
        # This endpoint allows you to simulate advancing the shipment status of a Physical
        #   Card, to simulate e.g., that a physical card was attempted shipped but then
        #   failed delivery.
        #
        # @param physical_card_id [String] The Physical Card you would like to action.
        #
        # @param params [Increase::Models::Simulations::PhysicalCardAdvanceShipmentParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Symbol, Increase::Models::Simulations::PhysicalCardAdvanceShipmentParams::ShipmentStatus] :shipment_status The shipment status to move the Physical Card to.
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
        #
        # @return [Increase::Models::PhysicalCard]
        #
        def advance_shipment(physical_card_id, params)
          parsed, options = Increase::Models::Simulations::PhysicalCardAdvanceShipmentParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["simulations/physical_cards/%0s/advance_shipment", physical_card_id],
            body: parsed,
            model: Increase::Models::PhysicalCard,
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
