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
        req = {}
        req[:method] = :get
        req[:path] = "/groups/current"
        req[:model] = Increase::Models::Group
        @client.request(req, opts)
      end
    end
  end
end
