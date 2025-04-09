# typed: strong

module Increase
  module Models
    class OAuthTokenCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_an_oauth_token_parameters/properties/grant_type
      sig { returns(Increase::Models::OAuthTokenCreateParams::GrantType::OrSymbol) }
      attr_accessor :grant_type

      # #/components/schemas/create_an_oauth_token_parameters/properties/client_id
      sig { returns(T.nilable(String)) }
      attr_reader :client_id

      sig { params(client_id: String).void }
      attr_writer :client_id

      # #/components/schemas/create_an_oauth_token_parameters/properties/client_secret
      sig { returns(T.nilable(String)) }
      attr_reader :client_secret

      sig { params(client_secret: String).void }
      attr_writer :client_secret

      # #/components/schemas/create_an_oauth_token_parameters/properties/code
      sig { returns(T.nilable(String)) }
      attr_reader :code

      sig { params(code: String).void }
      attr_writer :code

      # #/components/schemas/create_an_oauth_token_parameters/properties/production_token
      sig { returns(T.nilable(String)) }
      attr_reader :production_token

      sig { params(production_token: String).void }
      attr_writer :production_token

      sig do
        params(
          grant_type: Increase::Models::OAuthTokenCreateParams::GrantType::OrSymbol,
          client_id: String,
          client_secret: String,
          code: String,
          production_token: String,
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        grant_type:,
        client_id: nil,
        client_secret: nil,
        code: nil,
        production_token: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              grant_type: Increase::Models::OAuthTokenCreateParams::GrantType::OrSymbol,
              client_id: String,
              client_secret: String,
              code: String,
              production_token: String,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      # #/components/schemas/create_an_oauth_token_parameters/properties/grant_type
      module GrantType
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::OAuthTokenCreateParams::GrantType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::OAuthTokenCreateParams::GrantType::TaggedSymbol) }

        # An OAuth authorization code.
        AUTHORIZATION_CODE =
          T.let(:authorization_code, Increase::Models::OAuthTokenCreateParams::GrantType::TaggedSymbol)

        # An OAuth production token.
        PRODUCTION_TOKEN =
          T.let(:production_token, Increase::Models::OAuthTokenCreateParams::GrantType::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::OAuthTokenCreateParams::GrantType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
