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
      sig { returns(Increase::Models::OAuthToken::TokenType::TaggedSymbol) }
      def token_type
      end

      sig do
        params(_: Increase::Models::OAuthToken::TokenType::TaggedSymbol)
          .returns(Increase::Models::OAuthToken::TokenType::TaggedSymbol)
      end
      def token_type=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `oauth_token`.
      sig { returns(Increase::Models::OAuthToken::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::OAuthToken::Type::TaggedSymbol)
          .returns(Increase::Models::OAuthToken::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # A token that is returned to your application when a user completes the OAuth
      #   flow and may be used to authenticate requests. Learn more about OAuth
      #   [here](/documentation/oauth).
      sig do
        params(
          access_token: String,
          token_type: Increase::Models::OAuthToken::TokenType::TaggedSymbol,
          type: Increase::Models::OAuthToken::Type::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(access_token:, token_type:, type:)
      end

      sig do
        override
          .returns(
            {
              access_token: String,
              token_type: Increase::Models::OAuthToken::TokenType::TaggedSymbol,
              type: Increase::Models::OAuthToken::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      # The type of OAuth token.
      module TokenType
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::OAuthToken::TokenType) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::OAuthToken::TokenType::TaggedSymbol) }

        BEARER = T.let(:bearer, Increase::Models::OAuthToken::TokenType::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::OAuthToken::TokenType::TaggedSymbol]) }
          def values
          end
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `oauth_token`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::OAuthToken::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::OAuthToken::Type::TaggedSymbol) }

        OAUTH_TOKEN = T.let(:oauth_token, Increase::Models::OAuthToken::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::OAuthToken::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
