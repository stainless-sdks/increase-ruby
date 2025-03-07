# typed: strong

module Increase
  module Models
    class Document < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Symbol) }
      def category
      end

      sig { params(_: Symbol).returns(Symbol) }
      def category=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def entity_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def entity_id=(_)
      end

      sig { returns(String) }
      def file_id
      end

      sig { params(_: String).returns(String) }
      def file_id=(_)
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
          category: Symbol,
          created_at: Time,
          entity_id: T.nilable(String),
          file_id: String,
          type: Symbol
        )
          .void
      end
      def initialize(id:, category:, created_at:, entity_id:, file_id:, type:)
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

      class Category < Increase::Enum
        abstract!

        # Internal Revenue Service Form 1099-INT.
        FORM_1099_INT = :form_1099_int

        # Internal Revenue Service Form 1099-MISC.
        FORM_1099_MISC = :form_1099_misc

        # A document submitted in response to a proof of authorization request for an ACH transfer.
        PROOF_OF_AUTHORIZATION = :proof_of_authorization

        # Company information, such a policies or procedures, typically submitted during our due diligence process.
        COMPANY_INFORMATION = :company_information

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        DOCUMENT = :document

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
