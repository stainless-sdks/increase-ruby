# frozen_string_literal: true

module Increase
  module Resources
    class CardDisputes
      # Create a Card Dispute
      #
      # @overload create(disputed_transaction_id:, explanation:, amount: nil, request_options: {})
      #
      # @param disputed_transaction_id [String]
      # @param explanation [String]
      # @param amount [Integer]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::CardDispute]
      #
      # @see Increase::Models::CardDisputeCreateParams
      def create(params)
        parsed, options = Increase::Models::CardDisputeCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "card_disputes",
          body: parsed,
          model: Increase::Models::CardDispute,
          options: options
        )
      end

      # Retrieve a Card Dispute
      #
      # @overload retrieve(card_dispute_id, request_options: {})
      #
      # @param card_dispute_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::CardDispute]
      #
      # @see Increase::Models::CardDisputeRetrieveParams
      def retrieve(card_dispute_id, params = {})
        @client.request(
          method: :get,
          path: ["card_disputes/%1$s", card_dispute_id],
          model: Increase::Models::CardDispute,
          options: params[:request_options]
        )
      end

      # List Card Disputes
      #
      # @overload list(created_at: nil, cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      #
      # @param created_at [Increase::Models::CardDisputeListParams::CreatedAt]
      # @param cursor [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param status [Increase::Models::CardDisputeListParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::CardDispute>]
      #
      # @see Increase::Models::CardDisputeListParams
      def list(params = {})
        parsed, options = Increase::Models::CardDisputeListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "card_disputes",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::CardDispute,
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
