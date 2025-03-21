# typed: strong

module Increase
  module Models
    class InboundCheckDepositReturnParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The reason to return the Inbound Check Deposit.
      sig { returns(Increase::Models::InboundCheckDepositReturnParams::Reason::OrSymbol) }
      attr_accessor :reason

      sig do
        params(
          reason: Increase::Models::InboundCheckDepositReturnParams::Reason::OrSymbol,
          request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(reason:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              reason: Increase::Models::InboundCheckDepositReturnParams::Reason::OrSymbol,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      # The reason to return the Inbound Check Deposit.
      module Reason
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundCheckDepositReturnParams::Reason) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::InboundCheckDepositReturnParams::Reason::TaggedSymbol) }

        # The check was altered or fictitious.
        ALTERED_OR_FICTITIOUS =
          T.let(:altered_or_fictitious, Increase::Models::InboundCheckDepositReturnParams::Reason::TaggedSymbol)

        # The check was not authorized.
        NOT_AUTHORIZED =
          T.let(:not_authorized, Increase::Models::InboundCheckDepositReturnParams::Reason::TaggedSymbol)

        # The check was a duplicate presentment.
        DUPLICATE_PRESENTMENT =
          T.let(:duplicate_presentment, Increase::Models::InboundCheckDepositReturnParams::Reason::TaggedSymbol)

        # The check was not endorsed.
        ENDORSEMENT_MISSING =
          T.let(:endorsement_missing, Increase::Models::InboundCheckDepositReturnParams::Reason::TaggedSymbol)

        # The check was not endorsed by the payee.
        ENDORSEMENT_IRREGULAR =
          T.let(:endorsement_irregular, Increase::Models::InboundCheckDepositReturnParams::Reason::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::InboundCheckDepositReturnParams::Reason::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
