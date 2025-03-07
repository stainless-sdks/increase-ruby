# typed: strong

module Increase
  module Models
    class OAuthApplicationListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Increase::Models::OAuthApplicationListParams::CreatedAt)) }
      def created_at
      end

      sig do
        params(_: Increase::Models::OAuthApplicationListParams::CreatedAt)
          .returns(Increase::Models::OAuthApplicationListParams::CreatedAt)
      end
      def created_at=(_)
      end

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

      sig { returns(T.nilable(Increase::Models::OAuthApplicationListParams::Status)) }
      def status
      end

      sig do
        params(_: Increase::Models::OAuthApplicationListParams::Status)
          .returns(Increase::Models::OAuthApplicationListParams::Status)
      end
      def status=(_)
      end

      sig do
        params(
          created_at: Increase::Models::OAuthApplicationListParams::CreatedAt,
          cursor: String,
          limit: Integer,
          status: Increase::Models::OAuthApplicationListParams::Status,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(created_at: nil, cursor: nil, limit: nil, status: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              created_at: Increase::Models::OAuthApplicationListParams::CreatedAt,
              cursor: String,
              limit: Integer,
              status: Increase::Models::OAuthApplicationListParams::Status,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      class CreatedAt < Increase::BaseModel
        sig { returns(T.nilable(Time)) }
        def after
        end

        sig { params(_: Time).returns(Time) }
        def after=(_)
        end

        sig { returns(T.nilable(Time)) }
        def before
        end

        sig { params(_: Time).returns(Time) }
        def before=(_)
        end

        sig { returns(T.nilable(Time)) }
        def on_or_after
        end

        sig { params(_: Time).returns(Time) }
        def on_or_after=(_)
        end

        sig { returns(T.nilable(Time)) }
        def on_or_before
        end

        sig { params(_: Time).returns(Time) }
        def on_or_before=(_)
        end

        sig { params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).void }
        def initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil)
        end

        sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
        def to_hash
        end
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

          # The application is active and can be used by your users.
          ACTIVE = :active

          # The application is deleted.
          DELETED = :deleted

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
