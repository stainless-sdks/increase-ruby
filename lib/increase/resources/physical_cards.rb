# frozen_string_literal: true

module Increase
  module Resources
    class PhysicalCards
      # Create a Physical Card
      #
      # @overload create(card_id:, cardholder:, shipment:, physical_card_profile_id: nil, request_options: {})
      #
      # @param card_id [String]
      # @param cardholder [Increase::Models::PhysicalCardCreateParams::Cardholder]
      # @param shipment [Increase::Models::PhysicalCardCreateParams::Shipment]
      # @param physical_card_profile_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::PhysicalCard]
      #
      # @see Increase::Models::PhysicalCardCreateParams
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
      # @overload retrieve(physical_card_id, request_options: {})
      #
      # @param physical_card_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::PhysicalCard]
      #
      # @see Increase::Models::PhysicalCardRetrieveParams
      def retrieve(physical_card_id, params = {})
        @client.request(
          method: :get,
          path: ["physical_cards/%1$s", physical_card_id],
          model: Increase::Models::PhysicalCard,
          options: params[:request_options]
        )
      end

      # Update a Physical Card
      #
      # @overload update(physical_card_id, status:, request_options: {})
      #
      # @param physical_card_id [String]
      # @param status [Symbol, Increase::Models::PhysicalCardUpdateParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::PhysicalCard]
      #
      # @see Increase::Models::PhysicalCardUpdateParams
      def update(physical_card_id, params)
        parsed, options = Increase::Models::PhysicalCardUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["physical_cards/%1$s", physical_card_id],
          body: parsed,
          model: Increase::Models::PhysicalCard,
          options: options
        )
      end

      # List Physical Cards
      #
      # @overload list(card_id: nil, created_at: nil, cursor: nil, idempotency_key: nil, limit: nil, request_options: {})
      #
      # @param card_id [String]
      # @param created_at [Increase::Models::PhysicalCardListParams::CreatedAt]
      # @param cursor [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::PhysicalCard>]
      #
      # @see Increase::Models::PhysicalCardListParams
      def list(params = {})
        parsed, options = Increase::Models::PhysicalCardListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "physical_cards",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::PhysicalCard,
          options: options
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
