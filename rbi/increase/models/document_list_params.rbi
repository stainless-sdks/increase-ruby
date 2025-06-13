# typed: strong

module Increase
  module Models
    class DocumentListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(Increase::DocumentListParams, Increase::Internal::AnyHash) }

      sig { returns(T.nilable(Increase::DocumentListParams::Category)) }
      attr_reader :category

      sig { params(category: Increase::DocumentListParams::Category::OrHash).void }
      attr_writer :category

      sig { returns(T.nilable(Increase::DocumentListParams::CreatedAt)) }
      attr_reader :created_at

      sig { params(created_at: Increase::DocumentListParams::CreatedAt::OrHash).void }
      attr_writer :created_at

      # Return the page of entries after this one.
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # Filter Documents to ones belonging to the specified Entity.
      sig { returns(T.nilable(String)) }
      attr_reader :entity_id

      sig { params(entity_id: String).void }
      attr_writer :entity_id

      # Filter records to the one with the specified `idempotency_key` you chose for
      # that object. This value is unique across Increase and is used to ensure that a
      # request is only processed once. Learn more about
      # [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      # Limit the size of the list that is returned. The default (and maximum) is 100
      # objects.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig do
        params(
          category: Increase::DocumentListParams::Category::OrHash,
          created_at: Increase::DocumentListParams::CreatedAt::OrHash,
          cursor: String,
          entity_id: String,
          idempotency_key: String,
          limit: Integer,
          request_options: Increase::RequestOptions::OrHash
        )
          .returns(T.attached_class)
      end
      def self.new(
        category: nil,
        created_at: nil,
        # Return the page of entries after this one.
      cursor: nil,
        # Filter Documents to ones belonging to the specified Entity.
      entity_id: nil,
        # Filter records to the one with the specified `idempotency_key` you chose for
      # that object. This value is unique across Increase and is used to ensure that a
      # request is only processed once. Learn more about
      # [idempotency](https://increase.com/documentation/idempotency-keys).
      idempotency_key: nil,
        # Limit the size of the list that is returned. The default (and maximum) is 100
      # objects.
      limit: nil,
        request_options: {}
      ); end

      sig do
        override
          .returns(
            {
              category: Increase::DocumentListParams::Category,
              created_at: Increase::DocumentListParams::CreatedAt,
              cursor: String,
              entity_id: String,
              idempotency_key: String,
              limit: Integer,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      class Category < Increase::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(Increase::DocumentListParams::Category, Increase::Internal::AnyHash) }

        # Filter Documents for those with the specified category or categories. For GET
        # requests, this should be encoded as a comma-delimited string, such as
        # `?in=one,two,three`.
        sig { returns(T.nilable(T::Array[Increase::DocumentListParams::Category::In::OrSymbol])) }
        attr_reader :in_

        sig { params(in_: T::Array[Increase::DocumentListParams::Category::In::OrSymbol]).void }
        attr_writer :in_

        sig { params(in_: T::Array[Increase::DocumentListParams::Category::In::OrSymbol]).returns(T.attached_class) }
        def self.new(
          # Filter Documents for those with the specified category or categories. For GET
        # requests, this should be encoded as a comma-delimited string, such as
        # `?in=one,two,three`.
        in_: nil
        ); end

        sig { override.returns({in_: T::Array[Increase::DocumentListParams::Category::In::OrSymbol]}) }
        def to_hash; end

        module In
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::DocumentListParams::Category::In) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          # Internal Revenue Service Form 1099-INT.
          FORM_1099_INT = T.let(:form_1099_int, Increase::DocumentListParams::Category::In::TaggedSymbol)

          # Internal Revenue Service Form 1099-MISC.
          FORM_1099_MISC = T.let(:form_1099_misc, Increase::DocumentListParams::Category::In::TaggedSymbol)

          # A document submitted in response to a proof of authorization request for an ACH transfer.
          PROOF_OF_AUTHORIZATION =
            T.let(:proof_of_authorization, Increase::DocumentListParams::Category::In::TaggedSymbol)

          # Company information, such a policies or procedures, typically submitted during our due diligence process.
          COMPANY_INFORMATION =
            T.let(:company_information, Increase::DocumentListParams::Category::In::TaggedSymbol)

          # An account verification letter.
          ACCOUNT_VERIFICATION_LETTER =
            T.let(:account_verification_letter, Increase::DocumentListParams::Category::In::TaggedSymbol)

          sig { override.returns(T::Array[Increase::DocumentListParams::Category::In::TaggedSymbol]) }
          def self.values; end
        end
      end

      class CreatedAt < Increase::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(Increase::DocumentListParams::CreatedAt, Increase::Internal::AnyHash) }

        # Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        # timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :after

        sig { params(after: Time).void }
        attr_writer :after

        # Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        # timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :before

        sig { params(before: Time).void }
        attr_writer :before

        # Return results on or after this
        # [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_after

        sig { params(on_or_after: Time).void }
        attr_writer :on_or_after

        # Return results on or before this
        # [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :on_or_before

        sig { params(on_or_before: Time).void }
        attr_writer :on_or_before

        sig { params(after: Time, before: Time, on_or_after: Time, on_or_before: Time).returns(T.attached_class) }
        def self.new(
          # Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        # timestamp.
        after: nil,
          # Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        # timestamp.
        before: nil,
          # Return results on or after this
        # [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        on_or_after: nil,
          # Return results on or before this
        # [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        on_or_before: nil
        ); end

        sig { override.returns({after: Time, before: Time, on_or_after: Time, on_or_before: Time}) }
        def to_hash; end
      end
    end
  end
end
