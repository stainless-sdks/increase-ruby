# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::OAuthTokens#create
    class OAuthTokenCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute grant_type
      #   The credential you request in exchange for the code. In Production, this is
      #   always `authorization_code`. In Sandbox, you can pass either enum value.
      #
      #   @return [Symbol, Increase::Models::OAuthTokenCreateParams::GrantType]
      required :grant_type, enum: -> { Increase::Models::OAuthTokenCreateParams::GrantType }

      # @!attribute client_id
      #   The public identifier for your application.
      #
      #   @return [String, nil]
      optional :client_id, String

      # @!attribute client_secret
      #   The secret that confirms you own the application. This is redundent given that
      #   the request is made with your API key but it's a required component of OAuth
      #   2.0.
      #
      #   @return [String, nil]
      optional :client_secret, String

      # @!attribute code
      #   The authorization code generated by the user and given to you as a query
      #   parameter.
      #
      #   @return [String, nil]
      optional :code, String

      # @!attribute production_token
      #   The production token you want to exchange for a sandbox token. This is only
      #   available in Sandbox. Set `grant_type` to `production_token` to use this
      #   parameter.
      #
      #   @return [String, nil]
      optional :production_token, String

      # @!method initialize(grant_type:, client_id: nil, client_secret: nil, code: nil, production_token: nil, request_options: {})
      #   @param grant_type [Symbol, Increase::Models::OAuthTokenCreateParams::GrantType]
      #   @param client_id [String]
      #   @param client_secret [String]
      #   @param code [String]
      #   @param production_token [String]
      #   @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]

      # The credential you request in exchange for the code. In Production, this is
      # always `authorization_code`. In Sandbox, you can pass either enum value.
      module GrantType
        extend Increase::Internal::Type::Enum

        # An OAuth authorization code.
        AUTHORIZATION_CODE = :authorization_code

        # An OAuth production token.
        PRODUCTION_TOKEN = :production_token

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
