# typed: strong

module Increase
  module Models
    class OAuthToken < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :access_token

      sig { returns(Symbol) }
      attr_accessor :token_type

      sig { returns(Symbol) }
      attr_accessor :type

      sig { params(access_token: String, token_type: Symbol, type: Symbol).void }
      def initialize(access_token:, token_type:, type:)
      end

      sig { override.returns({access_token: String, token_type: Symbol, type: Symbol}) }
      def to_hash
      end

      class TokenType < Increase::Enum
        abstract!

        BEARER = :bearer

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        OAUTH_TOKEN = :oauth_token

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
