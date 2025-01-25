# frozen_string_literal: true

module Increase
  module Resources
    class ACHTransfers
      # Create an ACH Transfer
      #
      # @param params [Increase::Models::ACHTransferCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id The Increase identifier for the account that will send the transfer.
      #
      #   @option params [Integer] :amount The transfer amount in USD cents. A positive amount originates a credit transfer
      #     pushing funds to the receiving account. A negative amount originates a debit
      #     transfer pulling funds from the receiving account.
      #
      #   @option params [String] :statement_descriptor A description you choose to give the transfer. This will be saved with the
      #     transfer details, displayed in the dashboard, and returned by the API. If
      #     `individual_name` and `company_name` are not explicitly set by this API, the
      #     `statement_descriptor` will be sent in those fields to the receiving bank to
      #     help the customer recognize the transfer. You are highly encouraged to pass
      #     `individual_name` and `company_name` instead of relying on this fallback.
      #
      #   @option params [String] :account_number The account number for the destination account.
      #
      #   @option params [Increase::Models::ACHTransferCreateParams::Addenda] :addenda Additional information that will be sent to the recipient. This is included in
      #     the transfer data sent to the receiving bank.
      #
      #   @option params [String] :company_descriptive_date The description of the date of the transfer, usually in the format `YYMMDD`.
      #     This is included in the transfer data sent to the receiving bank.
      #
      #   @option params [String] :company_discretionary_data The data you choose to associate with the transfer. This is included in the
      #     transfer data sent to the receiving bank.
      #
      #   @option params [String] :company_entry_description A description of the transfer. This is included in the transfer data sent to the
      #     receiving bank.
      #
      #   @option params [String] :company_name The name by which the recipient knows you. This is included in the transfer data
      #     sent to the receiving bank.
      #
      #   @option params [Symbol, Increase::Models::ACHTransferCreateParams::DestinationAccountHolder] :destination_account_holder The type of entity that owns the account to which the ACH Transfer is being
      #     sent.
      #
      #   @option params [String] :external_account_id The ID of an External Account to initiate a transfer to. If this parameter is
      #     provided, `account_number`, `routing_number`, and `funding` must be absent.
      #
      #   @option params [Symbol, Increase::Models::ACHTransferCreateParams::Funding] :funding The type of the account to which the transfer will be sent.
      #
      #   @option params [String] :individual_id Your identifier for the transfer recipient.
      #
      #   @option params [String] :individual_name The name of the transfer recipient. This value is informational and not verified
      #     by the recipient's bank.
      #
      #   @option params [Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate] :preferred_effective_date Configuration for how the effective date of the transfer will be set. This
      #     determines same-day vs future-dated settlement timing. If not set, defaults to a
      #     `settlement_schedule` of `same_day`. If set, exactly one of the child attributes
      #     must be set.
      #
      #   @option params [Boolean] :require_approval Whether the transfer requires explicit approval via the dashboard or API.
      #
      #   @option params [String] :routing_number The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
      #     destination account.
      #
      #   @option params [Symbol, Increase::Models::ACHTransferCreateParams::StandardEntryClassCode] :standard_entry_class_code The Standard Entry Class (SEC) code to use for the transfer.
      #
      #   @option params [Symbol, Increase::Models::ACHTransferCreateParams::TransactionTiming] :transaction_timing The timing of the transaction.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Increase::Models::ACHTransfer]
      #
      def create(params)
        parsed, options = Increase::Models::ACHTransferCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "ach_transfers",
          body: parsed,
          model: Increase::Models::ACHTransfer,
          options: options
        )
      end

      # Retrieve an ACH Transfer
      #
      # @param ach_transfer_id [String] The identifier of the ACH Transfer.
      #
      # @param params [Increase::Models::ACHTransferRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Increase::Models::ACHTransfer]
      #
      def retrieve(ach_transfer_id, params = {})
        @client.request(
          method: :get,
          path: ["ach_transfers/%0s", ach_transfer_id],
          model: Increase::Models::ACHTransfer,
          options: params[:request_options]
        )
      end

      # List ACH Transfers
      #
      # @param params [Increase::Models::ACHTransferListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id Filter ACH Transfers to those that originated from the specified Account.
      #
      #   @option params [Increase::Models::ACHTransferListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [String] :external_account_id Filter ACH Transfers to those made to the specified External Account.
      #
      #   @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Increase::Page<Increase::Models::ACHTransfer>]
      #
      def list(params = {})
        parsed, options = Increase::Models::ACHTransferListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "ach_transfers",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::ACHTransfer,
          options: options
        )
      end

      # Approves an ACH Transfer in a pending_approval state.
      #
      # @param ach_transfer_id [String] The identifier of the ACH Transfer to approve.
      #
      # @param params [Increase::Models::ACHTransferApproveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Increase::Models::ACHTransfer]
      #
      def approve(ach_transfer_id, params = {})
        @client.request(
          method: :post,
          path: ["ach_transfers/%0s/approve", ach_transfer_id],
          model: Increase::Models::ACHTransfer,
          options: params[:request_options]
        )
      end

      # Cancels an ACH Transfer in a pending_approval state.
      #
      # @param ach_transfer_id [String] The identifier of the pending ACH Transfer to cancel.
      #
      # @param params [Increase::Models::ACHTransferCancelParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Increase::Models::ACHTransfer]
      #
      def cancel(ach_transfer_id, params = {})
        @client.request(
          method: :post,
          path: ["ach_transfers/%0s/cancel", ach_transfer_id],
          model: Increase::Models::ACHTransfer,
          options: params[:request_options]
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
