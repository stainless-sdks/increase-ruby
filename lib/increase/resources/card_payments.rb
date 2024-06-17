# frozen_string_literal: true

module Increase
  module Resources
    class CardPayments
      def initialize(client:)
        @client = client
      end

      # Retrieve a Card Payment
      # 
      # @param card_payment_id [String] The identifier of the Card Payment.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::CardPayment]
      def retrieve(card_payment_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/card_payments/#{card_payment_id}"
        req[:model] = Increase::Models::CardPayment
        @client.request(req, opts)
      end

      # List Card Payments
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id Filter Card Payments to ones belonging to the specified Account.
      # @option params [String] :card_id Filter Card Payments to ones belonging to the specified Card.
      # @option params [CreatedAt] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Page<Increase::Models::CardPayment>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/card_payments"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::CardPayment
        @client.request(req, opts)
      end
    end
  end
end
