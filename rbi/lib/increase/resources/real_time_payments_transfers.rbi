# typed: strong

module Increase
  module Resources
    class RealTimePaymentsTransfers
      # Create a Real-Time Payments Transfer
      sig do
        params(
          amount: Integer,
          creditor_name: String,
          remittance_information: String,
          source_account_number_id: String,
          debtor_name: String,
          destination_account_number: String,
          destination_routing_number: String,
          external_account_id: String,
          require_approval: T::Boolean,
          ultimate_creditor_name: String,
          ultimate_debtor_name: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::RealTimePaymentsTransfer)
      end
      def create(
        # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/amount
        amount:,
        # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/creditor_name
        creditor_name:,
        # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/remittance_information
        remittance_information:,
        # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/source_account_number_id
        source_account_number_id:,
        # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/debtor_name
        debtor_name: nil,
        # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/destination_account_number
        destination_account_number: nil,
        # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/destination_routing_number
        destination_routing_number: nil,
        # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/external_account_id
        external_account_id: nil,
        # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/require_approval
        require_approval: nil,
        # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/ultimate_creditor_name
        ultimate_creditor_name: nil,
        # #/components/schemas/create_a_real_time_payments_transfer_parameters/properties/ultimate_debtor_name
        ultimate_debtor_name: nil,
        request_options: {}
      ); end
      # Retrieve a Real-Time Payments Transfer
      sig do
        params(
          real_time_payments_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::RealTimePaymentsTransfer)
      end
      def retrieve(
        # #/paths//real_time_payments_transfers/{real_time_payments_transfer_id}/get/parameters/0/schema
        real_time_payments_transfer_id,
        request_options: {}
      ); end
      # List Real-Time Payments Transfers
      sig do
        params(
          account_id: String,
          created_at: T.any(Increase::Models::RealTimePaymentsTransferListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          external_account_id: String,
          idempotency_key: String,
          limit: Integer,
          status: T.any(Increase::Models::RealTimePaymentsTransferListParams::Status, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::RealTimePaymentsTransfer])
      end
      def list(
        # #/paths//real_time_payments_transfers/get/parameters/2/schema
        account_id: nil,
        created_at: nil,
        # #/paths//real_time_payments_transfers/get/parameters/0/schema
        cursor: nil,
        # #/paths//real_time_payments_transfers/get/parameters/3/schema
        external_account_id: nil,
        # #/paths//real_time_payments_transfers/get/parameters/4/schema
        idempotency_key: nil,
        # #/paths//real_time_payments_transfers/get/parameters/1/schema
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
