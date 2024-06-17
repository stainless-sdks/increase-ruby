# frozen_string_literal: true

module Increase
  module Resources
    class WireTransfers
      def initialize(client:)
        @client = client
      end

      # Create a Wire Transfer
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id The identifier for the account that will send the transfer.
      # @option params [Integer] :amount The transfer amount in cents.
      # @option params [String] :beneficiary_name The beneficiary's name.
      # @option params [String] :message_to_recipient The message that will show on the recipient's bank statement.
      # @option params [String] :account_number The account number for the destination account.
      # @option params [String] :beneficiary_address_line1 The beneficiary's address line 1.
      # @option params [String] :beneficiary_address_line2 The beneficiary's address line 2.
      # @option params [String] :beneficiary_address_line3 The beneficiary's address line 3.
      # @option params [String] :external_account_id The ID of an External Account to initiate a transfer to. If this parameter is
      #   provided, `account_number` and `routing_number` must be absent.
      # @option params [String] :originator_address_line1 The originator's address line 1. This is only necessary if you're transferring
      #   from a commingled account. Otherwise, we'll use the associated entity's details.
      # @option params [String] :originator_address_line2 The originator's address line 2. This is only necessary if you're transferring
      #   from a commingled account. Otherwise, we'll use the associated entity's details.
      # @option params [String] :originator_address_line3 The originator's address line 3. This is only necessary if you're transferring
      #   from a commingled account. Otherwise, we'll use the associated entity's details.
      # @option params [String] :originator_name The originator's name. This is only necessary if you're transferring from a
      #   commingled account. Otherwise, we'll use the associated entity's details.
      # @option params [Boolean] :require_approval Whether the transfer requires explicit approval via the dashboard or API.
      # @option params [String] :routing_number The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
      #   destination account.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::WireTransfer]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/wire_transfers"
        req[:body] = params
        req[:model] = Increase::Models::WireTransfer
        @client.request(req, opts)
      end

      # Retrieve a Wire Transfer
      # 
      # @param wire_transfer_id [String] The identifier of the Wire Transfer.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::WireTransfer]
      def retrieve(wire_transfer_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/wire_transfers/#{wire_transfer_id}"
        req[:model] = Increase::Models::WireTransfer
        @client.request(req, opts)
      end

      # List Wire Transfers
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id Filter Wire Transfers to those belonging to the specified Account.
      # @option params [CreatedAt] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [String] :external_account_id Filter Wire Transfers to those made to the specified External Account.
      # @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Page<Increase::Models::WireTransfer>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/wire_transfers"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::WireTransfer
        @client.request(req, opts)
      end

      # Approve a Wire Transfer
      # 
      # @param wire_transfer_id [String] The identifier of the Wire Transfer to approve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::WireTransfer]
      def approve(wire_transfer_id, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/wire_transfers/#{wire_transfer_id}/approve"
        req[:model] = Increase::Models::WireTransfer
        @client.request(req, opts)
      end

      # Cancel a pending Wire Transfer
      # 
      # @param wire_transfer_id [String] The identifier of the pending Wire Transfer to cancel.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::WireTransfer]
      def cancel(wire_transfer_id, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/wire_transfers/#{wire_transfer_id}/cancel"
        req[:model] = Increase::Models::WireTransfer
        @client.request(req, opts)
      end

      # Simulates the reversal of a [Wire Transfer](#wire-transfers) by the Federal
      #   Reserve due to error conditions. This will also create a
      #   [Transaction](#transaction) to account for the returned funds. This Wire
      #   Transfer must first have a `status` of `complete`.
      # 
      # @param wire_transfer_id [String] The identifier of the Wire Transfer you wish to reverse.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::WireTransfer]
      def reverse(wire_transfer_id, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/simulations/wire_transfers/#{wire_transfer_id}/reverse"
        req[:model] = Increase::Models::WireTransfer
        @client.request(req, opts)
      end

      # Simulates the submission of a [Wire Transfer](#wire-transfers) to the Federal
      #   Reserve. This transfer must first have a `status` of `pending_approval` or
      #   `pending_creating`.
      # 
      # @param wire_transfer_id [String] The identifier of the Wire Transfer you wish to submit.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::WireTransfer]
      def submit(wire_transfer_id, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/simulations/wire_transfers/#{wire_transfer_id}/submit"
        req[:model] = Increase::Models::WireTransfer
        @client.request(req, opts)
      end
    end
  end
end
