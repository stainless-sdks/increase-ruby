# typed: strong

module Increase
  module Resources
    class WireTransfers
      # Create a Wire Transfer
      sig do
        params(
          account_id: String,
          amount: Integer,
          beneficiary_name: String,
          message_to_recipient: String,
          account_number: String,
          beneficiary_address_line1: String,
          beneficiary_address_line2: String,
          beneficiary_address_line3: String,
          external_account_id: String,
          originator_address_line1: String,
          originator_address_line2: String,
          originator_address_line3: String,
          originator_name: String,
          require_approval: T::Boolean,
          routing_number: String,
          source_account_number_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::WireTransfer)
      end
      def create(
        # #/components/schemas/create_a_wire_transfer_parameters/properties/account_id
        account_id:,
        # #/components/schemas/create_a_wire_transfer_parameters/properties/amount
        amount:,
        # #/components/schemas/create_a_wire_transfer_parameters/properties/beneficiary_name
        beneficiary_name:,
        # #/components/schemas/create_a_wire_transfer_parameters/properties/message_to_recipient
        message_to_recipient:,
        # #/components/schemas/create_a_wire_transfer_parameters/properties/account_number
        account_number: nil,
        # #/components/schemas/create_a_wire_transfer_parameters/properties/beneficiary_address_line1
        beneficiary_address_line1: nil,
        # #/components/schemas/create_a_wire_transfer_parameters/properties/beneficiary_address_line2
        beneficiary_address_line2: nil,
        # #/components/schemas/create_a_wire_transfer_parameters/properties/beneficiary_address_line3
        beneficiary_address_line3: nil,
        # #/components/schemas/create_a_wire_transfer_parameters/properties/external_account_id
        external_account_id: nil,
        # #/components/schemas/create_a_wire_transfer_parameters/properties/originator_address_line1
        originator_address_line1: nil,
        # #/components/schemas/create_a_wire_transfer_parameters/properties/originator_address_line2
        originator_address_line2: nil,
        # #/components/schemas/create_a_wire_transfer_parameters/properties/originator_address_line3
        originator_address_line3: nil,
        # #/components/schemas/create_a_wire_transfer_parameters/properties/originator_name
        originator_name: nil,
        # #/components/schemas/create_a_wire_transfer_parameters/properties/require_approval
        require_approval: nil,
        # #/components/schemas/create_a_wire_transfer_parameters/properties/routing_number
        routing_number: nil,
        # #/components/schemas/create_a_wire_transfer_parameters/properties/source_account_number_id
        source_account_number_id: nil,
        request_options: {}
      ); end
      # Retrieve a Wire Transfer
      sig do
        params(
          wire_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::WireTransfer)
      end
      def retrieve(
        # #/paths//wire_transfers/{wire_transfer_id}/get/parameters/0/schema
        wire_transfer_id,
        request_options: {}
      ); end
      # List Wire Transfers
      sig do
        params(
          account_id: String,
          created_at: T.any(Increase::Models::WireTransferListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          external_account_id: String,
          idempotency_key: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::WireTransfer])
      end
      def list(
        # #/paths//wire_transfers/get/parameters/2/schema
        account_id: nil,
        created_at: nil,
        # #/paths//wire_transfers/get/parameters/0/schema
        cursor: nil,
        # #/paths//wire_transfers/get/parameters/3/schema
        external_account_id: nil,
        # #/paths//wire_transfers/get/parameters/4/schema
        idempotency_key: nil,
        # #/paths//wire_transfers/get/parameters/1/schema
        limit: nil,
        request_options: {}
      ); end
      # Approve a Wire Transfer
      sig do
        params(
          wire_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::WireTransfer)
      end
      def approve(
        # #/paths//wire_transfers/{wire_transfer_id}/approve/post/parameters/0/schema
        wire_transfer_id,
        request_options: {}
      ); end
      # Cancel a pending Wire Transfer
      sig do
        params(
          wire_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::WireTransfer)
      end
      def cancel(
        # #/paths//wire_transfers/{wire_transfer_id}/cancel/post/parameters/0/schema
        wire_transfer_id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
