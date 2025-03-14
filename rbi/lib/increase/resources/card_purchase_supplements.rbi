# typed: strong

module Increase
  module Resources
    class CardPurchaseSupplements
      # Retrieve a Card Purchase Supplement
      sig do
        params(
          card_purchase_supplement_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::CardPurchaseSupplement)
      end
      def retrieve(card_purchase_supplement_id, request_options: {})
      end

      # List Card Purchase Supplements
      sig do
        params(
          card_payment_id: String,
          created_at: Increase::Models::CardPurchaseSupplementListParams::CreatedAt,
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::CardPurchaseSupplement])
      end
      def list(card_payment_id: nil, created_at: nil, cursor: nil, limit: nil, request_options: {})
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
