# typed: strong

module Increase
  module Models
    class OAuthConnectionListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: String).returns(String) }
      def cursor=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig { returns(T.nilable(String)) }
      def oauth_application_id
      end

      sig { params(_: String).returns(String) }
      def oauth_application_id=(_)
      end

      sig { returns(T.nilable(Increase::Models::OAuthConnectionListParams::Status)) }
      def status
      end

      sig do
        params(_: Increase::Models::OAuthConnectionListParams::Status)
          .returns(Increase::Models::OAuthConnectionListParams::Status)
      end
      def status=(_)
      end

      sig do
        params(
          cursor: String,
          limit: Integer,
          oauth_application_id: String,
          status: Increase::Models::OAuthConnectionListParams::Status,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(cursor: nil, limit: nil, oauth_application_id: nil, status: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              cursor: String,
              limit: Integer,
              oauth_application_id: String,
              status: Increase::Models::OAuthConnectionListParams::Status,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Status < Increase::BaseModel
        sig { returns(T.nilable(T::Array[Symbol])) }
        def in_
        end

        sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
        def in_=(_)
        end

        sig { params(in_: T::Array[Symbol]).void }
        def initialize(in_: nil)
        end

        sig { override.returns({in_: T::Array[Symbol]}) }
        def to_hash
        end

        class In < Increase::Enum
          abstract!

          # The OAuth connection is active.
          ACTIVE = :active

          # The OAuth connection is permanently deactivated.
          INACTIVE = :inactive

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
