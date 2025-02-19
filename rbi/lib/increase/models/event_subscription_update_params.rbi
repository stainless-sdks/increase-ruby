# typed: strong

module Increase
  module Models
    class EventSubscriptionUpdateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig do
        params(
          status: Symbol,
          request_options: T.any(
            Increase::RequestOptions,
            T::Hash[Symbol, T.anything]
          )
        ).void
      end
      def initialize(status: nil, request_options: {})
      end

      sig { override.returns({status: Symbol, request_options: Increase::RequestOptions}) }
      def to_hash
      end

      class Status < Increase::Enum
        abstract!

        # The subscription is active and Events will be delivered normally.
        ACTIVE = :active

        # The subscription is temporarily disabled and Events will not be delivered.
        DISABLED = :disabled

        # The subscription is permanently disabled and Events will not be delivered.
        DELETED = :deleted

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
