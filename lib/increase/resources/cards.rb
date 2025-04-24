# frozen_string_literal: true

module Increase
  module Resources
    class Cards
      # Create a Card
      #
      # @overload create(account_id:, billing_address: nil, description: nil, digital_wallet: nil, entity_id: nil, request_options: {})
      #
      # @param account_id [String]
      # @param billing_address [Increase::Models::CardCreateParams::BillingAddress]
      # @param description [String]
      # @param digital_wallet [Increase::Models::CardCreateParams::DigitalWallet]
      # @param entity_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Card]
      #
      # @see Increase::Models::CardCreateParams
      def create(params)
        parsed, options = Increase::Models::CardCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "cards",
          body: parsed,
          model: Increase::Models::Card,
          options: options
        )
      end

      # Retrieve a Card
      #
      # @overload retrieve(card_id, request_options: {})
      #
      # @param card_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Card]
      #
      # @see Increase::Models::CardRetrieveParams
      def retrieve(card_id, params = {})
        @client.request(
          method: :get,
          path: ["cards/%1$s", card_id],
          model: Increase::Models::Card,
          options: params[:request_options]
        )
      end

      # Update a Card
      #
      # @overload update(card_id, billing_address: nil, description: nil, digital_wallet: nil, entity_id: nil, status: nil, request_options: {})
      #
      # @param card_id [String]
      # @param billing_address [Increase::Models::CardUpdateParams::BillingAddress]
      # @param description [String]
      # @param digital_wallet [Increase::Models::CardUpdateParams::DigitalWallet]
      # @param entity_id [String]
      # @param status [Symbol, Increase::Models::CardUpdateParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::Card]
      #
      # @see Increase::Models::CardUpdateParams
      def update(card_id, params = {})
        parsed, options = Increase::Models::CardUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["cards/%1$s", card_id],
          body: parsed,
          model: Increase::Models::Card,
          options: options
        )
      end

      # List Cards
      #
      # @overload list(account_id: nil, created_at: nil, cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      #
      # @param account_id [String]
      # @param created_at [Increase::Models::CardListParams::CreatedAt]
      # @param cursor [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param status [Increase::Models::CardListParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::Card>]
      #
      # @see Increase::Models::CardListParams
      def list(params = {})
        parsed, options = Increase::Models::CardListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "cards",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::Card,
          options: options
        )
      end

      # Retrieve sensitive details for a Card
      #
      # @overload details(card_id, request_options: {})
      #
      # @param card_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::CardDetails]
      #
      # @see Increase::Models::CardDetailsParams
      def details(card_id, params = {})
        @client.request(
          method: :get,
          path: ["cards/%1$s/details", card_id],
          model: Increase::Models::CardDetails,
          options: params[:request_options]
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
