# frozen_string_literal: true

module Increase
  module Resources
    class CardPayments
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Retrieve a Card Payment
      #
      # @param card_payment_id [String] The identifier of the Card Payment.
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CardPayment]
      def retrieve(card_payment_id, opts = {})
        req = {
          method: :get,
          path: "/card_payments/#{card_payment_id}",
          model: Increase::Models::CardPayment
        }
        @client.request(req, opts)
      end

      # List Card Payments
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :account_id Filter Card Payments to ones belonging to the specified Account.
      #   @option params [String, nil] :card_id Filter Card Payments to ones belonging to the specified Card.
      #   @option params [CreatedAt, nil] :created_at
      #   @option params [String, nil] :cursor Return the page of entries after this one.
      #   @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::CardPayment>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/card_payments",
          query: params,
          page: Increase::Page,
          model: Increase::Models::CardPayment
        }
        @client.request(req, opts)
      end
    end
  end
end
