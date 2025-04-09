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
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::OAuthToken)
      end
      def create(
        # #/components/schemas/create_an_oauth_token_parameters/properties/grant_type
        grant_type:,
        # #/components/schemas/create_an_oauth_token_parameters/properties/client_id
        client_id: nil,
        # #/components/schemas/create_an_oauth_token_parameters/properties/client_secret
        client_secret: nil,
        # #/components/schemas/create_an_oauth_token_parameters/properties/code
        code: nil,
        # #/components/schemas/create_an_oauth_token_parameters/properties/production_token
        production_token: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
