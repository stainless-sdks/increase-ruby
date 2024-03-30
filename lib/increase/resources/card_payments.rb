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
        request = {}
        request[:method] = :get
        request[:path] = "/card_payments/#{card_payment_id}"
        request[:model] = Increase::Models::CardPayment
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
