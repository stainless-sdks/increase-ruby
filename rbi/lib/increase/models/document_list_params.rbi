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
        params(_: T.any(Increase::Models::DocumentListParams::Category, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::DocumentListParams::Category, Increase::Util::AnyHash))
      end
      def category=(_)
      end

      sig { returns(T.nilable(Increase::Models::DocumentListParams::CreatedAt)) }
      def created_at
      end

      sig do
        params(_: T.any(Increase::Models::DocumentListParams::CreatedAt, Increase::Util::AnyHash))
          .returns(T.any(Increase::Models::DocumentListParams::CreatedAt, Increase::Util::AnyHash))
      end
      def created_at=(_)
      end

      # Return the page of entries after this one.
      sig { returns(T.nilable(String)) }
      def cursor
      end

      sig { params(_: String).returns(String) }
      def cursor=(_)
      end

      # Filter Documents to ones belonging to the specified Entity.
      sig { returns(T.nilable(String)) }
      def entity_id
      end

      sig { params(_: String).returns(String) }
      def entity_id=(_)
      end

      # Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: Integer).returns(Integer) }
      def limit=(_)
      end

      sig do
        params(
          category: T.any(Increase::Models::DocumentListParams::Category, Increase::Util::AnyHash),
          created_at: T.any(Increase::Models::DocumentListParams::CreatedAt, Increase::Util::AnyHash),
          cursor: String,
          entity_id: String,
          limit: Integer,
          request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(category: nil, created_at: nil, cursor: nil, entity_id: nil, limit: nil, request_options: {})
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
        # Filter Documents for those with the specified category or categories. For GET
        #   requests, this should be encoded as a comma-delimited string, such as
        #   `?in=one,two,three`.
        sig { returns(T.nilable(T::Array[Increase::Models::DocumentListParams::Category::In::OrSymbol])) }
        def in_
        end

        sig do
          params(_: T::Array[Increase::Models::DocumentListParams::Category::In::OrSymbol])
            .returns(T::Array[Increase::Models::DocumentListParams::Category::In::OrSymbol])
        end
        def in_=(_)
        end

        sig do
          params(in_: T::Array[Increase::Models::DocumentListParams::Category::In::OrSymbol])
            .returns(T.attached_class)
        end
        def self.new(in_: nil)
        end

        sig { override.returns({in_: T::Array[Increase::Models::DocumentListParams::Category::In::OrSymbol]}) }
        def to_hash
        end

        module In
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::DocumentListParams::Category::In) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::DocumentListParams::Category::In::TaggedSymbol) }

          # Internal Revenue Service Form 1099-INT.
          FORM_1099_INT = T.let(:form_1099_int, Increase::Models::DocumentListParams::Category::In::TaggedSymbol)

          # Internal Revenue Service Form 1099-MISC.
          FORM_1099_MISC = T.let(:form_1099_misc, Increase::Models::DocumentListParams::Category::In::TaggedSymbol)

          # A document submitted in response to a proof of authorization request for an ACH transfer.
          PROOF_OF_AUTHORIZATION =
            T.let(:proof_of_authorization, Increase::Models::DocumentListParams::Category::In::TaggedSymbol)

          # Company information, such a policies or procedures, typically submitted during our due diligence process.
          COMPANY_INFORMATION =
            T.let(:company_information, Increase::Models::DocumentListParams::Category::In::TaggedSymbol)

          class << self
            sig { override.returns(T::Array[Increase::Models::DocumentListParams::Category::In::TaggedSymbol]) }
            def values
            end
          end
        end
      end

      class CreatedAt < Increase::BaseModel
        # Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #   timestamp.
        sig { returns(T.nilable(Time)) }
        def after
        end

        sig { params(_: Time).returns(Time) }
        def after=(_)
        end

        # Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #   timestamp.
        sig { returns(T.nilable(Time)) }
        def before
        end

        sig { params(_: Time).returns(Time) }
        def before=(_)
        end

        # Return results on or after this
        #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        sig { returns(T.nilable(Time)) }
        def on_or_after
        end

        sig { params(_: Time).returns(Time) }
        def on_or_after=(_)
        end

        # Return results on or before this
        #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        sig { returns(T.nilable(Time)) }
        def on_or_before
        end

        sig { params(_: Time).returns(Time) }
        def on_or_before=(_)
        end

        sig do
          params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).returns(T.attached_class)
        end
        def self.new(after: nil, before: nil, on_or_after: nil, on_or_before: nil)
        end

        sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
        def to_hash
        end
      end
    end
  end
end
