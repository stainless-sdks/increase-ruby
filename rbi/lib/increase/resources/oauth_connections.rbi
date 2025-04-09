# typed: strong

module Increase
  module Resources
    class OAuthConnections
      # Retrieve an OAuth Connection
      sig do
        params(
          oauth_connection_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::OAuthConnection)
      end
      def retrieve(
        # #/paths//oauth_connections/{oauth_connection_id}/get/parameters/0/schema
        oauth_connection_id,
        request_options: {}
      ); end
      # List OAuth Connections
      sig do
        params(
          cursor: String,
          limit: Integer,
          oauth_application_id: String,
          status: T.any(Increase::Models::OAuthConnectionListParams::Status, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::OAuthConnection])
      end
      def list(
        # #/paths//oauth_connections/get/parameters/0/schema
        cursor: nil,
        # #/paths//oauth_connections/get/parameters/1/schema
        limit: nil,
        # #/paths//oauth_connections/get/parameters/3/schema
        oauth_application_id: nil,
        status: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
