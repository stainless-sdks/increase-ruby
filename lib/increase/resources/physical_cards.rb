# frozen_string_literal: true

module Increase
  module Resources
    class PhysicalCardsResource
      def initialize(client:)
        @client = client
      end

      # Create a Physical Card
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :card_id The underlying card representing this physical card.
      # @option params [Hash] :cardholder Details about the cardholder, as it will appear on the physical card.
      # @option params [Hash] :shipment The details used to ship this physical card.
      # @option params [String] :physical_card_profile_id The physical card profile to use for this physical card. The latest default
      #   physical card profile will be used if not provided.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::PhysicalCard]
      def create(params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/physical_cards"
        body_params = [:card_id, :cardholder, :shipment, :physical_card_profile_id]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::PhysicalCard
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve a Physical Card
      #
      # @param physical_card_id [String] The identifier of the Physical Card.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::PhysicalCard]
      def retrieve(physical_card_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/physical_cards/#{physical_card_id}"
        request[:model] = Increase::Models::PhysicalCard
        request.merge!(opts)
        @client.request(request)
      end

      # Update a Physical Card
      #
      # @param physical_card_id [String] The Physical Card identifier.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol] :status The status to update the Physical Card to.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::PhysicalCard]
      def update(physical_card_id, params = {}, opts = {})
        request = {}
        request[:method] = :patch
        request[:path] = "/physical_cards/#{physical_card_id}"
        body_params = [:status]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::PhysicalCard
        request.merge!(opts)
        @client.request(request)
      end

      # List Physical Cards
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :card_id Filter Physical Cards to ones belonging to the specified Card.
      # @option params [Hash] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::PhysicalCard]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/physical_cards"
        query_params = [:card_id, :created_at, :cursor, :idempotency_key, :limit]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::PhysicalCard
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
