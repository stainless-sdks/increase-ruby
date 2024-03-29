# frozen_string_literal: true

module Increase
  module Resources
    class Events
      def initialize(client:)
        @client = client
      end

      # Retrieve an Event
      #
      # @param event_id [String] The identifier of the Event.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Event]
      def retrieve(event_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/events/#{event_id}"
        request[:model] = Increase::Models::Event
        request.merge!(opts)
        @client.request(request)
      end

      # List Events
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :associated_object_id Filter Events to those belonging to the object with the provided identifier.
      # @option params [Hash] :category
      # @option params [Hash] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Event]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/events"
        query_params = [:associated_object_id, :category, :created_at, :cursor, :limit]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::Event
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
