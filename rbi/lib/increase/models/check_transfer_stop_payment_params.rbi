# typed: strong

module Increase
  module Models
    class CheckTransferStopPaymentParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The reason why this transfer should be stopped.
      sig { returns(T.nilable(Increase::Models::CheckTransferStopPaymentParams::Reason::OrSymbol)) }
      def reason
      end

      sig do
        params(_: Increase::Models::CheckTransferStopPaymentParams::Reason::OrSymbol)
          .returns(Increase::Models::CheckTransferStopPaymentParams::Reason::OrSymbol)
      end
      def reason=(_)
      end

      sig do
        params(
          reason: Increase::Models::CheckTransferStopPaymentParams::Reason::OrSymbol,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(reason: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              reason: Increase::Models::CheckTransferStopPaymentParams::Reason::OrSymbol,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      # The reason why this transfer should be stopped.
      module Reason
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckTransferStopPaymentParams::Reason) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::CheckTransferStopPaymentParams::Reason::TaggedSymbol) }

        # The check could not be delivered.
        MAIL_DELIVERY_FAILED =
          T.let(:mail_delivery_failed, Increase::Models::CheckTransferStopPaymentParams::Reason::OrSymbol)

        # The check was not authorized.
        NOT_AUTHORIZED =
          T.let(:not_authorized, Increase::Models::CheckTransferStopPaymentParams::Reason::OrSymbol)

        # The check was stopped for another reason.
        UNKNOWN = T.let(:unknown, Increase::Models::CheckTransferStopPaymentParams::Reason::OrSymbol)
      end
    end
  end
end
