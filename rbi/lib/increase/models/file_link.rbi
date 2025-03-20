# typed: strong

module Increase
  module Models
    class FileLink < Increase::BaseModel
      # The File Link identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the File
      #   Link was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the File
      #   Link will expire.
      sig { returns(Time) }
      def expires_at
      end

      sig { params(_: Time).returns(Time) }
      def expires_at=(_)
      end

      # The identifier of the File the File Link points to.
      sig { returns(String) }
      def file_id
      end

      sig { params(_: String).returns(String) }
      def file_id=(_)
      end

      # The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `file_link`.
      sig { returns(Increase::Models::FileLink::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::FileLink::Type::TaggedSymbol)
          .returns(Increase::Models::FileLink::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # A URL where the File can be downloaded. The URL will expire after the
      #   `expires_at` time. This URL is unauthenticated and can be used to download the
      #   File without an Increase API key.
      sig { returns(String) }
      def unauthenticated_url
      end

      sig { params(_: String).returns(String) }
      def unauthenticated_url=(_)
      end

      # File Links let you generate a URL that can be used to download a File.
      sig do
        params(
          id: String,
          created_at: Time,
          expires_at: Time,
          file_id: String,
          idempotency_key: T.nilable(String),
          type: Increase::Models::FileLink::Type::TaggedSymbol,
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
              type: Increase::Models::FileLink::Type::TaggedSymbol,
              unauthenticated_url: String
            }
          )
      end
      def to_hash
      end

      # A constant representing the object's type. For this resource it will always be
      #   `file_link`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::FileLink::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::FileLink::Type::TaggedSymbol) }

        FILE_LINK = T.let(:file_link, Increase::Models::FileLink::Type::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Increase::Models::FileLink::Type::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
