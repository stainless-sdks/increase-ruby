# frozen_string_literal: true

module Increase
  module Resources
    class OAuthConnections
      # Retrieve an OAuth Connection
      #
      # @param oauth_connection_id [String] The identifier of the OAuth Connection.
      #
      # @param opts [Hash{Symbol=>Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::OAuthConnection]
      #
      def retrieve(oauth_connection_id, opts = {})
        req = {
          method: :get,
          path: ["oauth_connections/%0s", oauth_connection_id],
          model: Increase::Models::OAuthConnection
        }
        @client.request(req, opts)
      end

      # List OAuth Connections
      #
      # @param params [Increase::Models::OAuthConnectionListParams, Hash{Symbol=>Object}] Attributes to send in this request.
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [String] :oauth_application_id Filter results to only include OAuth Connections for a specific OAuth
      #     Application.
      #
      #   @option params [Increase::Models::OAuthConnectionListParams::Status] :status
      #
      # @param opts [Hash{Symbol=>Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::OAuthConnection>]
      #
      def list(params = {}, opts = {})
        parsed = Increase::Models::OAuthConnectionListParams.dump(params)
        req = {
          method: :get,
          path: "oauth_connections",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::OAuthConnection
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
