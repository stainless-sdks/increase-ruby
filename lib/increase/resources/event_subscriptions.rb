# frozen_string_literal: true

module Increase
  module Resources
    class EventSubscriptions
      # Create an Event Subscription
      #
      # @param params [Increase::Models::EventSubscriptionCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :url The URL you'd like us to send webhooks to.
      #
      #   @option params [String] :oauth_connection_id If specified, this subscription will only receive webhooks for Events associated
      #     with the specified OAuth Connection.
      #
      #   @option params [Symbol, Increase::Models::EventSubscriptionCreateParams::SelectedEventCategory] :selected_event_category If specified, this subscription will only receive webhooks for Events with the
      #     specified `category`.
      #
      #   @option params [String] :shared_secret The key that will be used to sign webhooks. If no value is passed, a random
      #     string will be used as default.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::EventSubscription]
      def create(params)
        parsed, options = Increase::Models::EventSubscriptionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "event_subscriptions",
          body: parsed,
          model: Increase::Models::EventSubscription,
          options: options
        )
      end

      # Retrieve an Event Subscription
      #
      # @param event_subscription_id [String] The identifier of the Event Subscription.
      #
      # @param params [Increase::Models::EventSubscriptionRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::EventSubscription]
      def retrieve(event_subscription_id, params = {})
        @client.request(
          method: :get,
          path: ["event_subscriptions/%1$s", event_subscription_id],
          model: Increase::Models::EventSubscription,
          options: params[:request_options]
        )
      end

      # Update an Event Subscription
      #
      # @param event_subscription_id [String] The identifier of the Event Subscription.
      #
      # @param params [Increase::Models::EventSubscriptionUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, Increase::Models::EventSubscriptionUpdateParams::Status] :status The status to update the Event Subscription with.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::EventSubscription]
      def update(event_subscription_id, params = {})
        parsed, options = Increase::Models::EventSubscriptionUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["event_subscriptions/%1$s", event_subscription_id],
          body: parsed,
          model: Increase::Models::EventSubscription,
          options: options
        )
      end

      # List Event Subscriptions
      #
      # @param params [Increase::Models::EventSubscriptionListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::EventSubscription>]
      def list(params = {})
        parsed, options = Increase::Models::EventSubscriptionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "event_subscriptions",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::EventSubscription,
          options: options
        )
      end

      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
