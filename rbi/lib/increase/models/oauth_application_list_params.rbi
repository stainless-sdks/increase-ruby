# typed: strong

module Increase
  module Models
    class OAuthApplicationListParams < Increase::BaseModel
      extend Increase::Type::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Increase::Models::OAuthApplicationListParams::CreatedAt)) }
      attr_reader :created_at

      sig do
        params(
          created_at: T.any(Increase::Models::OAuthApplicationListParams::CreatedAt, Increase::Util::AnyHash)
        )
          .void
      end
      attr_writer :created_at

      # Return the page of entries after this one.
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(Increase::Models::OAuthApplicationListParams::Status)) }
      attr_reader :status

      sig { params(status: T.any(Increase::Models::OAuthApplicationListParams::Status, Increase::Util::AnyHash)).void }
      attr_writer :status

      sig do
        params(
          created_at: T.any(Increase::Models::OAuthApplicationListParams::CreatedAt, Increase::Util::AnyHash),
          cursor: String,
          limit: Integer,
          status: T.any(Increase::Models::OAuthApplicationListParams::Status, Increase::Util::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
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
        attr_reader :after

        sig { params(after: Time).void }
        attr_writer :after

        # Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #   timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :before

        sig { params(before: Time).void }
        attr_writer :before

        # Return results on or after this
        #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_after

        sig { params(on_or_after: Time).void }
        attr_writer :on_or_after

        # Return results on or before this
        #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_before

        sig { params(on_or_before: Time).void }
        attr_writer :on_or_before

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
        attr_reader :in_

        sig { params(in_: T::Array[Increase::Models::OAuthApplicationListParams::Status::In::OrSymbol]).void }
        attr_writer :in_

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
          ACTIVE = T.let(:active, Increase::Models::OAuthApplicationListParams::Status::In::TaggedSymbol)

          # The application is deleted.
          DELETED = T.let(:deleted, Increase::Models::OAuthApplicationListParams::Status::In::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::OAuthApplicationListParams::Status::In::TaggedSymbol]) }
          def self.values
          end
        end
      end
    end
  end
end
