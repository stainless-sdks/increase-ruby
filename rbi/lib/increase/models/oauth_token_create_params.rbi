# typed: strong

module Increase
  module Models
    class OAuthTokenCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(Symbol) }
      def grant_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def grant_type=(_)
      end

      sig { returns(T.nilable(String)) }
      def client_id
      end

      sig { params(_: String).returns(String) }
      def client_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def client_secret
      end

      sig { params(_: String).returns(String) }
      def client_secret=(_)
      end

      sig { returns(T.nilable(String)) }
      def code
      end

      sig { params(_: String).returns(String) }
      def code=(_)
      end

      sig { returns(T.nilable(String)) }
      def production_token
      end

      sig { params(_: String).returns(String) }
      def production_token=(_)
      end

      sig do
        params(
            grant_type: Symbol,
            client_id: String,
            client_secret: String,
            code: String,
            production_token: String,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          )
          .void
      end
      def initialize(grant_type:, client_id: nil, client_secret: nil, code: nil, production_token: nil, request_options: {})
      end

      sig do
        override
          .returns(
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
