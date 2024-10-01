# frozen_string_literal: true

module Increase
  module Models
    class RoutingNumberListResponse < BaseModel
      # @!attribute [rw] ach_transfers
      #   This routing number's support for ACH Transfers.
      #   @return [Symbol, Increase::Models::RoutingNumberListResponse::ACHTransfers]
      required :ach_transfers, enum: -> { Increase::Models::RoutingNumberListResponse::ACHTransfers }

      # @!attribute [rw] name_
      #   The name of the financial institution belonging to a routing number.
      #   @return [String]
      required :name_, String

      # @!attribute [rw] real_time_payments_transfers
      #   This routing number's support for Real-Time Payments Transfers.
      #   @return [Symbol, Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers]
      required :real_time_payments_transfers,
               enum: -> { Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers }

      # @!attribute [rw] routing_number
      #   The nine digit routing number identifier.
      #   @return [String]
      required :routing_number, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `routing_number`.
      #   @return [Symbol, Increase::Models::RoutingNumberListResponse::Type]
      required :type, enum: -> { Increase::Models::RoutingNumberListResponse::Type }

      # @!attribute [rw] wire_transfers
      #   This routing number's support for Wire Transfers.
      #   @return [Symbol, Increase::Models::RoutingNumberListResponse::WireTransfers]
      required :wire_transfers, enum: -> { Increase::Models::RoutingNumberListResponse::WireTransfers }

      # This routing number's support for ACH Transfers.
      class ACHTransfers < Increase::Enum
        # The routing number can receive this transfer type.
        SUPPORTED = :supported

        # The routing number cannot receive this transfer type.
        NOT_SUPPORTED = :not_supported
      end

      # This routing number's support for Real-Time Payments Transfers.
      class RealTimePaymentsTransfers < Increase::Enum
        # The routing number can receive this transfer type.
        SUPPORTED = :supported

        # The routing number cannot receive this transfer type.
        NOT_SUPPORTED = :not_supported
      end

      # A constant representing the object's type. For this resource it will always be `routing_number`.
      class Type < Increase::Enum
        ROUTING_NUMBER = :routing_number
      end

      # This routing number's support for Wire Transfers.
      class WireTransfers < Increase::Enum
        # The routing number can receive this transfer type.
        SUPPORTED = :supported

        # The routing number cannot receive this transfer type.
        NOT_SUPPORTED = :not_supported
      end
    end
  end
end
