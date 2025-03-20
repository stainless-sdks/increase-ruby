# typed: strong

module Increase
  module Models
    class RoutingNumberListResponse < Increase::BaseModel
      # This routing number's support for ACH Transfers.
      sig { returns(Increase::Models::RoutingNumberListResponse::ACHTransfers::TaggedSymbol) }
      def ach_transfers
      end

      sig do
        params(_: Increase::Models::RoutingNumberListResponse::ACHTransfers::TaggedSymbol)
          .returns(Increase::Models::RoutingNumberListResponse::ACHTransfers::TaggedSymbol)
      end
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
      sig { returns(Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers::TaggedSymbol) }
      def real_time_payments_transfers
      end

      sig do
        params(_: Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers::TaggedSymbol)
          .returns(Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers::TaggedSymbol)
      end
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
      sig { returns(Increase::Models::RoutingNumberListResponse::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::RoutingNumberListResponse::Type::TaggedSymbol)
          .returns(Increase::Models::RoutingNumberListResponse::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # This routing number's support for Wire Transfers.
      sig { returns(Increase::Models::RoutingNumberListResponse::WireTransfers::TaggedSymbol) }
      def wire_transfers
      end

      sig do
        params(_: Increase::Models::RoutingNumberListResponse::WireTransfers::TaggedSymbol)
          .returns(Increase::Models::RoutingNumberListResponse::WireTransfers::TaggedSymbol)
      end
      def wire_transfers=(_)
      end

      # Routing numbers are used to identify your bank in a financial transaction.
      sig do
        params(
          ach_transfers: Increase::Models::RoutingNumberListResponse::ACHTransfers::TaggedSymbol,
          name: String,
          real_time_payments_transfers: Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers::TaggedSymbol,
          routing_number: String,
          type: Increase::Models::RoutingNumberListResponse::Type::TaggedSymbol,
          wire_transfers: Increase::Models::RoutingNumberListResponse::WireTransfers::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(ach_transfers:, name:, real_time_payments_transfers:, routing_number:, type:, wire_transfers:)
      end

      sig do
        override
          .returns(
            {
              ach_transfers: Increase::Models::RoutingNumberListResponse::ACHTransfers::TaggedSymbol,
              name: String,
              real_time_payments_transfers: Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers::TaggedSymbol,
              routing_number: String,
              type: Increase::Models::RoutingNumberListResponse::Type::TaggedSymbol,
              wire_transfers: Increase::Models::RoutingNumberListResponse::WireTransfers::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      # This routing number's support for ACH Transfers.
      module ACHTransfers
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::RoutingNumberListResponse::ACHTransfers) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::RoutingNumberListResponse::ACHTransfers::TaggedSymbol) }

        # The routing number can receive this transfer type.
        SUPPORTED = T.let(:supported, Increase::Models::RoutingNumberListResponse::ACHTransfers::TaggedSymbol)

        # The routing number cannot receive this transfer type.
        NOT_SUPPORTED =
          T.let(:not_supported, Increase::Models::RoutingNumberListResponse::ACHTransfers::TaggedSymbol)
      end

      # This routing number's support for Real-Time Payments Transfers.
      module RealTimePaymentsTransfers
        extend Increase::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers::TaggedSymbol) }

        # The routing number can receive this transfer type.
        SUPPORTED =
          T.let(:supported, Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers::TaggedSymbol)

        # The routing number cannot receive this transfer type.
        NOT_SUPPORTED =
          T.let(
            :not_supported,
            Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers::TaggedSymbol
          )
      end

      # A constant representing the object's type. For this resource it will always be
      #   `routing_number`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::RoutingNumberListResponse::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::RoutingNumberListResponse::Type::TaggedSymbol) }

        ROUTING_NUMBER = T.let(:routing_number, Increase::Models::RoutingNumberListResponse::Type::TaggedSymbol)
      end

      # This routing number's support for Wire Transfers.
      module WireTransfers
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::RoutingNumberListResponse::WireTransfers) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::RoutingNumberListResponse::WireTransfers::TaggedSymbol) }

        # The routing number can receive this transfer type.
        SUPPORTED = T.let(:supported, Increase::Models::RoutingNumberListResponse::WireTransfers::TaggedSymbol)

        # The routing number cannot receive this transfer type.
        NOT_SUPPORTED =
          T.let(:not_supported, Increase::Models::RoutingNumberListResponse::WireTransfers::TaggedSymbol)
      end
    end
  end
end
