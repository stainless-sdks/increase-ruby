# frozen_string_literal: true

module Increase
  module Resources
    class PhysicalCards
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
        req = {}
        req[:method] = :post
        req[:path] = "/physical_cards"
        req[:body] = params
        req[:model] = Increase::Models::PhysicalCard
        @client.request(req, opts)
      end

      # Retrieve a Physical Card
      #
      # @param physical_card_id [String] The identifier of the Physical Card.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::PhysicalCard]
      def retrieve(physical_card_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/physical_cards/#{physical_card_id}"
        req[:model] = Increase::Models::PhysicalCard
        @client.request(req, opts)
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
        req = {}
        req[:method] = :patch
        req[:path] = "/physical_cards/#{physical_card_id}"
        req[:body] = params
        req[:model] = Increase::Models::PhysicalCard
        @client.request(req, opts)
      end
    end
  end
end
