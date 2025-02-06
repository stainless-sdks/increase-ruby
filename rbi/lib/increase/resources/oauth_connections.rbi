# typed: strong

module Increase
  module Resources
    class OAuthConnections
      sig do
        params(
          oauth_connection_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::OAuthConnection)
      end
      def retrieve(oauth_connection_id, request_options: {})
      end

      sig do
        params(
          cursor: String,
          limit: Integer,
          oauth_application_id: String,
          status: Increase::Models::OAuthConnectionListParams::Status,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Page[Increase::Models::OAuthConnection])
      end
      def list(cursor: nil, limit: nil, oauth_application_id: nil, status: nil, request_options: {})
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
