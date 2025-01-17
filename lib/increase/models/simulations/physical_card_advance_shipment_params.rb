# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class PhysicalCardAdvanceShipmentParams < Increase::BaseModel
        # @!attribute shipment_status
        #   The shipment status to move the Physical Card to.
        #
        #   @return [Symbol, Increase::Models::Simulations::PhysicalCardAdvanceShipmentParams::ShipmentStatus]
        required :shipment_status,
                 enum: -> { Increase::Models::Simulations::PhysicalCardAdvanceShipmentParams::ShipmentStatus }

        # @!parse
        #   # @param shipment_status [String] The shipment status to move the Physical Card to.
        #   #
        #   def initialize(shipment_status:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # The shipment status to move the Physical Card to.
        #
        # @example
        # ```ruby
        # case shipment_status
        # in :pending
        #   # ...
        # in :canceled
        #   # ...
        # in :submitted
        #   # ...
        # in :acknowledged
        #   # ...
        # in :rejected
        #   # ...
        # in ...
        #   #...
        # end
        # ```
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

          finalize!
        end
      end
    end
  end
end
