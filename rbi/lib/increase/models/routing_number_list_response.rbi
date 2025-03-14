# typed: strong

module Increase
  module Models
    class RoutingNumberListResponse < Increase::BaseModel
      # This routing number's support for ACH Transfers.
      sig { returns(Symbol) }
      def ach_transfers
      end

      sig { params(_: Symbol).returns(Symbol) }
      def ach_transfers=(_)
      end

      # The name of the financial institution belonging to a routing number.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # This routing number's support for Real-Time Payments Transfers.
      sig { returns(Symbol) }
      def real_time_payments_transfers
      end

      sig { params(_: Symbol).returns(Symbol) }
      def real_time_payments_transfers=(_)
      end

      # The nine digit routing number identifier.
      sig { returns(String) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `routing_number`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # This routing number's support for Wire Transfers.
      sig { returns(Symbol) }
      def wire_transfers
      end

      sig { params(_: Symbol).returns(Symbol) }
      def wire_transfers=(_)
      end

      # Routing numbers are used to identify your bank in a financial transaction.
      sig do
        params(
          ach_transfers: Symbol,
          name: String,
          real_time_payments_transfers: Symbol,
          routing_number: String,
          type: Symbol,
          wire_transfers: Symbol
        )
          .returns(T.attached_class)
      end
      def self.new(ach_transfers:, name:, real_time_payments_transfers:, routing_number:, type:, wire_transfers:)
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

      # This routing number's support for ACH Transfers.
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

      # This routing number's support for Real-Time Payments Transfers.
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

      # A constant representing the object's type. For this resource it will always be
      #   `routing_number`.
      class Type < Increase::Enum
        abstract!

        ROUTING_NUMBER = :routing_number

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      # This routing number's support for Wire Transfers.
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
