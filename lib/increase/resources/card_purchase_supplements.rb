# frozen_string_literal: true

module Increase
  module Resources
    class CardPurchaseSupplementsResource
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
        request = {}
        request[:method] = :get
        request[:path] = "/card_purchase_supplements/#{card_purchase_supplement_id}"
        request[:model] = Increase::Models::CardPurchaseSupplement
        request.merge!(opts)
        @client.request(request)
      end

      # List Card Purchase Supplements
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :card_payment_id Filter Card Purchase Supplements to ones belonging to the specified Card
      #   Payment.
      # @option params [Hash] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CardPurchaseSupplement]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/card_purchase_supplements"
        query_params = [:card_payment_id, :created_at, :cursor, :limit]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::CardPurchaseSupplement
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
