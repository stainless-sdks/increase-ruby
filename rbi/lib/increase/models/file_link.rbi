# typed: strong

module Increase
  module Models
    class FileLink < Increase::Internal::Type::BaseModel
      # #/components/schemas/file_link/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/file_link/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/file_link/properties/expires_at
      sig { returns(Time) }
      attr_accessor :expires_at

      # #/components/schemas/file_link/properties/file_id
      sig { returns(String) }
      attr_accessor :file_id

      # #/components/schemas/file_link/properties/idempotency_key
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # #/components/schemas/file_link/properties/type
      sig { returns(Increase::Models::FileLink::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/file_link/properties/unauthenticated_url
      sig { returns(String) }
      attr_accessor :unauthenticated_url

      # #/components/schemas/file_link
      sig do
        params(
          id: String,
          created_at: Time,
          expires_at: Time,
          file_id: String,
          idempotency_key: T.nilable(String),
          type: Increase::Models::FileLink::Type::OrSymbol,
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
      def to_hash; end

      # #/components/schemas/file_link/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::FileLink::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::FileLink::Type::TaggedSymbol) }

        FILE_LINK = T.let(:file_link, Increase::Models::FileLink::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::FileLink::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
