# frozen_string_literal: true

module Increase
  module Resources
    class Events
      # Retrieve an Event
      #
      # @overload retrieve(event_id, request_options: {})
      #
      # @param event_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload list(associated_object_id: nil, category: nil, created_at: nil, cursor: nil, limit: nil, request_options: {})
      #
      # @param associated_object_id [String]
      # @param category [Increase::Models::EventListParams::Category]
      # @param created_at [Increase::Models::EventListParams::CreatedAt]
      # @param cursor [String]
      # @param limit [Integer]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
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
