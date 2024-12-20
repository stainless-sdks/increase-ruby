# frozen_string_literal: true

module Increase
  module Resources
    class EventSubscriptions
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Create an Event Subscription
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :url The URL you'd like us to send webhooks to.
      #   @option params [String, nil] :oauth_connection_id If specified, this subscription will only receive webhooks for Events associated
      #     with the specified OAuth Connection.
      #   @option params [Symbol, Increase::Models::EventSubscriptionCreateParams::SelectedEventCategory, nil] :selected_event_category If specified, this subscription will only receive webhooks for Events with the
      #     specified `category`.
      #   @option params [String, nil] :shared_secret The key that will be used to sign webhooks. If no value is passed, a random
      #     string will be used as default.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::EventSubscription]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/event_subscriptions",
          headers: {"Content-Type" => "application/json"},
          body: params,
          model: Increase::Models::EventSubscription
        }
        @client.request(req, opts)
      end

      # Retrieve an Event Subscription
      #
      # @param event_subscription_id [String] The identifier of the Event Subscription.
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::EventSubscription]
      def retrieve(event_subscription_id, opts = {})
        req = {
          method: :get,
          path: "/event_subscriptions/#{event_subscription_id}",
          model: Increase::Models::EventSubscription
        }
        @client.request(req, opts)
      end

      # Update an Event Subscription
      #
      # @param event_subscription_id [String] The identifier of the Event Subscription.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Symbol, Increase::Models::EventSubscriptionUpdateParams::Status, nil] :status The status to update the Event Subscription with.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::EventSubscription]
      def update(event_subscription_id, params = {}, opts = {})
        req = {
          method: :patch,
          path: "/event_subscriptions/#{event_subscription_id}",
          headers: {"Content-Type" => "application/json"},
          body: params,
          model: Increase::Models::EventSubscription
        }
        @client.request(req, opts)
      end

      # List Event Subscriptions
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :cursor Return the page of entries after this one.
      #   @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::EventSubscription>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/event_subscriptions",
          query: params,
          page: Increase::Page,
          model: Increase::Models::EventSubscription
        }
        @client.request(req, opts)
      end
    end
  end
end
