# typed: strong

module Increase
  module Models
    class RoutingNumberListResponse < Increase::Internal::Type::BaseModel
      # #/components/schemas/routing_number/properties/ach_transfers
      sig { returns(Increase::Models::RoutingNumberListResponse::ACHTransfers::TaggedSymbol) }
      attr_accessor :ach_transfers

      # #/components/schemas/routing_number/properties/name
      sig { returns(String) }
      attr_accessor :name

      # #/components/schemas/routing_number/properties/real_time_payments_transfers
      sig { returns(Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers::TaggedSymbol) }
      attr_accessor :real_time_payments_transfers

      # #/components/schemas/routing_number/properties/routing_number
      sig { returns(String) }
      attr_accessor :routing_number

      # #/components/schemas/routing_number/properties/type
      sig { returns(Increase::Models::RoutingNumberListResponse::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/routing_number/properties/wire_transfers
      sig { returns(Increase::Models::RoutingNumberListResponse::WireTransfers::TaggedSymbol) }
      attr_accessor :wire_transfers

      # #/components/schemas/routing_number_list/properties/data/items
      sig do
        params(
          ach_transfers: Increase::Models::RoutingNumberListResponse::ACHTransfers::OrSymbol,
          name: String,
          real_time_payments_transfers: Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers::OrSymbol,
          routing_number: String,
          type: Increase::Models::RoutingNumberListResponse::Type::OrSymbol,
          wire_transfers: Increase::Models::RoutingNumberListResponse::WireTransfers::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
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
              ach_transfers: Increase::Models::RoutingNumberListResponse::ACHTransfers::TaggedSymbol,
              name: String,
              real_time_payments_transfers: Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers::TaggedSymbol,
              routing_number: String,
              type: Increase::Models::RoutingNumberListResponse::Type::TaggedSymbol,
              wire_transfers: Increase::Models::RoutingNumberListResponse::WireTransfers::TaggedSymbol
            }
          )
      end
      def to_hash; end

      # #/components/schemas/routing_number/properties/ach_transfers
      module ACHTransfers
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::RoutingNumberListResponse::ACHTransfers) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::RoutingNumberListResponse::ACHTransfers::TaggedSymbol) }

        # The routing number can receive this transfer type.
        SUPPORTED = T.let(:supported, Increase::Models::RoutingNumberListResponse::ACHTransfers::TaggedSymbol)

        # The routing number cannot receive this transfer type.
        NOT_SUPPORTED =
          T.let(:not_supported, Increase::Models::RoutingNumberListResponse::ACHTransfers::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::RoutingNumberListResponse::ACHTransfers::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/routing_number/properties/real_time_payments_transfers
      module RealTimePaymentsTransfers
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers) }
        OrSymbol =
          T.type_alias do
            T.any(
              Symbol,
              String,
              Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers::TaggedSymbol
            )
          end

        # The routing number can receive this transfer type.
        SUPPORTED =
          T.let(:supported, Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers::TaggedSymbol)

        # The routing number cannot receive this transfer type.
        NOT_SUPPORTED =
          T.let(
            :not_supported,
            Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers::TaggedSymbol
          )

        sig do
          override
            .returns(T::Array[Increase::Models::RoutingNumberListResponse::RealTimePaymentsTransfers::TaggedSymbol])
        end
        def self.values; end
      end

      # #/components/schemas/routing_number/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::RoutingNumberListResponse::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::RoutingNumberListResponse::Type::TaggedSymbol) }

        ROUTING_NUMBER = T.let(:routing_number, Increase::Models::RoutingNumberListResponse::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::RoutingNumberListResponse::Type::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/routing_number/properties/wire_transfers
      module WireTransfers
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::RoutingNumberListResponse::WireTransfers) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::RoutingNumberListResponse::WireTransfers::TaggedSymbol) }

        # The routing number can receive this transfer type.
        SUPPORTED = T.let(:supported, Increase::Models::RoutingNumberListResponse::WireTransfers::TaggedSymbol)

        # The routing number cannot receive this transfer type.
        NOT_SUPPORTED =
          T.let(:not_supported, Increase::Models::RoutingNumberListResponse::WireTransfers::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::RoutingNumberListResponse::WireTransfers::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
