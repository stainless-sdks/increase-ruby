# typed: strong

module Increase
  module Resources
    class EventSubscriptions
      # Create an Event Subscription
      sig do
        params(
          url: String,
          oauth_connection_id: String,
          selected_event_category:
            Increase::Models::EventSubscriptionCreateParams::SelectedEventCategory::OrSymbol,
          shared_secret: String,
          request_options: Increase::RequestOpts
        ).returns(Increase::Models::EventSubscription)
      end
      def create(
        # The URL you'd like us to send webhooks to.
        url:,
        # If specified, this subscription will only receive webhooks for Events associated
        # with the specified OAuth Connection.
        oauth_connection_id: nil,
        # If specified, this subscription will only receive webhooks for Events with the
        # specified `category`.
        selected_event_category: nil,
        # The key that will be used to sign webhooks. If no value is passed, a random
        # string will be used as default.
        shared_secret: nil,
        request_options: {}
      )
      end

      # Retrieve an Event Subscription
      sig do
        params(
          event_subscription_id: String,
          request_options: Increase::RequestOpts
        ).returns(Increase::Models::EventSubscription)
      end
      def retrieve(
        # The identifier of the Event Subscription.
        event_subscription_id,
        request_options: {}
      )
      end

      # Update an Event Subscription
      sig do
        params(
          event_subscription_id: String,
          status:
            Increase::Models::EventSubscriptionUpdateParams::Status::OrSymbol,
          request_options: Increase::RequestOpts
        ).returns(Increase::Models::EventSubscription)
      end
      def update(
        # The identifier of the Event Subscription.
        event_subscription_id,
        # The status to update the Event Subscription with.
        status: nil,
        request_options: {}
      )
      end

      # List Event Subscriptions
      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          request_options: Increase::RequestOpts
        ).returns(Increase::Internal::Page[Increase::Models::EventSubscription])
      end
      def list(
        # Return the page of entries after this one.
        cursor: nil,
        # Filter records to the one with the specified `idempotency_key` you chose for
        # that object. This value is unique across Increase and is used to ensure that a
        # request is only processed once. Learn more about
        # [idempotency](https://increase.com/documentation/idempotency-keys).
        idempotency_key: nil,
        # Limit the size of the list that is returned. The default (and maximum) is 100
        # objects.
        limit: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
