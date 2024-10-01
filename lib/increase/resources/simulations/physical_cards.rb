# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class PhysicalCards
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
        # @option params [Symbol, ShipmentStatus] :shipment_status The shipment status to move the Physical Card to.
        #
        # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::PhysicalCard]
        def advance_shipment(physical_card_id, params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/physical_cards/#{physical_card_id}/advance_shipment"
          req[:body] = params
          req[:model] = Increase::Models::PhysicalCard
          @client.request(req, opts)
        end

        # The shipment status to move the Physical Card to.
        class ShipmentStatus < Increase::Enum
          # The physical card has not yet been shipped.
          PENDING = :pending

          # The physical card shipment was canceled prior to submission.
          CANCELED = :canceled

          # The physical card shipment has been submitted to the card fulfillment provider.
          SUBMITTED = :submitted

          # The physical card shipment has been acknowledged by the card fulfillment provider and will be processed in their next batch.
          ACKNOWLEDGED = :acknowledged

          # The physical card shipment was rejected by the card printer due to an error.
          REJECTED = :rejected

          # The physical card has been shipped.
          SHIPPED = :shipped

          # The physical card shipment was returned to the sender and destroyed by the production facility.
          RETURNED = :returned
        end
      end
    end
  end
end
