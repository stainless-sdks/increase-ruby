# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class PhysicalCards
        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
        end

        # This endpoint allows you to simulate advancing the shipment status of a Physical
        #   Card, to simulate e.g., that a physical card was attempted shipped but then
        #   failed delivery.
        #
        # @param physical_card_id [String] The Physical Card you would like to action.
        #
        # @param params [Hash] Attributes to send in this request.
        #   @option params [Symbol, ShipmentStatus] :shipment_status The shipment status to move the Physical Card to.
        #
        # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::PhysicalCard]
        def advance_shipment(physical_card_id, params = {}, opts = {})
          req = {
            method: :post,
            path: "/simulations/physical_cards/#{physical_card_id}/advance_shipment",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: Increase::Models::PhysicalCard
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
