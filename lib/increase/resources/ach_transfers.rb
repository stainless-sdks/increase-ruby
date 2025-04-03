# frozen_string_literal: true

module Increase
  module Resources
    class ACHTransfers
      # Create an ACH Transfer
      #
      # @overload create(account_id:, amount:, statement_descriptor:, account_number: nil, addenda: nil, company_descriptive_date: nil, company_discretionary_data: nil, company_entry_description: nil, company_name: nil, destination_account_holder: nil, external_account_id: nil, funding: nil, individual_id: nil, individual_name: nil, preferred_effective_date: nil, require_approval: nil, routing_number: nil, standard_entry_class_code: nil, transaction_timing: nil, request_options: {})
      #
      # @param account_id [String]
      # @param amount [Integer]
      # @param statement_descriptor [String]
      # @param account_number [String]
      # @param addenda [Increase::Models::ACHTransferCreateParams::Addenda]
      # @param company_descriptive_date [String]
      # @param company_discretionary_data [String]
      # @param company_entry_description [String]
      # @param company_name [String]
      # @param destination_account_holder [Symbol, Increase::Models::ACHTransferCreateParams::DestinationAccountHolder]
      # @param external_account_id [String]
      # @param funding [Symbol, Increase::Models::ACHTransferCreateParams::Funding]
      # @param individual_id [String]
      # @param individual_name [String]
      # @param preferred_effective_date [Increase::Models::ACHTransferCreateParams::PreferredEffectiveDate]
      # @param require_approval [Boolean]
      # @param routing_number [String]
      # @param standard_entry_class_code [Symbol, Increase::Models::ACHTransferCreateParams::StandardEntryClassCode]
      # @param transaction_timing [Symbol, Increase::Models::ACHTransferCreateParams::TransactionTiming]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::ACHTransfer]
      #
      # @see Increase::Models::ACHTransferCreateParams
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
      # @overload retrieve(ach_transfer_id, request_options: {})
      #
      # @param ach_transfer_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::ACHTransfer]
      #
      # @see Increase::Models::ACHTransferRetrieveParams
      def retrieve(ach_transfer_id, params = {})
        @client.request(
          method: :get,
          path: ["ach_transfers/%1$s", ach_transfer_id],
          model: Increase::Models::ACHTransfer,
          options: params[:request_options]
        )
      end

      # List ACH Transfers
      #
      # @overload list(account_id: nil, created_at: nil, cursor: nil, external_account_id: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      #
      # @param account_id [String]
      # @param created_at [Increase::Models::ACHTransferListParams::CreatedAt]
      # @param cursor [String]
      # @param external_account_id [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param status [Increase::Models::ACHTransferListParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::ACHTransfer>]
      #
      # @see Increase::Models::ACHTransferListParams
      def list(params = {})
        parsed, options = Increase::Models::ACHTransferListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "ach_transfers",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::ACHTransfer,
          options: options
        )
      end

      # Approves an ACH Transfer in a pending_approval state.
      #
      # @overload approve(ach_transfer_id, request_options: {})
      #
      # @param ach_transfer_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::ACHTransfer]
      #
      # @see Increase::Models::ACHTransferApproveParams
      def approve(ach_transfer_id, params = {})
        @client.request(
          method: :post,
          path: ["ach_transfers/%1$s/approve", ach_transfer_id],
          model: Increase::Models::ACHTransfer,
          options: params[:request_options]
        )
      end

      # Cancels an ACH Transfer in a pending_approval state.
      #
      # @overload cancel(ach_transfer_id, request_options: {})
      #
      # @param ach_transfer_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::ACHTransfer]
      #
      # @see Increase::Models::ACHTransferCancelParams
      def cancel(ach_transfer_id, params = {})
        @client.request(
          method: :post,
          path: ["ach_transfers/%1$s/cancel", ach_transfer_id],
          model: Increase::Models::ACHTransfer,
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
