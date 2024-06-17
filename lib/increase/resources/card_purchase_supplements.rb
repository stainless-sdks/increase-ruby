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

      # List Card Purchase Supplements
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :card_payment_id Filter Card Purchase Supplements to ones belonging to the specified Card
      #   Payment.
      # @option params [CreatedAt] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Page<Increase::Models::CardPurchaseSupplement>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/card_purchase_supplements"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::CardPurchaseSupplement
        @client.request(req, opts)
      end
    end
  end
end
