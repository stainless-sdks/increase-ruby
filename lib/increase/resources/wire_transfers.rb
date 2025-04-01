# frozen_string_literal: true

module Increase
  module Resources
    class WireTransfers
      # Create a Wire Transfer
      #
      # @param params [Increase::Models::WireTransferCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id The identifier for the account that will send the transfer.
      #
      #   @option params [Integer] :amount The transfer amount in USD cents.
      #
      #   @option params [String] :beneficiary_name The beneficiary's name.
      #
      #   @option params [String] :message_to_recipient The message that will show on the recipient's bank statement.
      #
      #   @option params [String] :account_number The account number for the destination account.
      #
      #   @option params [String] :beneficiary_address_line1 The beneficiary's address line 1.
      #
      #   @option params [String] :beneficiary_address_line2 The beneficiary's address line 2.
      #
      #   @option params [String] :beneficiary_address_line3 The beneficiary's address line 3.
      #
      #   @option params [String] :external_account_id The ID of an External Account to initiate a transfer to. If this parameter is
      #     provided, `account_number` and `routing_number` must be absent.
      #
      #   @option params [String] :originator_address_line1 The originator's address line 1. This is only necessary if you're transferring
      #     from a commingled account. Otherwise, we'll use the associated entity's details.
      #
      #   @option params [String] :originator_address_line2 The originator's address line 2. This is only necessary if you're transferring
      #     from a commingled account. Otherwise, we'll use the associated entity's details.
      #
      #   @option params [String] :originator_address_line3 The originator's address line 3. This is only necessary if you're transferring
      #     from a commingled account. Otherwise, we'll use the associated entity's details.
      #
      #   @option params [String] :originator_name The originator's name. This is only necessary if you're transferring from a
      #     commingled account. Otherwise, we'll use the associated entity's details.
      #
      #   @option params [Boolean] :require_approval Whether the transfer requires explicit approval via the dashboard or API.
      #
      #   @option params [String] :routing_number The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
      #     destination account.
      #
      #   @option params [String] :source_account_number_id The ID of an Account Number that will be passed to the wire's recipient
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::WireTransfer]
      #
      # @see Increase::Models::WireTransferCreateParams
      def create(params)
        parsed, options = Increase::Models::WireTransferCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "wire_transfers",
          body: parsed,
          model: Increase::Models::WireTransfer,
          options: options
        )
      end

      # Retrieve a Wire Transfer
      #
      # @param wire_transfer_id [String] The identifier of the Wire Transfer.
      #
      # @param params [Increase::Models::WireTransferRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::WireTransfer]
      #
      # @see Increase::Models::WireTransferRetrieveParams
      def retrieve(wire_transfer_id, params = {})
        @client.request(
          method: :get,
          path: ["wire_transfers/%1$s", wire_transfer_id],
          model: Increase::Models::WireTransfer,
          options: params[:request_options]
        )
      end

      # List Wire Transfers
      #
      # @param params [Increase::Models::WireTransferListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id Filter Wire Transfers to those belonging to the specified Account.
      #
      #   @option params [Increase::Models::WireTransferListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [String] :external_account_id Filter Wire Transfers to those made to the specified External Account.
      #
      #   @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::WireTransfer>]
      #
      # @see Increase::Models::WireTransferListParams
      def list(params = {})
        parsed, options = Increase::Models::WireTransferListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "wire_transfers",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::WireTransfer,
          options: options
        )
      end

      # Approve a Wire Transfer
      #
      # @param wire_transfer_id [String] The identifier of the Wire Transfer to approve.
      #
      # @param params [Increase::Models::WireTransferApproveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::WireTransfer]
      #
      # @see Increase::Models::WireTransferApproveParams
      def approve(wire_transfer_id, params = {})
        @client.request(
          method: :post,
          path: ["wire_transfers/%1$s/approve", wire_transfer_id],
          model: Increase::Models::WireTransfer,
          options: params[:request_options]
        )
      end

      # Cancel a pending Wire Transfer
      #
      # @param wire_transfer_id [String] The identifier of the pending Wire Transfer to cancel.
      #
      # @param params [Increase::Models::WireTransferCancelParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::WireTransfer]
      #
      # @see Increase::Models::WireTransferCancelParams
      def cancel(wire_transfer_id, params = {})
        @client.request(
          method: :post,
          path: ["wire_transfers/%1$s/cancel", wire_transfer_id],
          model: Increase::Models::WireTransfer,
          options: params[:request_options]
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
