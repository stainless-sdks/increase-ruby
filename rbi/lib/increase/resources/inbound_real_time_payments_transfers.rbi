# typed: strong

module Increase
  module Resources
    class InboundRealTimePaymentsTransfers
      sig do
        params(
          inbound_real_time_payments_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::InboundRealTimePaymentsTransfer)
      end
      def retrieve(inbound_real_time_payments_transfer_id, request_options: {})
      end

      sig do
        params(
          account_id: String,
          account_number_id: String,
          created_at: Increase::Models::InboundRealTimePaymentsTransferListParams::CreatedAt,
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::InboundRealTimePaymentsTransfer])
      end
      def list(
        account_id: nil,
        account_number_id: nil,
        created_at: nil,
        cursor: nil,
        limit: nil,
        request_options: {}
      )
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
