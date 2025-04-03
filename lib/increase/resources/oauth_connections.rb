# frozen_string_literal: true

module Increase
  module Resources
    class OAuthConnections
      # Retrieve an OAuth Connection
      #
      # @overload retrieve(oauth_connection_id, request_options: {})
      #
      # @param oauth_connection_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::OAuthConnection]
      #
      # @see Increase::Models::OAuthConnectionRetrieveParams
      def retrieve(oauth_connection_id, params = {})
        @client.request(
          method: :get,
          path: ["oauth_connections/%1$s", oauth_connection_id],
          model: Increase::Models::OAuthConnection,
          options: params[:request_options]
        )
      end

      # List OAuth Connections
      #
      # @overload list(cursor: nil, limit: nil, oauth_application_id: nil, status: nil, request_options: {})
      #
      # @param cursor [String]
      # @param limit [Integer]
      # @param oauth_application_id [String]
      # @param status [Increase::Models::OAuthConnectionListParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::OAuthConnection>]
      #
      # @see Increase::Models::OAuthConnectionListParams
      def list(params = {})
        parsed, options = Increase::Models::OAuthConnectionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "oauth_connections",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::OAuthConnection,
          options: options
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
