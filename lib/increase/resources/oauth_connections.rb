# frozen_string_literal: true

module Increase
  module Resources
    class OAuthConnections
      def initialize(client:)
        @client = client
      end

      # Retrieve an OAuth Connection
      #
      # @param oauth_connection_id [String] The identifier of the OAuth Connection.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::OAuthConnection]
      def retrieve(oauth_connection_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/oauth_connections/#{oauth_connection_id}"
        request[:model] = Increase::Models::OAuthConnection
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
