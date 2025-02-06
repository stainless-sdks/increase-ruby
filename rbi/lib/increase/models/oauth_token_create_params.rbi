# typed: strong

module Increase
  module Models
    class OAuthTokenCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(Symbol) }
      attr_accessor :grant_type

      sig { returns(T.nilable(String)) }
      attr_reader :client_id

      sig { params(client_id: String).void }
      attr_writer :client_id

      sig { returns(T.nilable(String)) }
      attr_reader :client_secret

      sig { params(client_secret: String).void }
      attr_writer :client_secret

      sig { returns(T.nilable(String)) }
      attr_reader :code

      sig { params(code: String).void }
      attr_writer :code

      sig { returns(T.nilable(String)) }
      attr_reader :production_token

      sig { params(production_token: String).void }
      attr_writer :production_token

      sig do
        params(
          grant_type: Symbol,
          client_id: String,
          client_secret: String,
          code: String,
          production_token: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        grant_type:,
        client_id: nil,
        client_secret: nil,
        code: nil,
        production_token: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            grant_type: Symbol,
            client_id: String,
            client_secret: String,
            code: String,
            production_token: String,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end

      class GrantType < Increase::Enum
        abstract!

        # An OAuth authorization code.
        AUTHORIZATION_CODE = :authorization_code

        # An OAuth production token.
        PRODUCTION_TOKEN = :production_token

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
