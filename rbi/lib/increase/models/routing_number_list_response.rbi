# typed: strong

module Increase
  module Models
    class RoutingNumberListResponse < Increase::BaseModel
      sig { returns(Symbol) }
      def ach_transfers
      end

      sig { params(_: Symbol).returns(Symbol) }
      def ach_transfers=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(Symbol) }
      def real_time_payments_transfers
      end

      sig { params(_: Symbol).returns(Symbol) }
      def real_time_payments_transfers=(_)
      end

      sig { returns(String) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig { returns(Symbol) }
      def wire_transfers
      end

      sig { params(_: Symbol).returns(Symbol) }
      def wire_transfers=(_)
      end

      sig do
        params(
          ach_transfers: Symbol,
          name: String,
          real_time_payments_transfers: Symbol,
          routing_number: String,
          type: Symbol,
          wire_transfers: Symbol
        )
          .void
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
        override
          .returns(
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class RealTimePaymentsTransfers < Increase::Enum
        abstract!

        # The routing number can receive this transfer type.
        SUPPORTED = :supported

        # The routing number cannot receive this transfer type.
        NOT_SUPPORTED = :not_supported

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Type < Increase::Enum
        abstract!

        ROUTING_NUMBER = :routing_number

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class WireTransfers < Increase::Enum
        abstract!

        # The routing number can receive this transfer type.
        SUPPORTED = :supported

        # The routing number cannot receive this transfer type.
        NOT_SUPPORTED = :not_supported

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
