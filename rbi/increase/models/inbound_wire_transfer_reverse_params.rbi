# typed: strong

module Increase
  module Models
    class InboundWireTransferReverseParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(Increase::InboundWireTransferReverseParams, Increase::Internal::AnyHash) }

      # Reason for the reversal.
      sig { returns(Increase::InboundWireTransferReverseParams::Reason::OrSymbol) }
      attr_accessor :reason

      sig do
        params(
          reason: Increase::InboundWireTransferReverseParams::Reason::OrSymbol,
          request_options: Increase::RequestOptions::OrHash
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Reason for the reversal.
      reason:,
        request_options: {}
      ); end

      sig do
        override
          .returns(
            {
              reason: Increase::InboundWireTransferReverseParams::Reason::OrSymbol,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      # Reason for the reversal.
      module Reason
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::InboundWireTransferReverseParams::Reason) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        # The inbound wire transfer was a duplicate.
        DUPLICATE = T.let(:duplicate, Increase::InboundWireTransferReverseParams::Reason::TaggedSymbol)

        # The recipient of the wire transfer requested the funds be returned to the sender.
        CREDITOR_REQUEST =
          T.let(:creditor_request, Increase::InboundWireTransferReverseParams::Reason::TaggedSymbol)

        sig { override.returns(T::Array[Increase::InboundWireTransferReverseParams::Reason::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
