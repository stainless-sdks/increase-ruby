# typed: strong

module Increase
  module Resources
    class InboundCheckDeposits
      sig do
        params(
          inbound_check_deposit_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::InboundCheckDeposit)
      end
      def retrieve(inbound_check_deposit_id, request_options: {})
      end

      sig do
        params(
          account_id: String,
          check_transfer_id: String,
          created_at: Increase::Models::InboundCheckDepositListParams::CreatedAt,
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::InboundCheckDeposit])
      end
      def list(
        account_id: nil,
        check_transfer_id: nil,
        created_at: nil,
        cursor: nil,
        limit: nil,
        request_options: {}
      )
      end

      sig do
        params(
          inbound_check_deposit_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::InboundCheckDeposit)
      end
      def decline(inbound_check_deposit_id, request_options: {})
      end

      sig do
        params(
          inbound_check_deposit_id: String,
          reason: Symbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::InboundCheckDeposit)
      end
      def return_(inbound_check_deposit_id, reason:, request_options: {})
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
