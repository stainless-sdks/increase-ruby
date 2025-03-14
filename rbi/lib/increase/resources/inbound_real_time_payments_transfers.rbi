# typed: strong

module Increase
  module Resources
    class InboundRealTimePaymentsTransfers
      # Retrieve an Inbound Real-Time Payments Transfer
      sig do
        params(
          inbound_real_time_payments_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::InboundRealTimePaymentsTransfer)
      end
      def retrieve(inbound_real_time_payments_transfer_id, request_options: {})
      end

      # List Inbound Real-Time Payments Transfers
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

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
