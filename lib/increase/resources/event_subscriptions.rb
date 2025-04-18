# frozen_string_literal: true

module Increase
  module Resources
    class EventSubscriptions
      # @api private
      private def initialize_resources; end

      # Create an Event Subscription
      #
      # @overload create(url:, oauth_connection_id: nil, selected_event_category: nil, shared_secret: nil, request_options: {})
      #
      # @param url [String]
      # @param oauth_connection_id [String]
      # @param selected_event_category [Symbol, Increase::Models::EventSubscriptionCreateParams::SelectedEventCategory]
      # @param shared_secret [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::EventSubscription]
      #
      # @see Increase::Models::EventSubscriptionCreateParams
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
      # @overload retrieve(event_subscription_id, request_options: {})
      #
      # @param event_subscription_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::EventSubscription]
      #
      # @see Increase::Models::EventSubscriptionRetrieveParams
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
      # @overload update(event_subscription_id, status: nil, request_options: {})
      #
      # @param event_subscription_id [String]
      # @param status [Symbol, Increase::Models::EventSubscriptionUpdateParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::EventSubscription]
      #
      # @see Increase::Models::EventSubscriptionUpdateParams
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
      # @overload list(cursor: nil, idempotency_key: nil, limit: nil, request_options: {})
      #
      # @param cursor [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::EventSubscription>]
      #
      # @see Increase::Models::EventSubscriptionListParams
      def list(params = {})
        parsed, options = Increase::Models::EventSubscriptionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "event_subscriptions",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::EventSubscription,
          options: options
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
        initialize_resources
      end
    end
  end
end
