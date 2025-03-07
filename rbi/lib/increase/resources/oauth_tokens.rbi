# typed: strong

module Increase
  module Resources
    class OAuthTokens
      sig do
        params(
          grant_type: Symbol,
          client_id: String,
          client_secret: String,
          code: String,
          production_token: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::OAuthToken)
      end
      def create(
        grant_type:,
        client_id: nil,
        client_secret: nil,
        code: nil,
        production_token: nil,
        request_options: {}
      )
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
