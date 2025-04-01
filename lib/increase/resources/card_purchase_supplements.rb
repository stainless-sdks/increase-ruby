# frozen_string_literal: true

module Increase
  module Resources
    class CardPurchaseSupplements
      # Retrieve a Card Purchase Supplement
      #
      # @param card_purchase_supplement_id [String] The identifier of the Card Purchase Supplement.
      #
      # @param params [Increase::Models::CardPurchaseSupplementRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::CardPurchaseSupplement]
      def retrieve(card_purchase_supplement_id, params = {})
        @client.request(
          method: :get,
          path: ["card_purchase_supplements/%0s", card_purchase_supplement_id],
          model: Increase::Models::CardPurchaseSupplement,
          options: params[:request_options]
        )
      end

      # List Card Purchase Supplements
      #
      # @param params [Increase::Models::CardPurchaseSupplementListParams, Hash{Symbol=>Object}] .
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
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::CardPurchaseSupplement>]
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

      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
