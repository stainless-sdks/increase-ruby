# typed: strong

module Increase
  module Models
    class OAuthConnection < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :deleted_at

      sig { returns(String) }
      attr_accessor :group_id

      sig { returns(String) }
      attr_accessor :oauth_application_id

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          id: String,
          created_at: Time,
          deleted_at: T.nilable(Time),
          group_id: String,
          oauth_application_id: String,
          status: Symbol,
          type: Symbol
        ).void
      end
      def initialize(id:, created_at:, deleted_at:, group_id:, oauth_application_id:, status:, type:)
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            deleted_at: T.nilable(Time),
            group_id: String,
            oauth_application_id: String,
            status: Symbol,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Status < Increase::Enum
        abstract!

        # The OAuth connection is active.
        ACTIVE = :active

        # The OAuth connection is permanently deactivated.
        INACTIVE = :inactive

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        OAUTH_CONNECTION = :oauth_connection

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
