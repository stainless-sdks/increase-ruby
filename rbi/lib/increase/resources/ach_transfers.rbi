# typed: strong

module Increase
  module Resources
    class ACHTransfers
      sig do
        params(
          account_id: String,
          amount: Integer,
          statement_descriptor: String,
          account_number: String,
          addenda: Increase::Models::ACHTransferCreateParams::Addenda,
          company_descriptive_date: String,
          company_discretionary_data: String,
          company_entry_description: String,
          company_name: String,
          destination_account_holder: Symbol,
          external_account_id: String,
          funding: Symbol,
          individual_id: String,
          individual_name: String,
          preferred_effective_date: Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate,
          require_approval: T::Boolean,
          routing_number: String,
          standard_entry_class_code: Symbol,
          transaction_timing: Symbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::ACHTransfer)
      end
      def create(
        account_id:,
        amount:,
        statement_descriptor:,
        account_number: nil,
        addenda: nil,
        company_descriptive_date: nil,
        company_discretionary_data: nil,
        company_entry_description: nil,
        company_name: nil,
        destination_account_holder: nil,
        external_account_id: nil,
        funding: nil,
        individual_id: nil,
        individual_name: nil,
        preferred_effective_date: nil,
        require_approval: nil,
        routing_number: nil,
        standard_entry_class_code: nil,
        transaction_timing: nil,
        request_options: {}
      )
      end

      sig do
        params(
          ach_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::ACHTransfer)
      end
      def retrieve(ach_transfer_id, request_options: {})
      end

      sig do
        params(
          account_id: String,
          created_at: Increase::Models::ACHTransferListParams::CreatedAt,
          cursor: String,
          external_account_id: String,
          idempotency_key: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::ACHTransfer])
      end
      def list(
        account_id: nil,
        created_at: nil,
        cursor: nil,
        external_account_id: nil,
        idempotency_key: nil,
        limit: nil,
        request_options: {}
      )
      end

      sig do
        params(
          ach_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::ACHTransfer)
      end
      def approve(ach_transfer_id, request_options: {})
      end

      sig do
        params(
          ach_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::ACHTransfer)
      end
      def cancel(ach_transfer_id, request_options: {})
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
