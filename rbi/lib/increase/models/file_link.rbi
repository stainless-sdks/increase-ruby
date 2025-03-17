# typed: strong

module Increase
  module Models
    class FileLink < Increase::BaseModel
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

      sig { returns(Time) }
      def expires_at
      end

      sig { params(_: Time).returns(Time) }
      def expires_at=(_)
      end

      sig { returns(String) }
      def file_id
      end

      sig { params(_: String).returns(String) }
      def file_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig { returns(String) }
      def unauthenticated_url
      end

      sig { params(_: String).returns(String) }
      def unauthenticated_url=(_)
      end

      sig do
        params(
          id: String,
          created_at: Time,
          expires_at: Time,
          file_id: String,
          idempotency_key: T.nilable(String),
          type: Symbol,
          unauthenticated_url: String
        )
          .returns(T.attached_class)
      end
      def self.new(id:, created_at:, expires_at:, file_id:, idempotency_key:, type:, unauthenticated_url:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              created_at: Time,
              expires_at: Time,
              file_id: String,
              idempotency_key: T.nilable(String),
              type: Symbol,
              unauthenticated_url: String
            }
          )
      end
      def to_hash
      end

      class Type < Increase::Enum
        abstract!

        FILE_LINK = :file_link

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
