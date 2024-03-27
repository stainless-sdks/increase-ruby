# frozen_string_literal: true

module Increase
  module Resources
    class CardPaymentsResource
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
        request = {}
        request[:method] = :get
        request[:path] = "/card_payments/#{card_payment_id}"
        request[:model] = Increase::Models::CardPayment
        request.merge!(opts)
        @client.request(request)
      end

      # List Card Payments
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id Filter Card Payments to ones belonging to the specified Account.
      # @option params [String] :card_id Filter Card Payments to ones belonging to the specified Card.
      # @option params [Hash] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::CardPayment]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/card_payments"
        query_params = [:account_id, :card_id, :created_at, :cursor, :limit]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::CardPayment
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
