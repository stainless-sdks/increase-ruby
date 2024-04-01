# frozen_string_literal: true

module Increase
  module Resources
    class EventSubscriptions
      def initialize(client:)
        @client = client
      end

      # Create an Event Subscription
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :url The URL you'd like us to send webhooks to.
      # @option params [Symbol] :selected_event_category If specified, this subscription will only receive webhooks for Events with the
      #   specified `category`.
      # @option params [String] :shared_secret The key that will be used to sign webhooks. If no value is passed, a random
      #   string will be used as default.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::EventSubscription]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/event_subscriptions"
        req[:body] = params
        req[:model] = Increase::Models::EventSubscription
        @client.request(req, opts)
      end

      # Retrieve an Event Subscription
      #
      # @param event_subscription_id [String] The identifier of the Event Subscription.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::EventSubscription]
      def retrieve(event_subscription_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/event_subscriptions/#{event_subscription_id}"
        req[:model] = Increase::Models::EventSubscription
        @client.request(req, opts)
      end

      # Update an Event Subscription
      #
      # @param event_subscription_id [String] The identifier of the Event Subscription.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol] :status The status to update the Event Subscription with.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::EventSubscription]
      def update(event_subscription_id, params = {}, opts = {})
        req = {}
        req[:method] = :patch
        req[:path] = "/event_subscriptions/#{event_subscription_id}"
        req[:body] = params
        req[:model] = Increase::Models::EventSubscription
        @client.request(req, opts)
      end
    end
  end
end
