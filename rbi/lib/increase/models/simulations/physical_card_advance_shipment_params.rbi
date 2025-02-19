# typed: strong

module Increase
  module Models
    module Simulations
      class PhysicalCardAdvanceShipmentParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        sig { returns(Symbol) }
        def shipment_status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def shipment_status=(_)
        end

        sig do
          params(
            shipment_status: Symbol,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(shipment_status:, request_options: {})
        end

        sig { override.returns({shipment_status: Symbol, request_options: Increase::RequestOptions}) }
        def to_hash
        end

        class ShipmentStatus < Increase::Enum
          abstract!

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
