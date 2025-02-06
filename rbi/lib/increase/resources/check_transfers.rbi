# typed: strong

module Increase
  module Resources
    class CheckTransfers
      sig do
        params(
          account_id: String,
          amount: Integer,
          fulfillment_method: Symbol,
          source_account_number_id: String,
          physical_check: Increase::Models::CheckTransferCreateParams::PhysicalCheck,
          require_approval: T::Boolean,
          third_party: Increase::Models::CheckTransferCreateParams::ThirdParty,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::CheckTransfer)
      end
      def create(
        account_id:,
        amount:,
        fulfillment_method:,
        source_account_number_id:,
        physical_check: nil,
        require_approval: nil,
        third_party: nil,
        request_options: {}
      )
      end

      sig do
        params(
          check_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::CheckTransfer)
      end
      def retrieve(check_transfer_id, request_options: {})
      end

      sig do
        params(
          account_id: String,
          created_at: Increase::Models::CheckTransferListParams::CreatedAt,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Page[Increase::Models::CheckTransfer])
      end
      def list(
        account_id: nil,
        created_at: nil,
        cursor: nil,
        idempotency_key: nil,
        limit: nil,
        request_options: {}
      )
      end

      sig do
        params(
          check_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::CheckTransfer)
      end
      def approve(check_transfer_id, request_options: {})
      end

      sig do
        params(
          check_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::CheckTransfer)
      end
      def cancel(check_transfer_id, request_options: {})
      end

      sig do
        params(
          check_transfer_id: String,
          reason: Symbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::CheckTransfer)
      end
      def stop_payment(check_transfer_id, reason: nil, request_options: {})
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
