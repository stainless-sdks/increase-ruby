# typed: strong

module Increase
  module Resources
    class CardPayments
      sig do
        params(
          card_payment_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::CardPayment)
      end
      def retrieve(card_payment_id, request_options: {})
      end

      sig do
        params(
          account_id: String,
          card_id: String,
          created_at: Increase::Models::CardPaymentListParams::CreatedAt,
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::CardPayment])
      end
      def list(account_id: nil, card_id: nil, created_at: nil, cursor: nil, limit: nil, request_options: {})
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
