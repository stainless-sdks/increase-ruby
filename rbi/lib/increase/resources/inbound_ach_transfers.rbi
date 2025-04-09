# typed: strong

module Increase
  module Resources
    class InboundACHTransfers
      # Retrieve an Inbound ACH Transfer
      sig do
        params(
          inbound_ach_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::InboundACHTransfer)
      end
      def retrieve(
        # #/paths//inbound_ach_transfers/{inbound_ach_transfer_id}/get/parameters/0/schema
        inbound_ach_transfer_id,
        request_options: {}
      ); end
      # List Inbound ACH Transfers
      sig do
        params(
          account_id: String,
          account_number_id: String,
          created_at: T.any(Increase::Models::InboundACHTransferListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          limit: Integer,
          status: T.any(Increase::Models::InboundACHTransferListParams::Status, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::InboundACHTransfer])
      end
      def list(
        # #/paths//inbound_ach_transfers/get/parameters/2/schema
        account_id: nil,
        # #/paths//inbound_ach_transfers/get/parameters/3/schema
        account_number_id: nil,
        created_at: nil,
        # #/paths//inbound_ach_transfers/get/parameters/0/schema
        cursor: nil,
        # #/paths//inbound_ach_transfers/get/parameters/1/schema
        limit: nil,
        status: nil,
        request_options: {}
      ); end
      # Create a notification of change for an Inbound ACH Transfer
      sig do
        params(
          inbound_ach_transfer_id: String,
          updated_account_number: String,
          updated_routing_number: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::InboundACHTransfer)
      end
      def create_notification_of_change(
        # #/paths//inbound_ach_transfers/{inbound_ach_transfer_id}/create_notification_of_change/post/parameters/0/schema
        inbound_ach_transfer_id,
        # #/components/schemas/create_a_notification_of_change_for_an_inbound_ach_transfer_parameters/properties/updated_account_number
        updated_account_number: nil,
        # #/components/schemas/create_a_notification_of_change_for_an_inbound_ach_transfer_parameters/properties/updated_routing_number
        updated_routing_number: nil,
        request_options: {}
      ); end
      # Decline an Inbound ACH Transfer
      sig do
        params(
          inbound_ach_transfer_id: String,
          reason: Increase::Models::InboundACHTransferDeclineParams::Reason::OrSymbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::InboundACHTransfer)
      end
      def decline(
        # #/paths//inbound_ach_transfers/{inbound_ach_transfer_id}/decline/post/parameters/0/schema
        inbound_ach_transfer_id,
        # #/components/schemas/decline_an_inbound_ach_transfer_parameters/properties/reason
        reason: nil,
        request_options: {}
      ); end
      # Return an Inbound ACH Transfer
      sig do
        params(
          inbound_ach_transfer_id: String,
          reason: Increase::Models::InboundACHTransferTransferReturnParams::Reason::OrSymbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::InboundACHTransfer)
      end
      def transfer_return(
        # #/paths//inbound_ach_transfers/{inbound_ach_transfer_id}/transfer_return/post/parameters/0/schema
        inbound_ach_transfer_id,
        # #/components/schemas/return_an_inbound_ach_transfer_parameters/properties/reason
        reason:,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
