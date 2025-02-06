# typed: strong

module Increase
  module Models
    class CheckTransferStopPaymentParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Symbol)) }
      attr_reader :reason

      sig { params(reason: Symbol).void }
      attr_writer :reason

      sig do
        params(
          reason: Symbol,
          request_options: T.any(
            Increase::RequestOptions,
            T::Hash[Symbol, T.anything]
          )
        ).void
      end
      def initialize(reason: nil, request_options: {})
      end

      sig { override.returns({reason: Symbol, request_options: Increase::RequestOptions}) }
      def to_hash
      end

      class Reason < Increase::Enum
        abstract!

        # The check could not be delivered.
        MAIL_DELIVERY_FAILED = :mail_delivery_failed

        # The check was not authorized.
        NOT_AUTHORIZED = :not_authorized

        # The check was stopped for another reason.
        UNKNOWN = :unknown

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
