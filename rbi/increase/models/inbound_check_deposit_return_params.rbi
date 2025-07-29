# typed: strong

module Increase
  module Models
    class InboundCheckDepositReturnParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(Increase::InboundCheckDepositReturnParams, Increase::Internal::AnyHash) }

      # The reason to return the Inbound Check Deposit.
      sig { returns(Increase::InboundCheckDepositReturnParams::Reason::OrSymbol) }
      attr_accessor :reason

      sig do
        params(
          reason: Increase::InboundCheckDepositReturnParams::Reason::OrSymbol,
          request_options: Increase::RequestOptions::OrHash
        )
          .returns(T.attached_class)
      end
      def self.new(
        # The reason to return the Inbound Check Deposit.
      reason:,
        request_options: {}
      ); end

      sig do
        override
          .returns(
            {
              reason: Increase::InboundCheckDepositReturnParams::Reason::OrSymbol,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      # The reason to return the Inbound Check Deposit.
      module Reason
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::InboundCheckDepositReturnParams::Reason) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        # The check was altered or fictitious.
        ALTERED_OR_FICTITIOUS =
          T.let(:altered_or_fictitious, Increase::InboundCheckDepositReturnParams::Reason::TaggedSymbol)

        # The check was not authorized.
        NOT_AUTHORIZED = T.let(:not_authorized, Increase::InboundCheckDepositReturnParams::Reason::TaggedSymbol)

        # The check was a duplicate presentment.
        DUPLICATE_PRESENTMENT =
          T.let(:duplicate_presentment, Increase::InboundCheckDepositReturnParams::Reason::TaggedSymbol)

        # The check was not endorsed.
        ENDORSEMENT_MISSING =
          T.let(:endorsement_missing, Increase::InboundCheckDepositReturnParams::Reason::TaggedSymbol)

        # The check was not endorsed by the payee.
        ENDORSEMENT_IRREGULAR =
          T.let(:endorsement_irregular, Increase::InboundCheckDepositReturnParams::Reason::TaggedSymbol)

        sig { override.returns(T::Array[Increase::InboundCheckDepositReturnParams::Reason::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
