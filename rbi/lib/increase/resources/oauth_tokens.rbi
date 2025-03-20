# typed: strong

module Increase
  module Resources
    class OAuthTokens
      # Create an OAuth Token
      sig do
        params(
          grant_type: Increase::Models::OAuthTokenCreateParams::GrantType::OrSymbol,
          client_id: String,
          client_secret: String,
          code: String,
          production_token: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::OAuthToken)
      end
      def create(
        # The credential you request in exchange for the code. In Production, this is
        #   always `authorization_code`. In Sandbox, you can pass either enum value.
        grant_type:,
        # The public identifier for your application.
        client_id: nil,
        # The secret that confirms you own the application. This is redundent given that
        #   the request is made with your API key but it's a required component of OAuth
        #   2.0.
        client_secret: nil,
        # The authorization code generated by the user and given to you as a query
        #   parameter.
        code: nil,
        # The production token you want to exchange for a sandbox token. This is only
        #   available in Sandbox. Set `grant_type` to `production_token` to use this
        #   parameter.
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
