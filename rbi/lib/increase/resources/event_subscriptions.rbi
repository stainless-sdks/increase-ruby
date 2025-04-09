# typed: strong

module Increase
  module Resources
    class EventSubscriptions
      # Create an Event Subscription
      sig do
        params(
          url: String,
          oauth_connection_id: String,
          selected_event_category: Increase::Models::EventSubscriptionCreateParams::SelectedEventCategory::OrSymbol,
          shared_secret: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::EventSubscription)
      end
      def create(
        # #/components/schemas/create_an_event_subscription_parameters/properties/url
        url:,
        # #/components/schemas/create_an_event_subscription_parameters/properties/oauth_connection_id
        oauth_connection_id: nil,
        # #/components/schemas/create_an_event_subscription_parameters/properties/selected_event_category
        selected_event_category: nil,
        # #/components/schemas/create_an_event_subscription_parameters/properties/shared_secret
        shared_secret: nil,
        request_options: {}
      ); end
      # Retrieve an Event Subscription
      sig do
        params(
          event_subscription_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::EventSubscription)
      end
      def retrieve(
        # #/paths//event_subscriptions/{event_subscription_id}/get/parameters/0/schema
        event_subscription_id,
        request_options: {}
      ); end
      # Update an Event Subscription
      sig do
        params(
          event_subscription_id: String,
          status: Increase::Models::EventSubscriptionUpdateParams::Status::OrSymbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::EventSubscription)
      end
      def update(
        # #/paths//event_subscriptions/{event_subscription_id}/patch/parameters/0/schema
        event_subscription_id,
        # #/components/schemas/update_an_event_subscription_parameters/properties/status
        status: nil,
        request_options: {}
      ); end
      # List Event Subscriptions
      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::EventSubscription])
      end
      def list(
        # #/paths//event_subscriptions/get/parameters/0/schema
        cursor: nil,
        # #/paths//event_subscriptions/get/parameters/2/schema
        idempotency_key: nil,
        # #/paths//event_subscriptions/get/parameters/1/schema
        limit: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
