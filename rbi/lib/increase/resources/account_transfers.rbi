# typed: strong

module Increase
  module Resources
    class AccountTransfers
      # Create an Account Transfer
      sig do
        params(
          account_id: String,
          amount: Integer,
          description: String,
          destination_account_id: String,
          require_approval: T::Boolean,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::AccountTransfer)
      end
      def create(
        # #/components/schemas/create_an_account_transfer_parameters/properties/account_id
        account_id:,
        # #/components/schemas/create_an_account_transfer_parameters/properties/amount
        amount:,
        # #/components/schemas/create_an_account_transfer_parameters/properties/description
        description:,
        # #/components/schemas/create_an_account_transfer_parameters/properties/destination_account_id
        destination_account_id:,
        # #/components/schemas/create_an_account_transfer_parameters/properties/require_approval
        require_approval: nil,
        request_options: {}
      ); end
      # Retrieve an Account Transfer
      sig do
        params(
          account_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::AccountTransfer)
      end
      def retrieve(
        # #/paths//account_transfers/{account_transfer_id}/get/parameters/0/schema
        account_transfer_id,
        request_options: {}
      ); end
      # List Account Transfers
      sig do
        params(
          account_id: String,
          created_at: T.any(Increase::Models::AccountTransferListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::AccountTransfer])
      end
      def list(
        # #/paths//account_transfers/get/parameters/2/schema
        account_id: nil,
        created_at: nil,
        # #/paths//account_transfers/get/parameters/0/schema
        cursor: nil,
        # #/paths//account_transfers/get/parameters/3/schema
        idempotency_key: nil,
        # #/paths//account_transfers/get/parameters/1/schema
        limit: nil,
        request_options: {}
      ); end
      # Approve an Account Transfer
      sig do
        params(
          account_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::AccountTransfer)
      end
      def approve(
        # #/paths//account_transfers/{account_transfer_id}/approve/post/parameters/0/schema
        account_transfer_id,
        request_options: {}
      ); end
      # Cancel an Account Transfer
      sig do
        params(
          account_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::AccountTransfer)
      end
      def cancel(
        # #/paths//account_transfers/{account_transfer_id}/cancel/post/parameters/0/schema
        account_transfer_id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
