# frozen_string_literal: true

module Increase
  module Models
    # @example
    # ```ruby
    # oauth_token => {
    #   access_token: String,
    #   token_type: Increase::Models::OAuthToken::TokenType,
    #   type: Increase::Models::OAuthToken::Type
    # }
    # ```
    class OAuthToken < Increase::BaseModel
      # @!attribute access_token
      #   You may use this token in place of an API key to make OAuth requests on a user's
      #     behalf.
      #
      #   @return [String]
      required :access_token, String

      # @!attribute token_type
      #   The type of OAuth token.
      #
      #   @return [Symbol, Increase::Models::OAuthToken::TokenType]
      required :token_type, enum: -> { Increase::Models::OAuthToken::TokenType }

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be
      #     `oauth_token`.
      #
      #   @return [Symbol, Increase::Models::OAuthToken::Type]
      required :type, enum: -> { Increase::Models::OAuthToken::Type }

      # @!parse
      #   # A token that is returned to your application when a user completes the OAuth
      #   #   flow and may be used to authenticate requests. Learn more about OAuth
      #   #   [here](/documentation/oauth).
      #   #
      #   # @param access_token [String]
      #   # @param token_type [Symbol, Increase::Models::OAuthToken::TokenType]
      #   # @param type [Symbol, Increase::Models::OAuthToken::Type]
      #   #
      #   def initialize(access_token:, token_type:, type:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @abstract
      #
      # The type of OAuth token.
      #
      # @example
      # ```ruby
      # case token_type
      # in :bearer
      #   # ...
      # end
      # ```
      class TokenType < Increase::Enum
        BEARER = :bearer

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @abstract
      #
      # A constant representing the object's type. For this resource it will always be
      #   `oauth_token`.
      #
      # @example
      # ```ruby
      # case type
      # in :oauth_token
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        OAUTH_TOKEN = :oauth_token

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
