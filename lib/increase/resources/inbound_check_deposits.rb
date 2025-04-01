# frozen_string_literal: true

module Increase
  module Resources
    class InboundCheckDeposits
      # Retrieve an Inbound Check Deposit
      #
      # @overload retrieve(inbound_check_deposit_id, request_options: {})
      #
      # @param inbound_check_deposit_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::InboundCheckDeposit]
      #
      # @see Increase::Models::InboundCheckDepositRetrieveParams
      def retrieve(inbound_check_deposit_id, params = {})
        @client.request(
          method: :get,
          path: ["inbound_check_deposits/%1$s", inbound_check_deposit_id],
          model: Increase::Models::InboundCheckDeposit,
          options: params[:request_options]
        )
      end

      # List Inbound Check Deposits
      #
      # @overload list(account_id: nil, check_transfer_id: nil, created_at: nil, cursor: nil, limit: nil, request_options: {})
      #
      # @param account_id [String]
      # @param check_transfer_id [String]
      # @param created_at [Increase::Models::InboundCheckDepositListParams::CreatedAt]
      # @param cursor [String]
      # @param limit [Integer]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Page<Increase::Models::InboundCheckDeposit>]
      #
      # @see Increase::Models::InboundCheckDepositListParams
      def list(params = {})
        parsed, options = Increase::Models::InboundCheckDepositListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "inbound_check_deposits",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::InboundCheckDeposit,
          options: options
        )
      end

      # Decline an Inbound Check Deposit
      #
      # @overload decline(inbound_check_deposit_id, request_options: {})
      #
      # @param inbound_check_deposit_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::InboundCheckDeposit]
      #
      # @see Increase::Models::InboundCheckDepositDeclineParams
      def decline(inbound_check_deposit_id, params = {})
        @client.request(
          method: :post,
          path: ["inbound_check_deposits/%1$s/decline", inbound_check_deposit_id],
          model: Increase::Models::InboundCheckDeposit,
          options: params[:request_options]
        )
      end

      # Return an Inbound Check Deposit
      #
      # @overload return_(inbound_check_deposit_id, reason:, request_options: {})
      #
      # @param inbound_check_deposit_id [String]
      # @param reason [Symbol, Increase::Models::InboundCheckDepositReturnParams::Reason]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::InboundCheckDeposit]
      #
      # @see Increase::Models::InboundCheckDepositReturnParams
      def return_(inbound_check_deposit_id, params)
        parsed, options = Increase::Models::InboundCheckDepositReturnParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["inbound_check_deposits/%1$s/return", inbound_check_deposit_id],
          body: parsed,
          model: Increase::Models::InboundCheckDeposit,
          options: options
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
