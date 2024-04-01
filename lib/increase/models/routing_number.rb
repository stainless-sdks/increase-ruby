# frozen_string_literal: true

module Increase
  module Models
    class RoutingNumber < BaseModel
      # @!attribute [rw] ach_transfers
      #   This routing number's support for ACH Transfers.
      #   @return [Symbol]
      required :ach_transfers, Increase::Enum.new(:supported, :not_supported)

      # @!attribute [rw] name_
      #   The name of the financial institution belonging to a routing number.
      #   @return [String]
      required :name_, String

      # @!attribute [rw] real_time_payments_transfers
      #   This routing number's support for Real-Time Payments Transfers.
      #   @return [Symbol]
      required :real_time_payments_transfers, Increase::Enum.new(:supported, :not_supported)

      # @!attribute [rw] routing_number
      #   The nine digit routing number identifier.
      #   @return [String]
      required :routing_number, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `routing_number`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:routing_number)

      # @!attribute [rw] wire_transfers
      #   This routing number's support for Wire Transfers.
      #   @return [Symbol]
      required :wire_transfers, Increase::Enum.new(:supported, :not_supported)
    end
  end
end
