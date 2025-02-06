# typed: strong

module Increase
  module Models
    class RoutingNumberListResponse < Increase::BaseModel
      sig { returns(Symbol) }
      attr_accessor :ach_transfers

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Symbol) }
      attr_accessor :real_time_payments_transfers

      sig { returns(String) }
      attr_accessor :routing_number

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(Symbol) }
      attr_accessor :wire_transfers

      sig do
        params(
          ach_transfers: Symbol,
          name: String,
          real_time_payments_transfers: Symbol,
          routing_number: String,
          type: Symbol,
          wire_transfers: Symbol
        ).void
      end
      def initialize(
        ach_transfers:,
        name:,
        real_time_payments_transfers:,
        routing_number:,
        type:,
        wire_transfers:
      )
      end

      sig do
        override.returns(
          {
            ach_transfers: Symbol,
            name: String,
            real_time_payments_transfers: Symbol,
            routing_number: String,
            type: Symbol,
            wire_transfers: Symbol
          }
        )
      end
      def to_hash
      end

      class ACHTransfers < Increase::Enum
        abstract!

        # The routing number can receive this transfer type.
        SUPPORTED = :supported

        # The routing number cannot receive this transfer type.
        NOT_SUPPORTED = :not_supported

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class RealTimePaymentsTransfers < Increase::Enum
        abstract!

        # The routing number can receive this transfer type.
        SUPPORTED = :supported

        # The routing number cannot receive this transfer type.
        NOT_SUPPORTED = :not_supported

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        ROUTING_NUMBER = :routing_number

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class WireTransfers < Increase::Enum
        abstract!

        # The routing number can receive this transfer type.
        SUPPORTED = :supported

        # The routing number cannot receive this transfer type.
        NOT_SUPPORTED = :not_supported

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
