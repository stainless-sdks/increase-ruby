# frozen_string_literal: true

module Increase
  module Resources
    class RealTimePaymentsTransfers
      # @api private
      private def initialize_resources; end

      # Create a Real-Time Payments Transfer
      #
      # @overload create(amount:, creditor_name:, remittance_information:, source_account_number_id:, debtor_name: nil, destination_account_number: nil, destination_routing_number: nil, external_account_id: nil, require_approval: nil, ultimate_creditor_name: nil, ultimate_debtor_name: nil, request_options: {})
      #
      # @param amount [Integer]
      # @param creditor_name [String]
      # @param remittance_information [String]
      # @param source_account_number_id [String]
      # @param debtor_name [String]
      # @param destination_account_number [String]
      # @param destination_routing_number [String]
      # @param external_account_id [String]
      # @param require_approval [Boolean]
      # @param ultimate_creditor_name [String]
      # @param ultimate_debtor_name [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::RealTimePaymentsTransfer]
      #
      # @see Increase::Models::RealTimePaymentsTransferCreateParams
      def create(params)
        parsed, options = Increase::Models::RealTimePaymentsTransferCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "real_time_payments_transfers",
          body: parsed,
          model: Increase::Models::RealTimePaymentsTransfer,
          options: options
        )
      end

      # Retrieve a Real-Time Payments Transfer
      #
      # @overload retrieve(real_time_payments_transfer_id, request_options: {})
      #
      # @param real_time_payments_transfer_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::RealTimePaymentsTransfer]
      #
      # @see Increase::Models::RealTimePaymentsTransferRetrieveParams
      def retrieve(real_time_payments_transfer_id, params = {})
        @client.request(
          method: :get,
          path: ["real_time_payments_transfers/%1$s", real_time_payments_transfer_id],
          model: Increase::Models::RealTimePaymentsTransfer,
          options: params[:request_options]
        )
      end

      # List Real-Time Payments Transfers
      #
      # @overload list(account_id: nil, created_at: nil, cursor: nil, external_account_id: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      #
      # @param account_id [String]
      # @param created_at [Increase::Models::RealTimePaymentsTransferListParams::CreatedAt]
      # @param cursor [String]
      # @param external_account_id [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param status [Increase::Models::RealTimePaymentsTransferListParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::RealTimePaymentsTransfer>]
      #
      # @see Increase::Models::RealTimePaymentsTransferListParams
      def list(params = {})
        parsed, options = Increase::Models::RealTimePaymentsTransferListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "real_time_payments_transfers",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::RealTimePaymentsTransfer,
          options: options
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
        initialize_resources
      end
    end
  end
end
