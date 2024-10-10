# frozen_string_literal: true

module Increase
  module Resources
    class CardPurchaseSupplements
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Retrieve a Card Purchase Supplement
      #
      # @param card_purchase_supplement_id [String] The identifier of the Card Purchase Supplement.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CardPurchaseSupplement]
      def retrieve(card_purchase_supplement_id, opts = {})
        req = {
          method: :get,
          path: "/card_purchase_supplements/#{card_purchase_supplement_id}",
          model: Increase::Models::CardPurchaseSupplement
        }
        @client.request(req, opts)
      end

      # List Card Purchase Supplements
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :card_payment_id Filter Card Purchase Supplements to ones belonging to the specified Card
      #   Payment.
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::CardPurchaseSupplement>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/card_purchase_supplements",
          query: params,
          page: Increase::Page,
          model: Increase::Models::CardPurchaseSupplement
        }
        @client.request(req, opts)
      end
    end
  end
end
