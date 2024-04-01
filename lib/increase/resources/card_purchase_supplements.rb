# frozen_string_literal: true

module Increase
  module Resources
    class CardPurchaseSupplements
      def initialize(client:)
        @client = client
      end

      # Retrieve a Card Purchase Supplement
      #
      # @param card_purchase_supplement_id [String] The identifier of the Card Purchase Supplement.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CardPurchaseSupplement]
      def retrieve(card_purchase_supplement_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/card_purchase_supplements/#{card_purchase_supplement_id}"
        req[:model] = Increase::Models::CardPurchaseSupplement
        @client.request(req, opts)
      end
    end
  end
end
