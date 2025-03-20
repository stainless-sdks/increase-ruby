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

      # Return the page of entries after this one.
      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: String).returns(String) }
      def cursor=(_)
      end

      # Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
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
          .returns(T.attached_class)
      end
      def self.new(created_at: nil, cursor: nil, limit: nil, status: nil, request_options: {})
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
        # Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #   timestamp.
        sig { returns(T.nilable(Time)) }
        def after
        end

        sig { params(_: Time).returns(Time) }
        def after=(_)
        end

        # Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #   timestamp.
        sig { returns(T.nilable(Time)) }
        def before
        end

        sig { params(_: Time).returns(Time) }
        def before=(_)
        end

        # Return results on or after this
        #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        sig { returns(T.nilable(Time)) }
        def on_or_after
        end

        sig { params(_: Time).returns(Time) }
        def on_or_after=(_)
        end

        # Return results on or before this
        #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        sig { returns(T.nilable(Time)) }
        def on_or_before
        end

        sig { params(_: Time).returns(Time) }
        def on_or_before=(_)
        end

        sig do
          params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).returns(T.attached_class)
        end
        def self.new(after: nil, before: nil, on_or_after: nil, on_or_before: nil)
        end

        sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
        def to_hash
        end
      end

      class Status < Increase::BaseModel
        # Return results whose value is in the provided list. For GET requests, this
        #   should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        sig { returns(T.nilable(T::Array[Increase::Models::OAuthApplicationListParams::Status::In::OrSymbol])) }
        def in_
        end

        sig do
          params(_: T::Array[Increase::Models::OAuthApplicationListParams::Status::In::OrSymbol])
            .returns(T::Array[Increase::Models::OAuthApplicationListParams::Status::In::OrSymbol])
        end
        def in_=(_)
        end

        sig do
          params(in_: T::Array[Increase::Models::OAuthApplicationListParams::Status::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(in_: nil)
        end

        sig { override.returns({in_: T::Array[Increase::Models::OAuthApplicationListParams::Status::In::OrSymbol]}) }
        def to_hash
        end

        module In
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::OAuthApplicationListParams::Status::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::OAuthApplicationListParams::Status::In::TaggedSymbol) }

          # The application is active and can be used by your users.
          ACTIVE = T.let(:active, Increase::Models::OAuthApplicationListParams::Status::In::OrSymbol)

          # The application is deleted.
          DELETED = T.let(:deleted, Increase::Models::OAuthApplicationListParams::Status::In::OrSymbol)
        end
      end
    end
  end
end
