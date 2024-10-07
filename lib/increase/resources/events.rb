# frozen_string_literal: true

module Increase
  module Resources
    class Events
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Retrieve an Event
      #
      # @param event_id [String] The identifier of the Event.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Event]
      def retrieve(event_id, opts = {})
        req = {
          method: :get,
          path: "/events/#{event_id}",
          model: Increase::Models::Event
        }
        @client.request(req, opts)
      end

      # List Events
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :associated_object_id Filter Events to those belonging to the object with the provided identifier.
      # @option params [Category, nil] :category
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::Event>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/events",
          query: params,
          page: Increase::Page,
          model: Increase::Models::Event
        }
        @client.request(req, opts)
      end
    end
  end
end
