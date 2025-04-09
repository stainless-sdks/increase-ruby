# typed: strong

module Increase
  module Resources
    class CheckTransfers
      # Create a Check Transfer
      sig do
        params(
          account_id: String,
          amount: Integer,
          fulfillment_method: Increase::Models::CheckTransferCreateParams::FulfillmentMethod::OrSymbol,
          source_account_number_id: String,
          physical_check: T.any(Increase::Models::CheckTransferCreateParams::PhysicalCheck, Increase::Internal::AnyHash),
          require_approval: T::Boolean,
          third_party: T.any(Increase::Models::CheckTransferCreateParams::ThirdParty, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::CheckTransfer)
      end
      def create(
        # #/components/schemas/create_a_check_transfer_parameters/properties/account_id
        account_id:,
        # #/components/schemas/create_a_check_transfer_parameters/properties/amount
        amount:,
        # #/components/schemas/create_a_check_transfer_parameters/properties/fulfillment_method
        fulfillment_method:,
        # #/components/schemas/create_a_check_transfer_parameters/properties/source_account_number_id
        source_account_number_id:,
        # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check
        physical_check: nil,
        # #/components/schemas/create_a_check_transfer_parameters/properties/require_approval
        require_approval: nil,
        # #/components/schemas/create_a_check_transfer_parameters/properties/third_party
        third_party: nil,
        request_options: {}
      ); end
      # Retrieve a Check Transfer
      sig do
        params(
          check_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::CheckTransfer)
      end
      def retrieve(
        # #/paths//check_transfers/{check_transfer_id}/get/parameters/0/schema
        check_transfer_id,
        request_options: {}
      ); end
      # List Check Transfers
      sig do
        params(
          account_id: String,
          created_at: T.any(Increase::Models::CheckTransferListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: T.any(Increase::Models::CheckTransferListParams::Status, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::CheckTransfer])
      end
      def list(
        # #/paths//check_transfers/get/parameters/2/schema
        account_id: nil,
        created_at: nil,
        # #/paths//check_transfers/get/parameters/0/schema
        cursor: nil,
        # #/paths//check_transfers/get/parameters/3/schema
        idempotency_key: nil,
        # #/paths//check_transfers/get/parameters/1/schema
        limit: nil,
        status: nil,
        request_options: {}
      ); end
      # Approve a Check Transfer
      sig do
        params(
          check_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::CheckTransfer)
      end
      def approve(
        # #/paths//check_transfers/{check_transfer_id}/approve/post/parameters/0/schema
        check_transfer_id,
        request_options: {}
      ); end
      # Cancel a pending Check Transfer
      sig do
        params(
          check_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::CheckTransfer)
      end
      def cancel(
        # #/paths//check_transfers/{check_transfer_id}/cancel/post/parameters/0/schema
        check_transfer_id,
        request_options: {}
      ); end
      # Request a stop payment on a Check Transfer
      sig do
        params(
          check_transfer_id: String,
          reason: Increase::Models::CheckTransferStopPaymentParams::Reason::OrSymbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::CheckTransfer)
      end
      def stop_payment(
        # #/paths//check_transfers/{check_transfer_id}/stop_payment/post/parameters/0/schema
        check_transfer_id,
        # #/components/schemas/request_a_stop_payment_on_a_check_transfer_parameters/properties/reason
        reason: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
