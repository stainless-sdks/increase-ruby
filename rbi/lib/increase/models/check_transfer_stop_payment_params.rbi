# typed: strong

module Increase
  module Models
    class CheckTransferStopPaymentParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The reason why this transfer should be stopped.
      sig { returns(T.nilable(Symbol)) }
      def reason
      end

      sig { params(_: Symbol).returns(Symbol) }
      def reason=(_)
      end

      sig do
        params(reason: Symbol, request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          .returns(T.attached_class)
      end
      def self.new(reason: nil, request_options: {})
      end

      sig { override.returns({reason: Symbol, request_options: Increase::RequestOptions}) }
      def to_hash
      end

      # The reason why this transfer should be stopped.
      class Reason < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # The check could not be delivered.
        MAIL_DELIVERY_FAILED = :mail_delivery_failed

        # The check was not authorized.
        NOT_AUTHORIZED = :not_authorized

        # The check was stopped for another reason.
        UNKNOWN = :unknown
      end
    end
  end
end
