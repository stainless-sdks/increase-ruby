# typed: strong

module Increase
  module Models
    class OAuthToken < Increase::BaseModel
      sig { returns(String) }
      def access_token
      end

      sig { params(_: String).returns(String) }
      def access_token=(_)
      end

      sig { returns(Symbol) }
      def token_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def token_type=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig { params(access_token: String, token_type: Symbol, type: Symbol).returns(T.attached_class) }
      def self.new(access_token:, token_type:, type:)
      end

      sig { override.returns({access_token: String, token_type: Symbol, type: Symbol}) }
      def to_hash
      end

      class TokenType < Increase::Enum
        abstract!

        BEARER = :bearer

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Type < Increase::Enum
        abstract!

        OAUTH_TOKEN = :oauth_token

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
