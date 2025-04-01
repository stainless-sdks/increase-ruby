# frozen_string_literal: true

module Increase
  module Resources
    class PhysicalCards
      # Create a Physical Card
      #
      # @param params [Increase::Models::PhysicalCardCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :card_id The underlying card representing this physical card.
      #
      #   @option params [Increase::Models::PhysicalCardCreateParams::Cardholder] :cardholder Details about the cardholder, as it will appear on the physical card.
      #
      #   @option params [Increase::Models::PhysicalCardCreateParams::Shipment] :shipment The details used to ship this physical card.
      #
      #   @option params [String] :physical_card_profile_id The physical card profile to use for this physical card. The latest default
      #     physical card profile will be used if not provided.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::PhysicalCard]
      def create(params)
        parsed, options = Increase::Models::PhysicalCardCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "physical_cards",
          body: parsed,
          model: Increase::Models::PhysicalCard,
          options: options
        )
      end

      # Retrieve a Physical Card
      #
      # @param physical_card_id [String] The identifier of the Physical Card.
      #
      # @param params [Increase::Models::PhysicalCardRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::PhysicalCard]
      def retrieve(physical_card_id, params = {})
        @client.request(
          method: :get,
          path: ["physical_cards/%0s", physical_card_id],
          model: Increase::Models::PhysicalCard,
          options: params[:request_options]
        )
      end

      # Update a Physical Card
      #
      # @param physical_card_id [String] The Physical Card identifier.
      #
      # @param params [Increase::Models::PhysicalCardUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, Increase::Models::PhysicalCardUpdateParams::Status] :status The status to update the Physical Card to.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::PhysicalCard]
      def update(physical_card_id, params)
        parsed, options = Increase::Models::PhysicalCardUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["physical_cards/%0s", physical_card_id],
          body: parsed,
          model: Increase::Models::PhysicalCard,
          options: options
        )
      end

      # List Physical Cards
      #
      # @param params [Increase::Models::PhysicalCardListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :card_id Filter Physical Cards to ones belonging to the specified Card.
      #
      #   @option params [Increase::Models::PhysicalCardListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::PhysicalCard>]
      def list(params = {})
        parsed, options = Increase::Models::PhysicalCardListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "physical_cards",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::PhysicalCard,
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
