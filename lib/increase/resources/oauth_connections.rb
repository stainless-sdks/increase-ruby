# frozen_string_literal: true

module Increase
  module Resources
    class OAuthConnectionsResource
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

      # List OAuth Connections
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::OAuthConnection]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/oauth_connections"
        query_params = [:cursor, :limit]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::OAuthConnection
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
