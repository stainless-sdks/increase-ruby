# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::RoutingNumbers#list
    class RoutingNumberListResponse < Increase::Internal::Type::BaseModel
      # @!attribute ach_transfers
      #   #/components/schemas/routing_number/properties/ach_transfers
      #
      #   @return [Symbol, Increase::Models::RoutingNumberListResponse::ACHTransfers]
      required :ach_transfers, enum: -> { Increase::Models::RoutingNumberListResponse::ACHTransfers }

      # @!attribute name
      #   #/components/schemas/routing_number/properties/name
      #
      #   @return [String]
      required :name, String

      # @!attribute real_time_payments_transfers
      #   #/components/schemas/routing_number/properties/real_time_payments_transfers
      #
      #   @return [Symbol, Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers]
      required :real_time_payments_transfers,
               enum: -> { Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers }

      # @!attribute routing_number
      #   #/components/schemas/routing_number/properties/routing_number
      #
      #   @return [String]
      required :routing_number, String

      # @!attribute type
      #   #/components/schemas/routing_number/properties/type
      #
      #   @return [Symbol, Increase::Models::RoutingNumberListResponse::Type]
      required :type, enum: -> { Increase::Models::RoutingNumberListResponse::Type }

      # @!attribute wire_transfers
      #   #/components/schemas/routing_number/properties/wire_transfers
      #
      #   @return [Symbol, Increase::Models::RoutingNumberListResponse::WireTransfers]
      required :wire_transfers, enum: -> { Increase::Models::RoutingNumberListResponse::WireTransfers }

      # @!parse
      #   # #/components/schemas/routing_number_list/properties/data/items
      #   #
      #   # @param ach_transfers [Symbol, Increase::Models::RoutingNumberListResponse::ACHTransfers]
      #   # @param name [String]
      #   # @param real_time_payments_transfers [Symbol, Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers]
      #   # @param routing_number [String]
      #   # @param type [Symbol, Increase::Models::RoutingNumberListResponse::Type]
      #   # @param wire_transfers [Symbol, Increase::Models::RoutingNumberListResponse::WireTransfers]
      #   #
      #   def initialize(ach_transfers:, name:, real_time_payments_transfers:, routing_number:, type:, wire_transfers:, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/routing_number/properties/ach_transfers
      #
      # @see Increase::Models::RoutingNumberListResponse#ach_transfers
      module ACHTransfers
        extend Increase::Internal::Type::Enum

        # The routing number can receive this transfer type.
        SUPPORTED = :supported

        # The routing number cannot receive this transfer type.
        NOT_SUPPORTED = :not_supported

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/routing_number/properties/real_time_payments_transfers
      #
      # @see Increase::Models::RoutingNumberListResponse#real_time_payments_transfers
      module RealTimePaymentsTransfers
        extend Increase::Internal::Type::Enum

        # The routing number can receive this transfer type.
        SUPPORTED = :supported

        # The routing number cannot receive this transfer type.
        NOT_SUPPORTED = :not_supported

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/routing_number/properties/type
      #
      # @see Increase::Models::RoutingNumberListResponse#type
      module Type
        extend Increase::Internal::Type::Enum

        ROUTING_NUMBER = :routing_number

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/routing_number/properties/wire_transfers
      #
      # @see Increase::Models::RoutingNumberListResponse#wire_transfers
      module WireTransfers
        extend Increase::Internal::Type::Enum

        # The routing number can receive this transfer type.
        SUPPORTED = :supported

        # The routing number cannot receive this transfer type.
        NOT_SUPPORTED = :not_supported

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
