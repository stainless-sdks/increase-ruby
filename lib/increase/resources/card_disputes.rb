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
        body_params = [:disputed_transaction_id, :explanation]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
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

      # List Card Disputes
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Hash] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Hash] :status
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CardDispute]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/card_disputes"
        query_params = [:created_at, :cursor, :idempotency_key, :limit, :status]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::CardDispute
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
