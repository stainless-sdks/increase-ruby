# frozen_string_literal: true

module Increase
  module Resources
    class CardPayments
      # Retrieve a Card Payment
      #
      # @param card_payment_id [String] The identifier of the Card Payment.
      #
      # @param params [Increase::Models::CardPaymentRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::CardPayment]
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
      # @param params [Increase::Models::CardPaymentListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id Filter Card Payments to ones belonging to the specified Account.
      #
      #   @option params [String] :card_id Filter Card Payments to ones belonging to the specified Card.
      #
      #   @option params [Increase::Models::CardPaymentListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::CardPayment>]
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

      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
