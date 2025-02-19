# typed: strong

module Increase
  module Models
    class OAuthConnection < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def deleted_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def deleted_at=(_)
      end

      sig { returns(String) }
      def group_id
      end

      sig { params(_: String).returns(String) }
      def group_id=(_)
      end

      sig { returns(String) }
      def oauth_application_id
      end

      sig { params(_: String).returns(String) }
      def oauth_application_id=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

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
