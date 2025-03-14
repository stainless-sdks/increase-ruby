# typed: strong

module Increase
  module Models
    class OAuthConnection < Increase::BaseModel
      # The OAuth Connection's identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp when the OAuth
      #   Connection was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp when the OAuth
      #   Connection was deleted.
      sig { returns(T.nilable(Time)) }
      def deleted_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def deleted_at=(_)
      end

      # The identifier of the Group that has authorized your OAuth application.
      sig { returns(String) }
      def group_id
      end

      sig { params(_: String).returns(String) }
      def group_id=(_)
      end

      # The identifier of the OAuth application this connection is for.
      sig { returns(String) }
      def oauth_application_id
      end

      sig { params(_: String).returns(String) }
      def oauth_application_id=(_)
      end

      # Whether the connection is active.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `oauth_connection`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # When a user authorizes your OAuth application, an OAuth Connection object is
      #   created. Learn more about OAuth
      #   [here](https://increase.com/documentation/oauth).
      sig do
        params(
          id: String,
          created_at: Time,
          deleted_at: T.nilable(Time),
          group_id: String,
          oauth_application_id: String,
          status: Symbol,
          type: Symbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, created_at:, deleted_at:, group_id:, oauth_application_id:, status:, type:)
      end

      sig do
        override
          .returns(
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

      # Whether the connection is active.
      class Status < Increase::Enum
        abstract!

        # The OAuth connection is active.
        ACTIVE = :active

        # The OAuth connection is permanently deactivated.
        INACTIVE = :inactive

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `oauth_connection`.
      class Type < Increase::Enum
        abstract!

        OAUTH_CONNECTION = :oauth_connection

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
