# frozen_string_literal: true

module Increase
  module Resources
    class PhysicalCards
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Create a Physical Card
      #
      # @param params [Hash] Attributes to send in this request.
      #   @option params [String] :card_id The underlying card representing this physical card.
      #   @option params [Cardholder] :cardholder Details about the cardholder, as it will appear on the physical card.
      #   @option params [Shipment] :shipment The details used to ship this physical card.
      #   @option params [String, nil] :physical_card_profile_id The physical card profile to use for this physical card. The latest default
      #     physical card profile will be used if not provided.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::PhysicalCard]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/physical_cards",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::PhysicalCard
        }
        @client.request(req, opts)
      end

      # Retrieve a Physical Card
      #
      # @param physical_card_id [String] The identifier of the Physical Card.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::PhysicalCard]
      def retrieve(physical_card_id, opts = {})
        req = {
          method: :get,
          path: "/physical_cards/#{physical_card_id}",
          model: Increase::Models::PhysicalCard
        }
        @client.request(req, opts)
      end

      # Update a Physical Card
      #
      # @param physical_card_id [String] The Physical Card identifier.
      #
      # @param params [Hash] Attributes to send in this request.
      #   @option params [Symbol, Status] :status The status to update the Physical Card to.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::PhysicalCard]
      def update(physical_card_id, params = {}, opts = {})
        req = {
          method: :patch,
          path: "/physical_cards/#{physical_card_id}",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::PhysicalCard
        }
        @client.request(req, opts)
      end

      # List Physical Cards
      #
      # @param params [Hash] Attributes to send in this request.
      #   @option params [String, nil] :card_id Filter Physical Cards to ones belonging to the specified Card.
      #   @option params [CreatedAt, nil] :created_at
      #   @option params [String, nil] :cursor Return the page of entries after this one.
      #   @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::PhysicalCard>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/physical_cards",
          query: params,
          page: Increase::Page,
          model: Increase::Models::PhysicalCard
        }
        @client.request(req, opts)
      end
    end
  end
end
