# typed: strong

module Increase
  module Models
    class OAuthConnection < Increase::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, Increase::Internal::AnyHash) }

      # The OAuth Connection's identifier.
      sig { returns(String) }
      attr_accessor :id

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp when the OAuth
      # Connection was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp when the OAuth
      # Connection was deleted.
      sig { returns(T.nilable(Time)) }
      attr_accessor :deleted_at

      # The identifier of the Group that has authorized your OAuth application.
      sig { returns(String) }
      attr_accessor :group_id

      # The identifier of the OAuth application this connection is for.
      sig { returns(String) }
      attr_accessor :oauth_application_id

      # Whether the connection is active.
      sig { returns(Increase::Models::OAuthConnection::Status::TaggedSymbol) }
      attr_accessor :status

      # A constant representing the object's type. For this resource it will always be
      # `oauth_connection`.
      sig { returns(Increase::Models::OAuthConnection::Type::TaggedSymbol) }
      attr_accessor :type

      # When a user authorizes your OAuth application, an OAuth Connection object is
      # created. Learn more about OAuth
      # [here](https://increase.com/documentation/oauth).
      sig do
        params(
          id: String,
          created_at: Time,
          deleted_at: T.nilable(Time),
          group_id: String,
          oauth_application_id: String,
          status: Increase::Models::OAuthConnection::Status::OrSymbol,
          type: Increase::Models::OAuthConnection::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The OAuth Connection's identifier.
        id:,
        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp when the OAuth
        # Connection was created.
        created_at:,
        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp when the OAuth
        # Connection was deleted.
        deleted_at:,
        # The identifier of the Group that has authorized your OAuth application.
        group_id:,
        # The identifier of the OAuth application this connection is for.
        oauth_application_id:,
        # Whether the connection is active.
        status:,
        # A constant representing the object's type. For this resource it will always be
        # `oauth_connection`.
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            deleted_at: T.nilable(Time),
            group_id: String,
            oauth_application_id: String,
            status: Increase::Models::OAuthConnection::Status::TaggedSymbol,
            type: Increase::Models::OAuthConnection::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # Whether the connection is active.
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Increase::Models::OAuthConnection::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        # The OAuth connection is active.
        ACTIVE =
          T.let(
            :active,
            Increase::Models::OAuthConnection::Status::TaggedSymbol
          )

        # The OAuth connection is permanently deactivated.
        INACTIVE =
          T.let(
            :inactive,
            Increase::Models::OAuthConnection::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Increase::Models::OAuthConnection::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # A constant representing the object's type. For this resource it will always be
      # `oauth_connection`.
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Increase::Models::OAuthConnection::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OAUTH_CONNECTION =
          T.let(
            :oauth_connection,
            Increase::Models::OAuthConnection::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Increase::Models::OAuthConnection::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
