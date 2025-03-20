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
      sig { returns(Symbol) }
      def category
      end

      sig { params(_: Symbol).returns(Symbol) }
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
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # Increase generates certain documents / forms automatically for your application;
      #   they can be listed here.
      sig do
        params(
          id: String,
          category: Symbol,
          created_at: Time,
          entity_id: T.nilable(String),
          file_id: String,
          type: Symbol
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
              category: Symbol,
              created_at: Time,
              entity_id: T.nilable(String),
              file_id: String,
              type: Symbol
            }
          )
      end
      def to_hash
      end

      # The type of document.
      class Category < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # Internal Revenue Service Form 1099-INT.
        FORM_1099_INT = :form_1099_int

        # Internal Revenue Service Form 1099-MISC.
        FORM_1099_MISC = :form_1099_misc

        # A document submitted in response to a proof of authorization request for an ACH transfer.
        PROOF_OF_AUTHORIZATION = :proof_of_authorization

        # Company information, such a policies or procedures, typically submitted during our due diligence process.
        COMPANY_INFORMATION = :company_information
      end

      # A constant representing the object's type. For this resource it will always be
      #   `document`.
      class Type < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        DOCUMENT = :document
      end
    end
  end
end
