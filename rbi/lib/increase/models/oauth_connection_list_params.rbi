# typed: strong

module Increase
  module Models
    class OAuthConnectionListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(String)) }
      attr_reader :oauth_application_id

      sig { params(oauth_application_id: String).void }
      attr_writer :oauth_application_id

      sig { returns(T.nilable(Increase::Models::OAuthConnectionListParams::Status)) }
      attr_reader :status

      sig { params(status: Increase::Models::OAuthConnectionListParams::Status).void }
      attr_writer :status

      sig do
        params(
          cursor: String,
          limit: Integer,
          oauth_application_id: String,
          status: Increase::Models::OAuthConnectionListParams::Status,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(cursor: nil, limit: nil, oauth_application_id: nil, status: nil, request_options: {})
      end

      sig do
        override.returns(
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
        attr_reader :in_

        sig { params(in_: T::Array[Symbol]).void }
        attr_writer :in_

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
