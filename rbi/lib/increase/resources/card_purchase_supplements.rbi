# typed: strong

module Increase
  module Resources
    class CardPurchaseSupplements
      # Retrieve a Card Purchase Supplement
      sig do
        params(
          card_purchase_supplement_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::CardPurchaseSupplement)
      end
      def retrieve(
        # #/paths//card_purchase_supplements/{card_purchase_supplement_id}/get/parameters/0/schema
        card_purchase_supplement_id,
        request_options: {}
      ); end
      # List Card Purchase Supplements
      sig do
        params(
          card_payment_id: String,
          created_at: T.any(Increase::Models::CardPurchaseSupplementListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::CardPurchaseSupplement])
      end
      def list(
        # #/paths//card_purchase_supplements/get/parameters/2/schema
        card_payment_id: nil,
        created_at: nil,
        # #/paths//card_purchase_supplements/get/parameters/0/schema
        cursor: nil,
        # #/paths//card_purchase_supplements/get/parameters/1/schema
        limit: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
