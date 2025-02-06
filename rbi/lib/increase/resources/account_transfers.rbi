# typed: strong

module Increase
  module Resources
    class AccountTransfers
      sig do
        params(
          account_id: String,
          amount: Integer,
          description: String,
          destination_account_id: String,
          require_approval: T::Boolean,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::AccountTransfer)
      end
      def create(
        account_id:,
        amount:,
        description:,
        destination_account_id:,
        require_approval: nil,
        request_options: {}
      )
      end

      sig do
        params(
          account_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::AccountTransfer)
      end
      def retrieve(account_transfer_id, request_options: {})
      end

      sig do
        params(
          account_id: String,
          created_at: Increase::Models::AccountTransferListParams::CreatedAt,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Page[Increase::Models::AccountTransfer])
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
          account_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::AccountTransfer)
      end
      def approve(account_transfer_id, request_options: {})
      end

      sig do
        params(
          account_transfer_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::AccountTransfer)
      end
      def cancel(account_transfer_id, request_options: {})
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
