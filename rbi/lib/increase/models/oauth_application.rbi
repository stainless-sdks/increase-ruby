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
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `oauth_application`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
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
          status: Symbol,
          type: Symbol
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
              status: Symbol,
              type: Symbol
            }
          )
      end
      def to_hash
      end

      # Whether the application is active.
      class Status < Increase::Enum
        abstract!

        # The application is active and can be used by your users.
        ACTIVE = :active

        # The application is deleted.
        DELETED = :deleted

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `oauth_application`.
      class Type < Increase::Enum
        abstract!

        OAUTH_APPLICATION = :oauth_application

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
