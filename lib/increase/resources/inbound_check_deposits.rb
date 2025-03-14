# frozen_string_literal: true

module Increase
  module Resources
    class InboundCheckDeposits
      # Retrieve an Inbound Check Deposit
      #
      # @param inbound_check_deposit_id [String] The identifier of the Inbound Check Deposit to get details for.
      #
      # @param params [Increase::Models::InboundCheckDepositRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::InboundCheckDeposit]
      #
      def retrieve(inbound_check_deposit_id, params = {})
        @client.request(
          method: :get,
          path: ["inbound_check_deposits/%0s", inbound_check_deposit_id],
          model: Increase::Models::InboundCheckDeposit,
          options: params[:request_options]
        )
      end

      # List Inbound Check Deposits
      #
      # @param params [Increase::Models::InboundCheckDepositListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id Filter Inbound Check Deposits to those belonging to the specified Account.
      #
      #   @option params [String] :check_transfer_id Filter Inbound Check Deposits to those belonging to the specified Check
      #     Transfer.
      #
      #   @option params [Increase::Models::InboundCheckDepositListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::InboundCheckDeposit>]
      #
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
      # @param inbound_check_deposit_id [String] The identifier of the Inbound Check Deposit to decline.
      #
      # @param params [Increase::Models::InboundCheckDepositDeclineParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::InboundCheckDeposit]
      #
      def decline(inbound_check_deposit_id, params = {})
        @client.request(
          method: :post,
          path: ["inbound_check_deposits/%0s/decline", inbound_check_deposit_id],
          model: Increase::Models::InboundCheckDeposit,
          options: params[:request_options]
        )
      end

      # Return an Inbound Check Deposit
      #
      # @param inbound_check_deposit_id [String] The identifier of the Inbound Check Deposit to return.
      #
      # @param params [Increase::Models::InboundCheckDepositReturnParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, Increase::Models::InboundCheckDepositReturnParams::Reason] :reason The reason to return the Inbound Check Deposit.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::InboundCheckDeposit]
      #
      def return_(inbound_check_deposit_id, params)
        parsed, options = Increase::Models::InboundCheckDepositReturnParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["inbound_check_deposits/%0s/return", inbound_check_deposit_id],
          body: parsed,
          model: Increase::Models::InboundCheckDeposit,
          options: options
        )
      end

      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
