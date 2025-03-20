# typed: strong

module Increase
  module Models
    class Document < Increase::BaseModel
      # The Document identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The type of document.
      sig { returns(Increase::Models::Document::Category::TaggedSymbol) }
      def category
      end

      sig do
        params(_: Increase::Models::Document::Category::TaggedSymbol)
          .returns(Increase::Models::Document::Category::TaggedSymbol)
      end
      def category=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the
      #   Document was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The identifier of the Entity the document was generated for.
      sig { returns(T.nilable(String)) }
      def entity_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def entity_id=(_)
      end

      # The identifier of the File containing the Document's contents.
      sig { returns(String) }
      def file_id
      end

      sig { params(_: String).returns(String) }
      def file_id=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `document`.
      sig { returns(Increase::Models::Document::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::Document::Type::TaggedSymbol)
          .returns(Increase::Models::Document::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # Increase generates certain documents / forms automatically for your application;
      #   they can be listed here.
      sig do
        params(
          id: String,
          category: Increase::Models::Document::Category::TaggedSymbol,
          created_at: Time,
          entity_id: T.nilable(String),
          file_id: String,
          type: Increase::Models::Document::Type::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, category:, created_at:, entity_id:, file_id:, type:)
      end

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
      def to_hash
      end

      # The type of document.
      module Category
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Document::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::Document::Category::TaggedSymbol) }

        # Internal Revenue Service Form 1099-INT.
        FORM_1099_INT = T.let(:form_1099_int, Increase::Models::Document::Category::TaggedSymbol)

        # Internal Revenue Service Form 1099-MISC.
        FORM_1099_MISC = T.let(:form_1099_misc, Increase::Models::Document::Category::TaggedSymbol)

        # A document submitted in response to a proof of authorization request for an ACH transfer.
        PROOF_OF_AUTHORIZATION =
          T.let(:proof_of_authorization, Increase::Models::Document::Category::TaggedSymbol)

        # Company information, such a policies or procedures, typically submitted during our due diligence process.
        COMPANY_INFORMATION = T.let(:company_information, Increase::Models::Document::Category::TaggedSymbol)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `document`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::Document::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::Document::Type::TaggedSymbol) }

        DOCUMENT = T.let(:document, Increase::Models::Document::Type::TaggedSymbol)
      end
    end
  end
end
