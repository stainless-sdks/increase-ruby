# frozen_string_literal: true

module Increase
  module Resources
    class ACHTransfers
      def initialize(client:)
        @client = client
      end

      # Create an ACH Transfer
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id The Increase identifier for the account that will send the transfer.
      # @option params [Integer] :amount The transfer amount in cents. A positive amount originates a credit transfer
      #   pushing funds to the receiving account. A negative amount originates a debit
      #   transfer pulling funds from the receiving account.
      # @option params [String] :statement_descriptor A description you choose to give the transfer. This will be saved with the
      #   transfer details, displayed in the dashboard, and returned by the API. If
      #   `individual_name` and `company_name` are not explicitly set by this API, the
      #   `statement_descriptor` will be sent in those fields to the receiving bank to
      #   help the customer recognize the transfer. You are highly encouraged to pass
      #   `individual_name` and `company_name` instead of relying on this fallback.
      # @option params [String] :account_number The account number for the destination account.
      # @option params [Hash] :addenda Additional information that will be sent to the recipient. This is included in
      #   the transfer data sent to the receiving bank.
      # @option params [String] :company_descriptive_date The description of the date of the transfer, usually in the format `YYMMDD`.
      #   This is included in the transfer data sent to the receiving bank.
      # @option params [String] :company_discretionary_data The data you choose to associate with the transfer. This is included in the
      #   transfer data sent to the receiving bank.
      # @option params [String] :company_entry_description A description of the transfer. This is included in the transfer data sent to the
      #   receiving bank.
      # @option params [String] :company_name The name by which the recipient knows you. This is included in the transfer data
      #   sent to the receiving bank.
      # @option params [Symbol] :destination_account_holder The type of entity that owns the account to which the ACH Transfer is being
      #   sent.
      # @option params [String] :effective_date The transfer effective date in
      #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
      # @option params [String] :external_account_id The ID of an External Account to initiate a transfer to. If this parameter is
      #   provided, `account_number`, `routing_number`, and `funding` must be absent.
      # @option params [Symbol] :funding The type of the account to which the transfer will be sent.
      # @option params [String] :individual_id Your identifier for the transfer recipient.
      # @option params [String] :individual_name The name of the transfer recipient. This value is informational and not verified
      #   by the recipient's bank.
      # @option params [Boolean] :require_approval Whether the transfer requires explicit approval via the dashboard or API.
      # @option params [String] :routing_number The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
      #   destination account.
      # @option params [Symbol] :standard_entry_class_code The Standard Entry Class (SEC) code to use for the transfer.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ACHTransfer]
      def create(params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/ach_transfers"
        request[:body] = params
        request[:model] = Increase::Models::ACHTransfer
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve an ACH Transfer
      #
      # @param ach_transfer_id [String] The identifier of the ACH Transfer.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ACHTransfer]
      def retrieve(ach_transfer_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/ach_transfers/#{ach_transfer_id}"
        request[:model] = Increase::Models::ACHTransfer
        request.merge!(opts)
        @client.request(request)
      end

      # Approves an ACH Transfer in a pending_approval state.
      #
      # @param ach_transfer_id [String] The identifier of the ACH Transfer to approve.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ACHTransfer]
      def approve(ach_transfer_id, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/ach_transfers/#{ach_transfer_id}/approve"
        request[:model] = Increase::Models::ACHTransfer
        request.merge!(opts)
        @client.request(request)
      end

      # Cancels an ACH Transfer in a pending_approval state.
      #
      # @param ach_transfer_id [String] The identifier of the pending ACH Transfer to cancel.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ACHTransfer]
      def cancel(ach_transfer_id, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/ach_transfers/#{ach_transfer_id}/cancel"
        request[:model] = Increase::Models::ACHTransfer
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
