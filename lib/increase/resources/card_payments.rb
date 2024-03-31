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
    end
  end
end
