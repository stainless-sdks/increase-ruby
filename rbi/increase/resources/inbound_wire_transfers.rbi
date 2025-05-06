# typed: strong

module Increase
  module Resources
    class InboundWireTransfers
      # Retrieve an Inbound Wire Transfer
      sig do
        params(
          inbound_wire_transfer_id: String,
          request_options: Increase::RequestOpts
        ).returns(Increase::Models::InboundWireTransfer)
      end
      def retrieve(
        # The identifier of the Inbound Wire Transfer to get details for.
        inbound_wire_transfer_id,
        request_options: {}
      )
      end

      # List Inbound Wire Transfers
      sig do
        params(
          account_id: String,
          account_number_id: String,
          created_at:
            T.any(
              Increase::Models::InboundWireTransferListParams::CreatedAt,
              Increase::Internal::AnyHash
            ),
          cursor: String,
          limit: Integer,
          status:
            T.any(
              Increase::Models::InboundWireTransferListParams::Status,
              Increase::Internal::AnyHash
            ),
          request_options: Increase::RequestOpts
        ).returns(
          Increase::Internal::Page[Increase::Models::InboundWireTransfer]
        )
      end
      def list(
        # Filter Inbound Wire Transfers to ones belonging to the specified Account.
        account_id: nil,
        # Filter Inbound Wire Transfers to ones belonging to the specified Account Number.
        account_number_id: nil,
        created_at: nil,
        # Return the page of entries after this one.
        cursor: nil,
        # Limit the size of the list that is returned. The default (and maximum) is 100
        # objects.
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      # Reverse an Inbound Wire Transfer
      sig do
        params(
          inbound_wire_transfer_id: String,
          reason:
            Increase::Models::InboundWireTransferReverseParams::Reason::OrSymbol,
          request_options: Increase::RequestOpts
        ).returns(Increase::Models::InboundWireTransfer)
      end
      def reverse(
        # The identifier of the Inbound Wire Transfer to reverse.
        inbound_wire_transfer_id,
        # Reason for the reversal.
        reason:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
