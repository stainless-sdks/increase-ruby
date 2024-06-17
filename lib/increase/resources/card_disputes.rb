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
        req = {}
        req[:method] = :post
        req[:path] = "/card_disputes"
        req[:body] = params
        req[:model] = Increase::Models::CardDispute
        @client.request(req, opts)
      end

      # Retrieve a Card Dispute
      # 
      # @param card_dispute_id [String] The identifier of the Card Dispute.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::CardDispute]
      def retrieve(card_dispute_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/card_disputes/#{card_dispute_id}"
        req[:model] = Increase::Models::CardDispute
        @client.request(req, opts)
      end

      # List Card Disputes
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [CreatedAt] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Status] :status
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Page<Increase::Models::CardDispute>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/card_disputes"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::CardDispute
        @client.request(req, opts)
      end
    end
  end
end
