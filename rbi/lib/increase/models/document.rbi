# typed: strong

module Increase
  module Models
    class Document < Increase::Internal::Type::BaseModel
      # #/components/schemas/document/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/document/properties/category
      sig { returns(Increase::Models::Document::Category::TaggedSymbol) }
      attr_accessor :category

      # #/components/schemas/document/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/document/properties/entity_id
      sig { returns(T.nilable(String)) }
      attr_accessor :entity_id

      # #/components/schemas/document/properties/file_id
      sig { returns(String) }
      attr_accessor :file_id

      # #/components/schemas/document/properties/type
      sig { returns(Increase::Models::Document::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/document
      sig do
        params(
          id: String,
          category: Increase::Models::Document::Category::OrSymbol,
          created_at: Time,
          entity_id: T.nilable(String),
          file_id: String,
          type: Increase::Models::Document::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, category:, created_at:, entity_id:, file_id:, type:); end

      sig do
        override
          .returns(
            {
              id: String,
              category: Increase::Models::Document::Category::TaggedSymbol,
              created_at: Time,
              entity_id: T.nilable(String),
              file_id: String,
              type: Increase::Models::Document::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      # #/components/schemas/document/properties/category
      module Category
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Document::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Document::Category::TaggedSymbol) }

        # Internal Revenue Service Form 1099-INT.
        FORM_1099_INT = T.let(:form_1099_int, Increase::Models::Document::Category::TaggedSymbol)

        # Internal Revenue Service Form 1099-MISC.
        FORM_1099_MISC = T.let(:form_1099_misc, Increase::Models::Document::Category::TaggedSymbol)

        # A document submitted in response to a proof of authorization request for an ACH transfer.
        PROOF_OF_AUTHORIZATION =
          T.let(:proof_of_authorization, Increase::Models::Document::Category::TaggedSymbol)

        # Company information, such a policies or procedures, typically submitted during our due diligence process.
        COMPANY_INFORMATION = T.let(:company_information, Increase::Models::Document::Category::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Document::Category::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/document/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Document::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Increase::Models::Document::Type::TaggedSymbol) }

        DOCUMENT = T.let(:document, Increase::Models::Document::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::Document::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
