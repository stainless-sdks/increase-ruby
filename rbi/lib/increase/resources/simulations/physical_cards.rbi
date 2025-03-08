# typed: strong

module Increase
  module Resources
    class Simulations
      class PhysicalCards
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

        sig { params(client: Increase::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
