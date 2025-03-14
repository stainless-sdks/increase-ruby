# typed: strong

module Increase
  module Resources
    class InboundWireTransfers
      # Retrieve an Inbound Wire Transfer
      sig do
        params(
          inbound_wire_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::InboundWireTransfer)
      end
      def retrieve(inbound_wire_transfer_id, request_options: {})
      end

      # List Inbound Wire Transfers
      sig do
        params(
          account_id: String,
          account_number_id: String,
          created_at: Increase::Models::InboundWireTransferListParams::CreatedAt,
          cursor: String,
          limit: Integer,
          status: Increase::Models::InboundWireTransferListParams::Status,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::InboundWireTransfer])
      end
      def list(
        account_id: nil,
        account_number_id: nil,
        created_at: nil,
        cursor: nil,
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
