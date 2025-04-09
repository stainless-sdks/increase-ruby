# typed: strong

module Increase
  module Resources
    class InboundRealTimePaymentsTransfers
      # Retrieve an Inbound Real-Time Payments Transfer
      sig do
        params(
          inbound_real_time_payments_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::InboundRealTimePaymentsTransfer)
      end
      def retrieve(
        # #/paths//inbound_real_time_payments_transfers/{inbound_real_time_payments_transfer_id}/get/parameters/0/schema
        inbound_real_time_payments_transfer_id,
        request_options: {}
      ); end
      # List Inbound Real-Time Payments Transfers
      sig do
        params(
          account_id: String,
          account_number_id: String,
          created_at: T.any(Increase::Models::InboundRealTimePaymentsTransferListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::InboundRealTimePaymentsTransfer])
      end
      def list(
        # #/paths//inbound_real_time_payments_transfers/get/parameters/2/schema
        account_id: nil,
        # #/paths//inbound_real_time_payments_transfers/get/parameters/3/schema
        account_number_id: nil,
        created_at: nil,
        # #/paths//inbound_real_time_payments_transfers/get/parameters/0/schema
        cursor: nil,
        # #/paths//inbound_real_time_payments_transfers/get/parameters/1/schema
        limit: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
