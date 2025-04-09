# typed: strong

module Increase
  module Resources
    class CardPayments
      # Retrieve a Card Payment
      sig do
        params(
          card_payment_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::CardPayment)
      end
      def retrieve(
        # #/paths//card_payments/{card_payment_id}/get/parameters/0/schema
        card_payment_id,
        request_options: {}
      ); end
      # List Card Payments
      sig do
        params(
          account_id: String,
          card_id: String,
          created_at: T.any(Increase::Models::CardPaymentListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::CardPayment])
      end
      def list(
        # #/paths//card_payments/get/parameters/2/schema
        account_id: nil,
        # #/paths//card_payments/get/parameters/3/schema
        card_id: nil,
        created_at: nil,
        # #/paths//card_payments/get/parameters/0/schema
        cursor: nil,
        # #/paths//card_payments/get/parameters/1/schema
        limit: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
