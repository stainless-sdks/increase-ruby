# frozen_string_literal: true

module Increase
  module Models
    class RoutingNumber
      extend Increase::Model

      include Increase::Model::Instance

      # @!attribute [rw] ach_transfers
      required :ach_transfers, Increase::Enum.new([:supported, :not_supported])

      # @!attribute [rw] name_
      required :name_, String

      # @!attribute [rw] real_time_payments_transfers
      required :real_time_payments_transfers, Increase::Enum.new([:supported, :not_supported])

      # @!attribute [rw] routing_number
      required :routing_number, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:routing_number])

      # @!attribute [rw] wire_transfers
      required :wire_transfers, Increase::Enum.new([:supported, :not_supported])
    end
  end
end
