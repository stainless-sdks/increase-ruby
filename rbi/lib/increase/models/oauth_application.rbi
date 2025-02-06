# typed: strong

module Increase
  module Models
    class OAuthApplication < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :client_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :deleted_at

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          id: String,
          client_id: String,
          created_at: Time,
          deleted_at: T.nilable(Time),
          name: T.nilable(String),
          status: Symbol,
          type: Symbol
        ).void
      end
      def initialize(id:, client_id:, created_at:, deleted_at:, name:, status:, type:)
      end

      sig do
        override.returns(
          {
            id: String,
            client_id: String,
            created_at: Time,
            deleted_at: T.nilable(Time),
            name: T.nilable(String),
            status: Symbol,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Status < Increase::Enum
        abstract!

        # The application is active and can be used by your users.
        ACTIVE = :active

        # The application is deleted.
        DELETED = :deleted

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        OAUTH_APPLICATION = :oauth_application

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
