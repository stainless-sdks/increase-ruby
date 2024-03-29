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
        request = {}
        request[:method] = :post
        request[:path] = "/event_subscriptions"
        body_params = [:url, :selected_event_category, :shared_secret]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::EventSubscription
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve an Event Subscription
      #
      # @param event_subscription_id [String] The identifier of the Event Subscription.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::EventSubscription]
      def retrieve(event_subscription_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/event_subscriptions/#{event_subscription_id}"
        request[:model] = Increase::Models::EventSubscription
        request.merge!(opts)
        @client.request(request)
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
        request = {}
        request[:method] = :patch
        request[:path] = "/event_subscriptions/#{event_subscription_id}"
        body_params = [:status]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::EventSubscription
        request.merge!(opts)
        @client.request(request)
      end

      # List Event Subscriptions
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::EventSubscription]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/event_subscriptions"
        query_params = [:cursor, :idempotency_key, :limit]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::EventSubscription
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
