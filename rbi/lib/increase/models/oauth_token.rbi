# typed: strong

module Increase
  module Models
    class OAuthToken < Increase::BaseModel
      # You may use this token in place of an API key to make OAuth requests on a user's
      #   behalf.
      sig { returns(String) }
      def access_token
      end

      sig { params(_: String).returns(String) }
      def access_token=(_)
      end

      # The type of OAuth token.
      sig { returns(Symbol) }
      def token_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def token_type=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `oauth_token`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # A token that is returned to your application when a user completes the OAuth
      #   flow and may be used to authenticate requests. Learn more about OAuth
      #   [here](/documentation/oauth).
      sig { params(access_token: String, token_type: Symbol, type: Symbol).returns(T.attached_class) }
      def self.new(access_token:, token_type:, type:)
      end

      sig { override.returns({access_token: String, token_type: Symbol, type: Symbol}) }
      def to_hash
      end

      # The type of OAuth token.
      class TokenType < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        BEARER = :bearer
      end

      # A constant representing the object's type. For this resource it will always be
      #   `oauth_token`.
      class Type < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        OAUTH_TOKEN = :oauth_token
      end
    end
  end
end
