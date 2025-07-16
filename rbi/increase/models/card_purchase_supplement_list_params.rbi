# typed: strong

module Increase
  module Models
    class CardPurchaseSupplementListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(Increase::CardPurchaseSupplementListParams, Increase::Internal::AnyHash) }

      # Filter Card Purchase Supplements to ones belonging to the specified Card
      # Payment.
      sig { returns(T.nilable(String)) }
      attr_reader :card_payment_id

      sig { params(card_payment_id: String).void }
      attr_writer :card_payment_id

      sig { returns(T.nilable(Increase::CardPurchaseSupplementListParams::CreatedAt)) }
      attr_reader :created_at

      sig { params(created_at: Increase::CardPurchaseSupplementListParams::CreatedAt::OrHash).void }
      attr_writer :created_at

      # Return the page of entries after this one.
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # Limit the size of the list that is returned. The default (and maximum) is 100
      # objects.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig do
        params(
          card_payment_id: String,
          created_at: Increase::CardPurchaseSupplementListParams::CreatedAt::OrHash,
          cursor: String,
          limit: Integer,
          request_options: Increase::RequestOptions::OrHash
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Filter Card Purchase Supplements to ones belonging to the specified Card
      # Payment.
      card_payment_id: nil,
        created_at: nil,
        # Return the page of entries after this one.
      cursor: nil,
        # Limit the size of the list that is returned. The default (and maximum) is 100
      # objects.
      limit: nil,
        request_options: {}
      ); end

      sig do
        override
          .returns(
            {
              card_payment_id: String,
              created_at: Increase::CardPurchaseSupplementListParams::CreatedAt,
              cursor: String,
              limit: Integer,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      class CreatedAt < Increase::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Increase::CardPurchaseSupplementListParams::CreatedAt, Increase::Internal::AnyHash) }

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
