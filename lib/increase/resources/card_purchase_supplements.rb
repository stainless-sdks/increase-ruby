# frozen_string_literal: true

module Increase
  module Resources
    class CardPurchaseSupplements
      # Retrieve a Card Purchase Supplement
      #
      # @overload retrieve(card_purchase_supplement_id, request_options: {})
      #
      # @param card_purchase_supplement_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::CardPurchaseSupplement]
      #
      # @see Increase::Models::CardPurchaseSupplementRetrieveParams
      def retrieve(card_purchase_supplement_id, params = {})
        @client.request(
          method: :get,
          path: ["card_purchase_supplements/%1$s", card_purchase_supplement_id],
          model: Increase::Models::CardPurchaseSupplement,
          options: params[:request_options]
        )
      end

      # List Card Purchase Supplements
      #
      # @overload list(card_payment_id: nil, created_at: nil, cursor: nil, limit: nil, request_options: {})
      #
      # @param card_payment_id [String]
      # @param created_at [Increase::Models::CardPurchaseSupplementListParams::CreatedAt]
      # @param cursor [String]
      # @param limit [Integer]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Page<Increase::Models::CardPurchaseSupplement>]
      #
      # @see Increase::Models::CardPurchaseSupplementListParams
      def list(params = {})
        parsed, options = Increase::Models::CardPurchaseSupplementListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "card_purchase_supplements",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::CardPurchaseSupplement,
          options: options
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
