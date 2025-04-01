# frozen_string_literal: true

module Increase
  module Resources
    class CardPayments
      # Retrieve a Card Payment
      #
      # @overload retrieve(card_payment_id, request_options: {})
      #
      # @param card_payment_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::CardPayment]
      #
      # @see Increase::Models::CardPaymentRetrieveParams
      def retrieve(card_payment_id, params = {})
        @client.request(
          method: :get,
          path: ["card_payments/%1$s", card_payment_id],
          model: Increase::Models::CardPayment,
          options: params[:request_options]
        )
      end

      # List Card Payments
      #
      # @overload list(account_id: nil, card_id: nil, created_at: nil, cursor: nil, limit: nil, request_options: {})
      #
      # @param account_id [String]
      # @param card_id [String]
      # @param created_at [Increase::Models::CardPaymentListParams::CreatedAt]
      # @param cursor [String]
      # @param limit [Integer]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Page<Increase::Models::CardPayment>]
      #
      # @see Increase::Models::CardPaymentListParams
      def list(params = {})
        parsed, options = Increase::Models::CardPaymentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "card_payments",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::CardPayment,
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
