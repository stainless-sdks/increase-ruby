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

      # Create a new instance of OAuthToken from a Hash of raw data.
      #
      # @overload initialize(access_token: nil, token_type: nil, type: nil)
      # @param access_token [String] You may use this token in place of an API key to make OAuth requests on a user's
      #   behalf.
      # @param token_type [String] The type of OAuth token.
      # @param type [String] A constant representing the object's type. For this resource it will always be
      #   `oauth_token`.
      def initialize(data = {})
        super
      end
    end
  end
end
