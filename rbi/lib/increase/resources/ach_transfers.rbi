# typed: strong

module Increase
  module Resources
    class ACHTransfers
      # Create an ACH Transfer
      sig do
        params(
          account_id: String,
          amount: Integer,
          statement_descriptor: String,
          account_number: String,
          addenda: T.any(Increase::Models::ACHTransferCreateParams::Addenda, Increase::Internal::AnyHash),
          company_descriptive_date: String,
          company_discretionary_data: String,
          company_entry_description: String,
          company_name: String,
          destination_account_holder: Increase::Models::ACHTransferCreateParams::DestinationAccountHolder::OrSymbol,
          external_account_id: String,
          funding: Increase::Models::ACHTransferCreateParams::Funding::OrSymbol,
          individual_id: String,
          individual_name: String,
          preferred_effective_date: T.any(Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate, Increase::Internal::AnyHash),
          require_approval: T::Boolean,
          routing_number: String,
          standard_entry_class_code: Increase::Models::ACHTransferCreateParams::StandardEntryClassCode::OrSymbol,
          transaction_timing: Increase::Models::ACHTransferCreateParams::TransactionTiming::OrSymbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::ACHTransfer)
      end
      def create(
        # #/components/schemas/create_an_ach_transfer_parameters/properties/account_id
        account_id:,
        # #/components/schemas/create_an_ach_transfer_parameters/properties/amount
        amount:,
        # #/components/schemas/create_an_ach_transfer_parameters/properties/statement_descriptor
        statement_descriptor:,
        # #/components/schemas/create_an_ach_transfer_parameters/properties/account_number
        account_number: nil,
        # #/components/schemas/create_an_ach_transfer_parameters/properties/addenda
        addenda: nil,
        # #/components/schemas/create_an_ach_transfer_parameters/properties/company_descriptive_date
        company_descriptive_date: nil,
        # #/components/schemas/create_an_ach_transfer_parameters/properties/company_discretionary_data
        company_discretionary_data: nil,
        # #/components/schemas/create_an_ach_transfer_parameters/properties/company_entry_description
        company_entry_description: nil,
        # #/components/schemas/create_an_ach_transfer_parameters/properties/company_name
        company_name: nil,
        # #/components/schemas/create_an_ach_transfer_parameters/properties/destination_account_holder
        destination_account_holder: nil,
        # #/components/schemas/create_an_ach_transfer_parameters/properties/external_account_id
        external_account_id: nil,
        # #/components/schemas/create_an_ach_transfer_parameters/properties/funding
        funding: nil,
        # #/components/schemas/create_an_ach_transfer_parameters/properties/individual_id
        individual_id: nil,
        # #/components/schemas/create_an_ach_transfer_parameters/properties/individual_name
        individual_name: nil,
        # #/components/schemas/create_an_ach_transfer_parameters/properties/preferred_effective_date
        preferred_effective_date: nil,
        # #/components/schemas/create_an_ach_transfer_parameters/properties/require_approval
        require_approval: nil,
        # #/components/schemas/create_an_ach_transfer_parameters/properties/routing_number
        routing_number: nil,
        # #/components/schemas/create_an_ach_transfer_parameters/properties/standard_entry_class_code
        standard_entry_class_code: nil,
        # #/components/schemas/create_an_ach_transfer_parameters/properties/transaction_timing
        transaction_timing: nil,
        request_options: {}
      ); end
      # Retrieve an ACH Transfer
      sig do
        params(
          ach_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::ACHTransfer)
      end
      def retrieve(
        # #/paths//ach_transfers/{ach_transfer_id}/get/parameters/0/schema
        ach_transfer_id,
        request_options: {}
      ); end
      # List ACH Transfers
      sig do
        params(
          account_id: String,
          created_at: T.any(Increase::Models::ACHTransferListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          external_account_id: String,
          idempotency_key: String,
          limit: Integer,
          status: T.any(Increase::Models::ACHTransferListParams::Status, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::ACHTransfer])
      end
      def list(
        # #/paths//ach_transfers/get/parameters/2/schema
        account_id: nil,
        created_at: nil,
        # #/paths//ach_transfers/get/parameters/0/schema
        cursor: nil,
        # #/paths//ach_transfers/get/parameters/3/schema
        external_account_id: nil,
        # #/paths//ach_transfers/get/parameters/4/schema
        idempotency_key: nil,
        # #/paths//ach_transfers/get/parameters/1/schema
        limit: nil,
        status: nil,
        request_options: {}
      ); end
      # Approves an ACH Transfer in a pending_approval state.
      sig do
        params(
          ach_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::ACHTransfer)
      end
      def approve(
        # #/paths//ach_transfers/{ach_transfer_id}/approve/post/parameters/0/schema
        ach_transfer_id,
        request_options: {}
      ); end
      # Cancels an ACH Transfer in a pending_approval state.
      sig do
        params(
          ach_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::ACHTransfer)
      end
      def cancel(
        # #/paths//ach_transfers/{ach_transfer_id}/cancel/post/parameters/0/schema
        ach_transfer_id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
