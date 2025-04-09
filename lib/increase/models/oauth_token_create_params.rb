# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::OAuthTokens#create
    class OAuthTokenCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute grant_type
      #   #/components/schemas/create_an_oauth_token_parameters/properties/grant_type
      #
      #   @return [Symbol, Increase::Models::OAuthTokenCreateParams::GrantType]
      required :grant_type, enum: -> { Increase::Models::OAuthTokenCreateParams::GrantType }

      # @!attribute [r] client_id
      #   #/components/schemas/create_an_oauth_token_parameters/properties/client_id
      #
      #   @return [String, nil]
      optional :client_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :client_id

      # @!attribute [r] client_secret
      #   #/components/schemas/create_an_oauth_token_parameters/properties/client_secret
      #
      #   @return [String, nil]
      optional :client_secret, String

      # @!parse
      #   # @return [String]
      #   attr_writer :client_secret

      # @!attribute [r] code
      #   #/components/schemas/create_an_oauth_token_parameters/properties/code
      #
      #   @return [String, nil]
      optional :code, String

      # @!parse
      #   # @return [String]
      #   attr_writer :code

      # @!attribute [r] production_token
      #   #/components/schemas/create_an_oauth_token_parameters/properties/production_token
      #
      #   @return [String, nil]
      optional :production_token, String

      # @!parse
      #   # @return [String]
      #   attr_writer :production_token

      # @!parse
      #   # @param grant_type [Symbol, Increase::Models::OAuthTokenCreateParams::GrantType]
      #   # @param client_id [String]
      #   # @param client_secret [String]
      #   # @param code [String]
      #   # @param production_token [String]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(grant_type:, client_id: nil, client_secret: nil, code: nil, production_token: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/create_an_oauth_token_parameters/properties/grant_type
      module GrantType
        extend Increase::Internal::Type::Enum

        # An OAuth authorization code.
        AUTHORIZATION_CODE = :authorization_code

        # An OAuth production token.
        PRODUCTION_TOKEN = :production_token

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
