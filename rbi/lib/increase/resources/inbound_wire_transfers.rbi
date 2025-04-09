# typed: strong

module Increase
  module Resources
    class InboundWireTransfers
      # Retrieve an Inbound Wire Transfer
      sig do
        params(
          inbound_wire_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::InboundWireTransfer)
      end
      def retrieve(
        # #/paths//inbound_wire_transfers/{inbound_wire_transfer_id}/get/parameters/0/schema
        inbound_wire_transfer_id,
        request_options: {}
      ); end
      # List Inbound Wire Transfers
      sig do
        params(
          account_id: String,
          account_number_id: String,
          created_at: T.any(Increase::Models::InboundWireTransferListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          limit: Integer,
          status: T.any(Increase::Models::InboundWireTransferListParams::Status, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::InboundWireTransfer])
      end
      def list(
        # #/paths//inbound_wire_transfers/get/parameters/2/schema
        account_id: nil,
        # #/paths//inbound_wire_transfers/get/parameters/3/schema
        account_number_id: nil,
        created_at: nil,
        # #/paths//inbound_wire_transfers/get/parameters/0/schema
        cursor: nil,
        # #/paths//inbound_wire_transfers/get/parameters/1/schema
        limit: nil,
        status: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
