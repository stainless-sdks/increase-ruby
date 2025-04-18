# frozen_string_literal: true

module Increase
  module Resources
    class OAuthTokens
      # @api private
      private def initialize_resources; end

      # Create an OAuth Token
      #
      # @overload create(grant_type:, client_id: nil, client_secret: nil, code: nil, production_token: nil, request_options: {})
      #
      # @param grant_type [Symbol, Increase::Models::OAuthTokenCreateParams::GrantType]
      # @param client_id [String]
      # @param client_secret [String]
      # @param code [String]
      # @param production_token [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::OAuthToken]
      #
      # @see Increase::Models::OAuthTokenCreateParams
      def create(params)
        parsed, options = Increase::Models::OAuthTokenCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "oauth/tokens",
          body: parsed,
          model: Increase::Models::OAuthToken,
          options: options
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
        initialize_resources
      end
    end
  end
end
