# typed: strong

module Increase
  module Resources
    class RealTimePaymentsTransfers
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
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::RealTimePaymentsTransfer)
      end
      def create(
        amount:,
        creditor_name:,
        remittance_information:,
        source_account_number_id:,
        debtor_name: nil,
        destination_account_number: nil,
        destination_routing_number: nil,
        external_account_id: nil,
        require_approval: nil,
        ultimate_creditor_name: nil,
        ultimate_debtor_name: nil,
        request_options: {}
      )
      end

      sig do
        params(
            real_time_payments_transfer_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::RealTimePaymentsTransfer)
      end
      def retrieve(real_time_payments_transfer_id, request_options: {})
      end

      sig do
        params(
            account_id: String,
            created_at: Increase::Models::RealTimePaymentsTransferListParams::CreatedAt,
            cursor: String,
            external_account_id: String,
            idempotency_key: String,
            limit: Integer,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Page[Increase::Models::RealTimePaymentsTransfer])
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

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
