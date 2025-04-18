# frozen_string_literal: true

module Increase
  module Resources
    class InboundRealTimePaymentsTransfers
      # @api private
      private def initialize_resources; end

      # Retrieve an Inbound Real-Time Payments Transfer
      #
      # @overload retrieve(inbound_real_time_payments_transfer_id, request_options: {})
      #
      # @param inbound_real_time_payments_transfer_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::InboundRealTimePaymentsTransfer]
      #
      # @see Increase::Models::InboundRealTimePaymentsTransferRetrieveParams
      def retrieve(inbound_real_time_payments_transfer_id, params = {})
        @client.request(
          method: :get,
          path: ["inbound_real_time_payments_transfers/%1$s", inbound_real_time_payments_transfer_id],
          model: Increase::Models::InboundRealTimePaymentsTransfer,
          options: params[:request_options]
        )
      end

      # List Inbound Real-Time Payments Transfers
      #
      # @overload list(account_id: nil, account_number_id: nil, created_at: nil, cursor: nil, limit: nil, request_options: {})
      #
      # @param account_id [String]
      # @param account_number_id [String]
      # @param created_at [Increase::Models::InboundRealTimePaymentsTransferListParams::CreatedAt]
      # @param cursor [String]
      # @param limit [Integer]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::InboundRealTimePaymentsTransfer>]
      #
      # @see Increase::Models::InboundRealTimePaymentsTransferListParams
      def list(params = {})
        parsed, options = Increase::Models::InboundRealTimePaymentsTransferListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "inbound_real_time_payments_transfers",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::InboundRealTimePaymentsTransfer,
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
