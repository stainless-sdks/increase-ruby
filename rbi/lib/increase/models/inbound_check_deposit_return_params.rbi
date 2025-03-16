# typed: strong

module Increase
  module Models
    class InboundCheckDepositReturnParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The reason to return the Inbound Check Deposit.
      sig { returns(Symbol) }
      def reason
      end

      sig { params(_: Symbol).returns(Symbol) }
      def reason=(_)
      end

      sig do
        params(reason: Symbol, request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          .returns(T.attached_class)
      end
      def self.new(reason:, request_options: {})
      end

      sig { override.returns({reason: Symbol, request_options: Increase::RequestOptions}) }
      def to_hash
      end

      # The reason to return the Inbound Check Deposit.
      class Reason < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # The check was altered or fictitious.
        ALTERED_OR_FICTITIOUS = :altered_or_fictitious

        # The check was not authorized.
        NOT_AUTHORIZED = :not_authorized

        # The check was a duplicate presentment.
        DUPLICATE_PRESENTMENT = :duplicate_presentment

        # The check was not endorsed.
        ENDORSEMENT_MISSING = :endorsement_missing

        # The check was not endorsed by the payee.
        ENDORSEMENT_IRREGULAR = :endorsement_irregular
      end
    end
  end
end
