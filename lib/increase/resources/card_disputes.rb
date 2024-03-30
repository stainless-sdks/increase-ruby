# frozen_string_literal: true

module Increase
  module Resources
    class CardDisputes
      def initialize(client:)
        @client = client
      end

      # Create a Card Dispute
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :disputed_transaction_id The Transaction you wish to dispute. This Transaction must have a `source_type`
      #   of `card_settlement`.
      # @option params [String] :explanation Why you are disputing this Transaction.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CardDispute]
      def create(params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/card_disputes"
        request[:body] = params
        request[:model] = Increase::Models::CardDispute
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve a Card Dispute
      #
      # @param card_dispute_id [String] The identifier of the Card Dispute.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CardDispute]
      def retrieve(card_dispute_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/card_disputes/#{card_dispute_id}"
        request[:model] = Increase::Models::CardDispute
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
