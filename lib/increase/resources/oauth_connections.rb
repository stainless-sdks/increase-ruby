# frozen_string_literal: true

module Increase
  module Resources
    class OAuthConnections
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Retrieve an OAuth Connection
      #
      # @param oauth_connection_id [String] The identifier of the OAuth Connection.
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::OAuthConnection]
      def retrieve(oauth_connection_id, opts = {})
        req = {
          method: :get,
          path: "/oauth_connections/#{oauth_connection_id}",
          model: Increase::Models::OAuthConnection
        }
        @client.request(req, opts)
      end

      # List OAuth Connections
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :cursor Return the page of entries after this one.
      #   @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #   @option params [Increase::Models::OAuthConnectionListParams::Status, nil] :status
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::OAuthConnection>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/oauth_connections",
          query: params,
          page: Increase::Page,
          model: Increase::Models::OAuthConnection
        }
        @client.request(req, opts)
      end
    end
  end
end
