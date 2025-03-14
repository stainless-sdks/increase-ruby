# typed: strong

module Increase
  module Resources
    class InboundACHTransfers
      # Retrieve an Inbound ACH Transfer
      sig do
        params(
          inbound_ach_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::InboundACHTransfer)
      end
      def retrieve(inbound_ach_transfer_id, request_options: {})
      end

      # List Inbound ACH Transfers
      sig do
        params(
          account_id: String,
          account_number_id: String,
          created_at: Increase::Models::InboundACHTransferListParams::CreatedAt,
          cursor: String,
          limit: Integer,
          status: Increase::Models::InboundACHTransferListParams::Status,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::InboundACHTransfer])
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

      # Create a notification of change for an Inbound ACH Transfer
      sig do
        params(
          inbound_ach_transfer_id: String,
          updated_account_number: String,
          updated_routing_number: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::InboundACHTransfer)
      end
      def create_notification_of_change(
        inbound_ach_transfer_id,
        updated_account_number: nil,
        updated_routing_number: nil,
        request_options: {}
      )
      end

      # Decline an Inbound ACH Transfer
      sig do
        params(
          inbound_ach_transfer_id: String,
          reason: Symbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::InboundACHTransfer)
      end
      def decline(inbound_ach_transfer_id, reason: nil, request_options: {})
      end

      # Return an Inbound ACH Transfer
      sig do
        params(
          inbound_ach_transfer_id: String,
          reason: Symbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::InboundACHTransfer)
      end
      def transfer_return(inbound_ach_transfer_id, reason:, request_options: {})
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
