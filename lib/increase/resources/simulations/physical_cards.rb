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
        # @option params [Symbol] :shipment_status The shipment status to move the Physical Card to.
        #
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::PhysicalCard]
        def shipment_advance(physical_card_id, params = {}, opts = {})
          request = {}
          request[:method] = :post
          request[:path] = "/simulations/physical_cards/#{physical_card_id}/shipment_advance"
          request[:body] = params
          request[:model] = Increase::Models::PhysicalCard
          request.merge!(opts)
          @client.request(request)
        end
      end
    end
  end
end
