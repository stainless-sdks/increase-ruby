# typed: strong

module Increase
  module Models
    class OAuthConnection < Increase::Internal::Type::BaseModel
      # #/components/schemas/oauth_connection/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/oauth_connection/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/oauth_connection/properties/deleted_at
      sig { returns(T.nilable(Time)) }
      attr_accessor :deleted_at

      # #/components/schemas/oauth_connection/properties/group_id
      sig { returns(String) }
      attr_accessor :group_id

      # #/components/schemas/oauth_connection/properties/oauth_application_id
      sig { returns(String) }
      attr_accessor :oauth_application_id

      # #/components/schemas/oauth_connection/properties/status
      sig { returns(Increase::Models::OAuthConnection::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/oauth_connection/properties/type
      sig { returns(Increase::Models::OAuthConnection::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/oauth_connection
      sig do
        params(
          id: String,
          created_at: Time,
          deleted_at: T.nilable(Time),
          group_id: String,
          oauth_application_id: String,
          status: Increase::Models::OAuthConnection::Status::OrSymbol,
          type: Increase::Models::OAuthConnection::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, created_at:, deleted_at:, group_id:, oauth_application_id:, status:, type:); end

      sig do
        override
          .returns(
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
      def to_hash; end

      # #/components/schemas/oauth_connection/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::OAuthConnection::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::OAuthConnection::Status::TaggedSymbol) }

        # The OAuth connection is active.
        ACTIVE = T.let(:active, Increase::Models::OAuthConnection::Status::TaggedSymbol)

        # The OAuth connection is permanently deactivated.
        INACTIVE = T.let(:inactive, Increase::Models::OAuthConnection::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::OAuthConnection::Status::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/oauth_connection/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::OAuthConnection::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::OAuthConnection::Type::TaggedSymbol) }

        OAUTH_CONNECTION = T.let(:oauth_connection, Increase::Models::OAuthConnection::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::OAuthConnection::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
