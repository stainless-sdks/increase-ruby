# typed: strong

module Increase
  module Models
    class OAuthToken < Increase::Internal::Type::BaseModel
      # #/components/schemas/oauth_token/properties/access_token
      sig { returns(String) }
      attr_accessor :access_token

      # #/components/schemas/oauth_token/properties/token_type
      sig { returns(Increase::Models::OAuthToken::TokenType::TaggedSymbol) }
      attr_accessor :token_type

      # #/components/schemas/oauth_token/properties/type
      sig { returns(Increase::Models::OAuthToken::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/oauth_token
      sig do
        params(
          access_token: String,
          token_type: Increase::Models::OAuthToken::TokenType::OrSymbol,
          type: Increase::Models::OAuthToken::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(access_token:, token_type:, type:); end

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
      def to_hash; end

      # #/components/schemas/oauth_token/properties/token_type
      module TokenType
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::OAuthToken::TokenType) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::OAuthToken::TokenType::TaggedSymbol) }

        BEARER = T.let(:bearer, Increase::Models::OAuthToken::TokenType::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::OAuthToken::TokenType::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/oauth_token/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::OAuthToken::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::OAuthToken::Type::TaggedSymbol) }

        OAUTH_TOKEN = T.let(:oauth_token, Increase::Models::OAuthToken::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::OAuthToken::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
