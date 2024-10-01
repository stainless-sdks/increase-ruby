# frozen_string_literal: true

module Increase
  module Models
    class OAuthToken < BaseModel
      # @!attribute [rw] access_token
      #   You may use this token in place of an API key to make OAuth requests on a user's behalf.
      #   @return [String]
      required :access_token, String

      # @!attribute [rw] token_type
      #   The type of OAuth token.
      #   @return [Symbol, Increase::Models::OAuthToken::TokenType]
      required :token_type, enum: -> { Increase::Models::OAuthToken::TokenType }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `oauth_token`.
      #   @return [Symbol, Increase::Models::OAuthToken::Type]
      required :type, enum: -> { Increase::Models::OAuthToken::Type }

      # The type of OAuth token.
      class TokenType < Increase::Enum
        BEARER = :bearer
      end

      # A constant representing the object's type. For this resource it will always be `oauth_token`.
      class Type < Increase::Enum
        OAUTH_TOKEN = :oauth_token
      end
    end
  end
end
