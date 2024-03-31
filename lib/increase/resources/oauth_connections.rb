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
        req = {}
        req[:method] = :get
        req[:path] = "/oauth_connections/#{oauth_connection_id}"
        req[:model] = Increase::Models::OAuthConnection
        @client.request(req, opts)
      end
    end
  end
end
