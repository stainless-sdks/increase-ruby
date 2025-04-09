# typed: strong

module Increase
  module Models
    class OAuthApplication < Increase::Internal::Type::BaseModel
      # #/components/schemas/oauth_application/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/oauth_application/properties/client_id
      sig { returns(String) }
      attr_accessor :client_id

      # #/components/schemas/oauth_application/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/oauth_application/properties/deleted_at
      sig { returns(T.nilable(Time)) }
      attr_accessor :deleted_at

      # #/components/schemas/oauth_application/properties/name
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # #/components/schemas/oauth_application/properties/status
      sig { returns(Increase::Models::OAuthApplication::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/oauth_application/properties/type
      sig { returns(Increase::Models::OAuthApplication::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/oauth_application
      sig do
        params(
          id: String,
          client_id: String,
          created_at: Time,
          deleted_at: T.nilable(Time),
          name: T.nilable(String),
          status: Increase::Models::OAuthApplication::Status::OrSymbol,
          type: Increase::Models::OAuthApplication::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, client_id:, created_at:, deleted_at:, name:, status:, type:); end

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
      def to_hash; end

      # #/components/schemas/oauth_application/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::OAuthApplication::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::OAuthApplication::Status::TaggedSymbol) }

        # The application is active and can be used by your users.
        ACTIVE = T.let(:active, Increase::Models::OAuthApplication::Status::TaggedSymbol)

        # The application is deleted.
        DELETED = T.let(:deleted, Increase::Models::OAuthApplication::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::OAuthApplication::Status::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/oauth_application/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::OAuthApplication::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::OAuthApplication::Type::TaggedSymbol) }

        OAUTH_APPLICATION = T.let(:oauth_application, Increase::Models::OAuthApplication::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::OAuthApplication::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
