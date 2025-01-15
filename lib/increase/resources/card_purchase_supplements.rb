# frozen_string_literal: true

module Increase
  module Resources
    class CardPurchaseSupplements
      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end

      # Retrieve a Card Purchase Supplement
      #
      # @param card_purchase_supplement_id [String] The identifier of the Card Purchase Supplement.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CardPurchaseSupplement]
      #
      def retrieve(card_purchase_supplement_id, opts = {})
        req = {
          method: :get,
          path: ["card_purchase_supplements/%0s", card_purchase_supplement_id],
          model: Increase::Models::CardPurchaseSupplement
        }
        @client.request(req, opts)
      end

      # List Card Purchase Supplements
      #
      # @param params [Increase::Models::CardPurchaseSupplementListParams, Hash{Symbol => Object}] Attributes to send in this request.
      #
      #   @option params [String] :card_payment_id Filter Card Purchase Supplements to ones belonging to the specified Card
      #     Payment.
      #
      #   @option params [Increase::Models::CardPurchaseSupplementListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::CardPurchaseSupplement>]
      #
      def list(params = {}, opts = {})
        parsed = Increase::Models::CardPurchaseSupplementListParams.dump(params)
        req = {
          method: :get,
          path: "card_purchase_supplements",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::CardPurchaseSupplement
        }
        @client.request(req, opts)
      end
    end
  end
end
