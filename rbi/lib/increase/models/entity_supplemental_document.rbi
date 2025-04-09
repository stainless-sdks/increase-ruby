# typed: strong

module Increase
  module Models
    class EntitySupplementalDocument < Increase::Internal::Type::BaseModel
      # #/components/schemas/entity_supplemental_document/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/entity_supplemental_document/properties/entity_id
      sig { returns(String) }
      attr_accessor :entity_id

      # #/components/schemas/entity_supplemental_document/properties/file_id
      sig { returns(String) }
      attr_accessor :file_id

      # #/components/schemas/entity_supplemental_document/properties/idempotency_key
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # #/components/schemas/entity_supplemental_document/properties/type
      sig { returns(Increase::Models::EntitySupplementalDocument::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/entity_supplemental_document
      sig do
        params(
          created_at: Time,
          entity_id: String,
          file_id: String,
          idempotency_key: T.nilable(String),
          type: Increase::Models::EntitySupplementalDocument::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(created_at:, entity_id:, file_id:, idempotency_key:, type:); end

      sig do
        override
          .returns(
            {
              created_at: Time,
              entity_id: String,
              file_id: String,
              idempotency_key: T.nilable(String),
              type: Increase::Models::EntitySupplementalDocument::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      # #/components/schemas/entity_supplemental_document/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::EntitySupplementalDocument::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::EntitySupplementalDocument::Type::TaggedSymbol) }

        ENTITY_SUPPLEMENTAL_DOCUMENT =
          T.let(:entity_supplemental_document, Increase::Models::EntitySupplementalDocument::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::EntitySupplementalDocument::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
