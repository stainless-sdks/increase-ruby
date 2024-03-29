# frozen_string_literal: true

module Increase
  module Resources
    class Groups
      def initialize(client:)
        @client = client
      end

      # Returns details for the currently authenticated Group.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Group]
      def retrieve_details(opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/groups/current"
        request[:model] = Increase::Models::Group
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
