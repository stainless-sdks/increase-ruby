# typed: strong

module Increase
  module Resources
    class InboundCheckDeposits
      # Retrieve an Inbound Check Deposit
      sig do
        params(
          inbound_check_deposit_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::InboundCheckDeposit)
      end
      def retrieve(
        # #/paths//inbound_check_deposits/{inbound_check_deposit_id}/get/parameters/0/schema
        inbound_check_deposit_id,
        request_options: {}
      ); end
      # List Inbound Check Deposits
      sig do
        params(
          account_id: String,
          check_transfer_id: String,
          created_at: T.any(Increase::Models::InboundCheckDepositListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::InboundCheckDeposit])
      end
      def list(
        # #/paths//inbound_check_deposits/get/parameters/2/schema
        account_id: nil,
        # #/paths//inbound_check_deposits/get/parameters/3/schema
        check_transfer_id: nil,
        created_at: nil,
        # #/paths//inbound_check_deposits/get/parameters/0/schema
        cursor: nil,
        # #/paths//inbound_check_deposits/get/parameters/1/schema
        limit: nil,
        request_options: {}
      ); end
      # Decline an Inbound Check Deposit
      sig do
        params(
          inbound_check_deposit_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::InboundCheckDeposit)
      end
      def decline(
        # #/paths//inbound_check_deposits/{inbound_check_deposit_id}/decline/post/parameters/0/schema
        inbound_check_deposit_id,
        request_options: {}
      ); end
      # Return an Inbound Check Deposit
      sig do
        params(
          inbound_check_deposit_id: String,
          reason: Increase::Models::InboundCheckDepositReturnParams::Reason::OrSymbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::InboundCheckDeposit)
      end
      def return_(
        # #/paths//inbound_check_deposits/{inbound_check_deposit_id}/return/post/parameters/0/schema
        inbound_check_deposit_id,
        # #/components/schemas/return_an_inbound_check_deposit_parameters/properties/reason
        reason:,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
