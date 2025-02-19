# typed: strong

module Increase
  module Resources
    class RealTimePaymentsRequestForPayments
      sig do
        params(
            amount: Integer,
            debtor: Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor,
            destination_account_number_id: String,
            expires_at: Date,
            remittance_information: String,
            source_account_number: String,
            source_routing_number: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::RealTimePaymentsRequestForPayment)
      end
      def create(
        amount:,
        debtor:,
        destination_account_number_id:,
        expires_at:,
        remittance_information:,
        source_account_number:,
        source_routing_number:,
        request_options: {}
      )
      end

      sig do
        params(
            request_for_payment_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::RealTimePaymentsRequestForPayment)
      end
      def retrieve(request_for_payment_id, request_options: {})
      end

      sig do
        params(
            account_id: String,
            created_at: Increase::Models::RealTimePaymentsRequestForPaymentListParams::CreatedAt,
            cursor: String,
            idempotency_key: String,
            limit: Integer,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Page[Increase::Models::RealTimePaymentsRequestForPayment])
      end
      def list(account_id: nil, created_at: nil, cursor: nil, idempotency_key: nil, limit: nil, request_options: {})
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
