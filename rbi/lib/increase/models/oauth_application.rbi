# typed: strong

module Increase
  module Models
    class OAuthApplication < Increase::BaseModel
      # The OAuth Application's identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The OAuth Application's client_id. Use this to authenticate with the OAuth
      #   Application.
      sig { returns(String) }
      def client_id
      end

      sig { params(_: String).returns(String) }
      def client_id=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp when the OAuth
      #   Application was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp when the OAuth
      #   Application was deleted.
      sig { returns(T.nilable(Time)) }
      def deleted_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def deleted_at=(_)
      end

      # The name you chose for this OAuth Application.
      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_)
      end

      # Whether the application is active.
      sig { returns(Increase::Models::OAuthApplication::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Increase::Models::OAuthApplication::Status::TaggedSymbol)
          .returns(Increase::Models::OAuthApplication::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `oauth_application`.
      sig { returns(Increase::Models::OAuthApplication::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::OAuthApplication::Type::TaggedSymbol)
          .returns(Increase::Models::OAuthApplication::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # An OAuth Application lets you build an application for others to use with their
      #   Increase data. You can create an OAuth Application via the Dashboard and read
      #   information about it with the API. Learn more about OAuth
      #   [here](https://increase.com/documentation/oauth).
      sig do
        params(
          id: String,
          client_id: String,
          created_at: Time,
          deleted_at: T.nilable(Time),
          name: T.nilable(String),
          status: Increase::Models::OAuthApplication::Status::TaggedSymbol,
          type: Increase::Models::OAuthApplication::Type::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, client_id:, created_at:, deleted_at:, name:, status:, type:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              client_id: String,
              created_at: Time,
              deleted_at: T.nilable(Time),
              name: T.nilable(String),
              status: Increase::Models::OAuthApplication::Status::TaggedSymbol,
              type: Increase::Models::OAuthApplication::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      # Whether the application is active.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::OAuthApplication::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::OAuthApplication::Status::TaggedSymbol) }

        # The application is active and can be used by your users.
        ACTIVE = T.let(:active, Increase::Models::OAuthApplication::Status::TaggedSymbol)

        # The application is deleted.
        DELETED = T.let(:deleted, Increase::Models::OAuthApplication::Status::TaggedSymbol)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `oauth_application`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::OAuthApplication::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::OAuthApplication::Type::TaggedSymbol) }

        OAUTH_APPLICATION = T.let(:oauth_application, Increase::Models::OAuthApplication::Type::TaggedSymbol)
      end
    end
  end
end
