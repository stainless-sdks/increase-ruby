# typed: strong

module Increase
  module Models
    class DocumentListParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(T.nilable(Increase::Models::DocumentListParams::Category)) }
      def category
      end

      sig do
        params(_: Increase::Models::DocumentListParams::Category)
          .returns(Increase::Models::DocumentListParams::Category)
      end
      def category=(_)
      end

      sig { returns(T.nilable(Increase::Models::DocumentListParams::CreatedAt)) }
      def created_at
      end

      sig do
        params(_: Increase::Models::DocumentListParams::CreatedAt)
          .returns(Increase::Models::DocumentListParams::CreatedAt)
      end
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: String).returns(String) }
      def cursor=(_)
      end

      sig { returns(T.nilable(String)) }
      def entity_id
      end

      sig { params(_: String).returns(String) }
      def entity_id=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig do
        params(
          category: Increase::Models::DocumentListParams::Category,
          created_at: Increase::Models::DocumentListParams::CreatedAt,
          cursor: String,
          entity_id: String,
          limit: Integer,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        category: nil,
        created_at: nil,
        cursor: nil,
        entity_id: nil,
        limit: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              category: Increase::Models::DocumentListParams::Category,
              created_at: Increase::Models::DocumentListParams::CreatedAt,
              cursor: String,
              entity_id: String,
              limit: Integer,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Category < Increase::BaseModel
        sig { returns(T.nilable(T::Array[Symbol])) }
        def in_
        end

        sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
        def in_=(_)
        end

        sig { params(in_: T::Array[Symbol]).void }
        def initialize(in_: nil)
        end

        sig { override.returns({in_: T::Array[Symbol]}) }
        def to_hash
        end

        class In < Increase::Enum
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
      end

      class CreatedAt < Increase::BaseModel
        sig { returns(T.nilable(Time)) }
        def after
        end

        sig { params(_: Time).returns(Time) }
        def after=(_)
        end

        sig { returns(T.nilable(Time)) }
        def before
        end

        sig { params(_: Time).returns(Time) }
        def before=(_)
        end

        sig { returns(T.nilable(Time)) }
        def on_or_after
        end

        sig { params(_: Time).returns(Time) }
        def on_or_after=(_)
        end

        sig { returns(T.nilable(Time)) }
        def on_or_before
        end

        sig { params(_: Time).returns(Time) }
        def on_or_before=(_)
        end

        sig { params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).void }
        def initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil)
        end

        sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
        def to_hash
        end
      end
    end
  end
end
