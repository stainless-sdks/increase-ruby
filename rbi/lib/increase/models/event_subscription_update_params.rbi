# typed: strong

module Increase
  module Models
    class EventSubscriptionUpdateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The status to update the Event Subscription with.
      sig { returns(T.nilable(Increase::Models::EventSubscriptionUpdateParams::Status::OrSymbol)) }
      def status
      end

      sig do
        params(_: Increase::Models::EventSubscriptionUpdateParams::Status::OrSymbol)
          .returns(Increase::Models::EventSubscriptionUpdateParams::Status::OrSymbol)
      end
      def status=(_)
      end

      sig do
        params(
          status: Increase::Models::EventSubscriptionUpdateParams::Status::OrSymbol,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(status: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              status: Increase::Models::EventSubscriptionUpdateParams::Status::OrSymbol,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      # The status to update the Event Subscription with.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::EventSubscriptionUpdateParams::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::EventSubscriptionUpdateParams::Status::TaggedSymbol) }

        # The subscription is active and Events will be delivered normally.
        ACTIVE = T.let(:active, Increase::Models::EventSubscriptionUpdateParams::Status::OrSymbol)

        # The subscription is temporarily disabled and Events will not be delivered.
        DISABLED = T.let(:disabled, Increase::Models::EventSubscriptionUpdateParams::Status::OrSymbol)

        # The subscription is permanently disabled and Events will not be delivered.
        DELETED = T.let(:deleted, Increase::Models::EventSubscriptionUpdateParams::Status::OrSymbol)
      end
    end
  end
end
