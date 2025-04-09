# typed: strong

module Increase
  module Models
    class OAuthApplicationListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      sig { returns(T.nilable(Increase::Models::OAuthApplicationListParams::CreatedAt)) }
      attr_reader :created_at

      sig do
        params(
          created_at: T.any(Increase::Models::OAuthApplicationListParams::CreatedAt, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :created_at

      # #/paths//oauth_applications/get/parameters/0/schema
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # #/paths//oauth_applications/get/parameters/1/schema
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(Increase::Models::OAuthApplicationListParams::Status)) }
      attr_reader :status

      sig do
        params(status: T.any(Increase::Models::OAuthApplicationListParams::Status, Increase::Internal::AnyHash))
          .void
      end
      attr_writer :status

      sig do
        params(
          created_at: T.any(Increase::Models::OAuthApplicationListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          limit: Integer,
          status: T.any(Increase::Models::OAuthApplicationListParams::Status, Increase::Internal::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(created_at: nil, cursor: nil, limit: nil, status: nil, request_options: {}); end

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
      def to_hash; end

      class CreatedAt < Increase::Internal::Type::BaseModel
        # #/paths//oauth_applications/get/parameters/3/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :after

        sig { params(after: Time).void }
        attr_writer :after

        # #/paths//oauth_applications/get/parameters/4/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :before

        sig { params(before: Time).void }
        attr_writer :before

        # #/paths//oauth_applications/get/parameters/5/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_after

        sig { params(on_or_after: Time).void }
        attr_writer :on_or_after

        # #/paths//oauth_applications/get/parameters/6/schema
        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_before

        sig { params(on_or_before: Time).void }
        attr_writer :on_or_before

        sig do
          params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).returns(T.attached_class)
        end
        def self.new(after: nil, before: nil, on_or_after: nil, on_or_before: nil); end

        sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
        def to_hash; end
      end

      class Status < Increase::Internal::Type::BaseModel
        # #/paths//oauth_applications/get/parameters/2/schema
        sig { returns(T.nilable(T::Array[Increase::Models::OAuthApplicationListParams::Status::In::OrSymbol])) }
        attr_reader :in_

        sig { params(in_: T::Array[Increase::Models::OAuthApplicationListParams::Status::In::OrSymbol]).void }
        attr_writer :in_

        sig do
          params(in_: T::Array[Increase::Models::OAuthApplicationListParams::Status::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(in_: nil); end

        sig { override.returns({in_: T::Array[Increase::Models::OAuthApplicationListParams::Status::In::OrSymbol]}) }
        def to_hash; end

        # #/paths//oauth_applications/get/parameters/2/schema/items
        module In
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::OAuthApplicationListParams::Status::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::OAuthApplicationListParams::Status::In::TaggedSymbol) }

          # The application is active and can be used by your users.
          ACTIVE = T.let(:active, Increase::Models::OAuthApplicationListParams::Status::In::TaggedSymbol)

          # The application is deleted.
          DELETED = T.let(:deleted, Increase::Models::OAuthApplicationListParams::Status::In::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::OAuthApplicationListParams::Status::In::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
