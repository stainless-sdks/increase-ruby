# typed: strong

module Increase
  module Resources
    class Simulations
      class PhysicalCards
        # This endpoint allows you to simulate advancing the shipment status of a Physical
        #   Card, to simulate e.g., that a physical card was attempted shipped but then
        #   failed delivery.
        sig do
          params(
            physical_card_id: String,
            shipment_status: Symbol,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Increase::Models::PhysicalCard)
        end
        def advance_shipment(physical_card_id, shipment_status:, request_options: {})
        end

        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
