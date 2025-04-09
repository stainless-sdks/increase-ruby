# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::OAuthTokens#create
    class OAuthToken < Increase::Internal::Type::BaseModel
      # @!attribute access_token
      #   #/components/schemas/oauth_token/properties/access_token
      #
      #   @return [String]
      required :access_token, String

      # @!attribute token_type
      #   #/components/schemas/oauth_token/properties/token_type
      #
      #   @return [Symbol, Increase::Models::OAuthToken::TokenType]
      required :token_type, enum: -> { Increase::Models::OAuthToken::TokenType }

      # @!attribute type
      #   #/components/schemas/oauth_token/properties/type
      #
      #   @return [Symbol, Increase::Models::OAuthToken::Type]
      required :type, enum: -> { Increase::Models::OAuthToken::Type }

      # @!parse
      #   # #/components/schemas/oauth_token
      #   #
      #   # @param access_token [String]
      #   # @param token_type [Symbol, Increase::Models::OAuthToken::TokenType]
      #   # @param type [Symbol, Increase::Models::OAuthToken::Type]
      #   #
      #   def initialize(access_token:, token_type:, type:, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/oauth_token/properties/token_type
      #
      # @see Increase::Models::OAuthToken#token_type
      module TokenType
        extend Increase::Internal::Type::Enum

        BEARER = :bearer

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/oauth_token/properties/type
      #
      # @see Increase::Models::OAuthToken#type
      module Type
        extend Increase::Internal::Type::Enum

        OAUTH_TOKEN = :oauth_token

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
