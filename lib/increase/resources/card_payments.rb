# frozen_string_literal: true

module Increase
  module Resources
    class CardPayments
      # Retrieve a Card Payment
      #
      # @param card_payment_id [String] The identifier of the Card Payment.
      #
      # @param opts [Hash{Symbol=>Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CardPayment]
      #
      def retrieve(card_payment_id, opts = {})
        req = {
          method: :get,
          path: ["card_payments/%0s", card_payment_id],
          model: Increase::Models::CardPayment
        }
        @client.request(req, opts)
      end

      # List Card Payments
      #
      # @param params [Increase::Models::CardPaymentListParams, Hash{Symbol=>Object}] Attributes to send in this request.
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
      # @param opts [Hash{Symbol=>Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::CardPayment>]
      #
      def list(params = {}, opts = {})
        parsed = Increase::Models::CardPaymentListParams.dump(params)
        req = {
          method: :get,
          path: "card_payments",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::CardPayment
        }
        @client.request(req, opts)
      end

      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
