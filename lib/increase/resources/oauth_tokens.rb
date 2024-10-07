# frozen_string_literal: true

module Increase
  module Resources
    class OAuthTokens
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Create an OAuth Token
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol, GrantType] :grant_type The credential you request in exchange for the code. In Production, this is
      #   always `authorization_code`. In Sandbox, you can pass either enum value.
      # @option params [String, nil] :client_id The public identifier for your application.
      # @option params [String, nil] :client_secret The secret that confirms you own the application. This is redundent given that
      #   the request is made with your API key but it's a required component of OAuth
      #   2.0.
      # @option params [String, nil] :code The authorization code generated by the user and given to you as a query
      #   parameter.
      # @option params [String, nil] :production_token The production token you want to exchange for a sandbox token. This is only
      #   available in Sandbox. Set `grant_type` to `production_token` to use this
      #   parameter.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::OAuthToken]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/oauth/tokens",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::OAuthToken
        }
        @client.request(req, opts)
      end
    end
  end
end
