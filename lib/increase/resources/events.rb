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
    end
  end
end
