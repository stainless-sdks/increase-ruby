# frozen_string_literal: true

module Increase
  module Resources
    class OAuthConnections
      # Retrieve an OAuth Connection
      #
      # @param oauth_connection_id [String] The identifier of the OAuth Connection.
      #
      # @param params [Increase::Models::OAuthConnectionRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::OAuthConnection]
      def retrieve(oauth_connection_id, params = {})
        @client.request(
          method: :get,
          path: ["oauth_connections/%0s", oauth_connection_id],
          model: Increase::Models::OAuthConnection,
          options: params[:request_options]
        )
      end

      # List OAuth Connections
      #
      # @param params [Increase::Models::OAuthConnectionListParams, Hash{Symbol=>Object}] .
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
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::OAuthConnection>]
      def list(params = {})
        parsed, options = Increase::Models::OAuthConnectionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "oauth_connections",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::OAuthConnection,
          options: options
        )
      end

      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
