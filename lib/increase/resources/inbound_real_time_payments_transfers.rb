# frozen_string_literal: true

module Increase
  module Resources
    class InboundRealTimePaymentsTransfers
      # Retrieve an Inbound Real-Time Payments Transfer
      #
      # @param inbound_real_time_payments_transfer_id [String] The identifier of the Inbound Real-Time Payments Transfer to get details for.
      #
      # @param params [Increase::Models::InboundRealTimePaymentsTransferRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::InboundRealTimePaymentsTransfer]
      def retrieve(inbound_real_time_payments_transfer_id, params = {})
        @client.request(
          method: :get,
          path: ["inbound_real_time_payments_transfers/%0s", inbound_real_time_payments_transfer_id],
          model: Increase::Models::InboundRealTimePaymentsTransfer,
          options: params[:request_options]
        )
      end

      # List Inbound Real-Time Payments Transfers
      #
      # @param params [Increase::Models::InboundRealTimePaymentsTransferListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :account_id Filter Inbound Real-Time Payments Transfers to those belonging to the specified
      #     Account.
      #
      #   @option params [String] :account_number_id Filter Inbound Real-Time Payments Transfers to ones belonging to the specified
      #     Account Number.
      #
      #   @option params [Increase::Models::InboundRealTimePaymentsTransferListParams::CreatedAt] :created_at
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::InboundRealTimePaymentsTransfer>]
      def list(params = {})
        parsed, options = Increase::Models::InboundRealTimePaymentsTransferListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "inbound_real_time_payments_transfers",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::InboundRealTimePaymentsTransfer,
          options: options
        )
      end

      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
