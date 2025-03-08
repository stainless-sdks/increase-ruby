# typed: strong

module Increase
  module Resources
    class OAuthApplications
      sig do
        params(
          oauth_application_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::OAuthApplication)
      end
      def retrieve(oauth_application_id, request_options: {})
      end

      sig do
        params(
          created_at: Increase::Models::OAuthApplicationListParams::CreatedAt,
          cursor: String,
          limit: Integer,
          status: Increase::Models::OAuthApplicationListParams::Status,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::OAuthApplication])
      end
      def list(created_at: nil, cursor: nil, limit: nil, status: nil, request_options: {})
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
