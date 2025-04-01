# frozen_string_literal: true

module Increase
  module Resources
    class Events
      # Retrieve an Event
      #
      # @param event_id [String] The identifier of the Event.
      #
      # @param params [Increase::Models::EventRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::Event]
      #
      # @see Increase::Models::EventRetrieveParams
      def retrieve(event_id, params = {})
        @client.request(
          method: :get,
          path: ["events/%1$s", event_id],
          model: Increase::Models::Event,
          options: params[:request_options]
        )
      end

      # List Events
      #
      # @param params [Increase::Models::EventListParams, Hash{Symbol=>Object}] .
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
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::Event>]
      #
      # @see Increase::Models::EventListParams
      def list(params = {})
        parsed, options = Increase::Models::EventListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "events",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::Event,
          options: options
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
