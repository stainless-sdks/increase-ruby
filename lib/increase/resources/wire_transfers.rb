# frozen_string_literal: true

module Increase
  module Resources
    class WireTransfers
      # Some parameter documentations has been truncated, see
      # {Increase::Models::WireTransferCreateParams} for more details.
      #
      # Create a Wire Transfer
      #
      # @overload create(account_id:, amount:, beneficiary_name:, message_to_recipient:, account_number: nil, beneficiary_address_line1: nil, beneficiary_address_line2: nil, beneficiary_address_line3: nil, external_account_id: nil, originator_address_line1: nil, originator_address_line2: nil, originator_address_line3: nil, originator_name: nil, require_approval: nil, routing_number: nil, source_account_number_id: nil, request_options: {})
      #
      # @param account_id [String] The identifier for the account that will send the transfer.
      #
      # @param amount [Integer] The transfer amount in USD cents.
      #
      # @param beneficiary_name [String] The beneficiary's name.
      #
      # @param message_to_recipient [String] The message that will show on the recipient's bank statement.
      #
      # @param account_number [String] The account number for the destination account.
      #
      # @param beneficiary_address_line1 [String] The beneficiary's address line 1.
      #
      # @param beneficiary_address_line2 [String] The beneficiary's address line 2.
      #
      # @param beneficiary_address_line3 [String] The beneficiary's address line 3.
      #
      # @param external_account_id [String] The ID of an External Account to initiate a transfer to. If this parameter is pr
      # ...
      #
      # @param originator_address_line1 [String] The originator's address line 1. This is only necessary if you're transferring f
      # ...
      #
      # @param originator_address_line2 [String] The originator's address line 2. This is only necessary if you're transferring f
      # ...
      #
      # @param originator_address_line3 [String] The originator's address line 3. This is only necessary if you're transferring f
      # ...
      #
      # @param originator_name [String] The originator's name. This is only necessary if you're transferring from a comm
      # ...
      #
      # @param require_approval [Boolean] Whether the transfer requires explicit approval via the dashboard or API.
      #
      # @param routing_number [String] The American Bankers' Association (ABA) Routing Transit Number (RTN) for the des
      # ...
      #
      # @param source_account_number_id [String] The ID of an Account Number that will be passed to the wire's recipient
      #
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::WireTransfer]
      #
      # @see Increase::Models::WireTransferCreateParams
      def create(params)
        parsed, options = Increase::WireTransferCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "wire_transfers",
          body: parsed,
          model: Increase::WireTransfer,
          options: options
        )
      end

      # Retrieve a Wire Transfer
      #
      # @overload retrieve(wire_transfer_id, request_options: {})
      #
      # @param wire_transfer_id [String] The identifier of the Wire Transfer.
      #
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::WireTransfer]
      #
      # @see Increase::Models::WireTransferRetrieveParams
      def retrieve(wire_transfer_id, params = {})
        @client.request(
          method: :get,
          path: ["wire_transfers/%1$s", wire_transfer_id],
          model: Increase::WireTransfer,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Increase::Models::WireTransferListParams} for more details.
      #
      # List Wire Transfers
      #
      # @overload list(account_id: nil, created_at: nil, cursor: nil, external_account_id: nil, idempotency_key: nil, limit: nil, request_options: {})
      #
      # @param account_id [String] Filter Wire Transfers to those belonging to the specified Account.
      #
      # @param created_at [Increase::WireTransferListParams::CreatedAt]
      #
      # @param cursor [String] Return the page of entries after this one.
      #
      # @param external_account_id [String] Filter Wire Transfers to those made to the specified External Account.
      #
      # @param idempotency_key [String] Filter records to the one with the specified `idempotency_key` you chose for tha
      # ...
      #
      # @param limit [Integer] Limit the size of the list that is returned. The default (and maximum) is 100 ob
      # ...
      #
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::WireTransfer>]
      #
      # @see Increase::Models::WireTransferListParams
      def list(params = {})
        parsed, options = Increase::WireTransferListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "wire_transfers",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::WireTransfer,
          options: options
        )
      end

      # Approve a Wire Transfer
      #
      # @overload approve(wire_transfer_id, request_options: {})
      #
      # @param wire_transfer_id [String] The identifier of the Wire Transfer to approve.
      #
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::WireTransfer]
      #
      # @see Increase::Models::WireTransferApproveParams
      def approve(wire_transfer_id, params = {})
        @client.request(
          method: :post,
          path: ["wire_transfers/%1$s/approve", wire_transfer_id],
          model: Increase::WireTransfer,
          options: params[:request_options]
        )
      end

      # Cancel a pending Wire Transfer
      #
      # @overload cancel(wire_transfer_id, request_options: {})
      #
      # @param wire_transfer_id [String] The identifier of the pending Wire Transfer to cancel.
      #
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::WireTransfer]
      #
      # @see Increase::Models::WireTransferCancelParams
      def cancel(wire_transfer_id, params = {})
        @client.request(
          method: :post,
          path: ["wire_transfers/%1$s/cancel", wire_transfer_id],
          model: Increase::WireTransfer,
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
