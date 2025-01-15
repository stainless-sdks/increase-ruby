# frozen_string_literal: true

module Increase
  module Resources
    class Events
      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end

      # Retrieve an Event
      #
      # @param event_id [String] The identifier of the Event.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Event]
      #
      def retrieve(event_id, opts = {})
        req = {
          method: :get,
          path: ["events/%0s", event_id],
          model: Increase::Models::Event
        }
        @client.request(req, opts)
      end

      # List Events
      #
      # @param params [Increase::Models::EventListParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [String] :associated_object_id Filter Events to those belonging to the object with the provided identifier.
      #
      #   @option params [Increase::Models::EventListParams::Category] :category
      #
      #   @option params [Increase::Models::EventListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::Event>]
      #
      def list(params = {}, opts = {})
        parsed = Increase::Models::EventListParams.dump(params)
        req = {
          method: :get,
          path: "events",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::Event
        }
        @client.request(req, opts)
      end
    end
  end
end
