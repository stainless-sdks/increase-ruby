# frozen_string_literal: true

module Increase
  module Resources
    class Groups
      # Returns details for the currently authenticated Group.
      #
      # @param opts [Hash{Symbol=>Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Group]
      #
      def retrieve(opts = {})
        req = {
          method: :get,
          path: "groups/current",
          model: Increase::Models::Group
        }
        @client.request(req, opts)
      end

      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
