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
      # @option params [String, nil] :account_number The account number for the destination account.
      # @option params [Addenda, nil] :addenda Additional information that will be sent to the recipient. This is included in
      #   the transfer data sent to the receiving bank.
      # @option params [String, nil] :company_descriptive_date The description of the date of the transfer, usually in the format `YYMMDD`.
      #   This is included in the transfer data sent to the receiving bank.
      # @option params [String, nil] :company_discretionary_data The data you choose to associate with the transfer. This is included in the
      #   transfer data sent to the receiving bank.
      # @option params [String, nil] :company_entry_description A description of the transfer. This is included in the transfer data sent to the
      #   receiving bank.
      # @option params [String, nil] :company_name The name by which the recipient knows you. This is included in the transfer data
      #   sent to the receiving bank.
      # @option params [Symbol, DestinationAccountHolder, nil] :destination_account_holder The type of entity that owns the account to which the ACH Transfer is being
      #   sent.
      # @option params [String, nil] :external_account_id The ID of an External Account to initiate a transfer to. If this parameter is
      #   provided, `account_number`, `routing_number`, and `funding` must be absent.
      # @option params [Symbol, Funding, nil] :funding The type of the account to which the transfer will be sent.
      # @option params [String, nil] :individual_id Your identifier for the transfer recipient.
      # @option params [String, nil] :individual_name The name of the transfer recipient. This value is informational and not verified
      #   by the recipient's bank.
      # @option params [PreferredEffectiveDate, nil] :preferred_effective_date Configuration for how the effective date of the transfer will be set. This
      #   determines same-day vs future-dated settlement timing. If not set, defaults to a
      #   `settlement_schedule` of `same_day`. If set, exactly one of the child attributes
      #   must be set.
      # @option params [Boolean, nil] :require_approval Whether the transfer requires explicit approval via the dashboard or API.
      # @option params [String, nil] :routing_number The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
      #   destination account.
      # @option params [Symbol, StandardEntryClassCode, nil] :standard_entry_class_code The Standard Entry Class (SEC) code to use for the transfer.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ACHTransfer]
      def create(params = {}, opts = {})
        req = {
          method: :post,
          path: "/ach_transfers",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::ACHTransfer
        }
        @client.request(req, opts)
      end

      # Retrieve an ACH Transfer
      #
      # @param ach_transfer_id [String] The identifier of the ACH Transfer.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ACHTransfer]
      def retrieve(ach_transfer_id, opts = {})
        req = {
          method: :get,
          path: "/ach_transfers/#{ach_transfer_id}",
          model: Increase::Models::ACHTransfer
        }
        @client.request(req, opts)
      end

      # List ACH Transfers
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :account_id Filter ACH Transfers to those that originated from the specified Account.
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [String, nil] :external_account_id Filter ACH Transfers to those made to the specified External Account.
      # @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::ACHTransfer>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/ach_transfers",
          query: params,
          page: Increase::Page,
          model: Increase::Models::ACHTransfer
        }
        @client.request(req, opts)
      end

      # Approves an ACH Transfer in a pending_approval state.
      #
      # @param ach_transfer_id [String] The identifier of the ACH Transfer to approve.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ACHTransfer]
      def approve(ach_transfer_id, opts = {})
        req = {
          method: :post,
          path: "/ach_transfers/#{ach_transfer_id}/approve",
          model: Increase::Models::ACHTransfer
        }
        @client.request(req, opts)
      end

      # Cancels an ACH Transfer in a pending_approval state.
      #
      # @param ach_transfer_id [String] The identifier of the pending ACH Transfer to cancel.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::ACHTransfer]
      def cancel(ach_transfer_id, opts = {})
        req = {
          method: :post,
          path: "/ach_transfers/#{ach_transfer_id}/cancel",
          model: Increase::Models::ACHTransfer
        }
        @client.request(req, opts)
      end
    end
  end
end
