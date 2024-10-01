# frozen_string_literal: true

module Increase
  module Resources
    class InboundRealTimePaymentsTransfers
      def initialize(client:)
        @client = client
      end

      # Retrieve an Inbound Real-Time Payments Transfer
      #
      # @param inbound_real_time_payments_transfer_id [String] The identifier of the Inbound Real-Time Payments Transfer to get details for.
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundRealTimePaymentsTransfer]
      def retrieve(inbound_real_time_payments_transfer_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/inbound_real_time_payments_transfers/#{inbound_real_time_payments_transfer_id}"
        req[:model] = Increase::Models::InboundRealTimePaymentsTransfer
        @client.request(req, opts)
      end

      # List Inbound Real-Time Payments Transfers
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :account_id Filter Inbound Real-Time Payments Transfers to those belonging to the specified
      #   Account.
      # @option params [String, nil] :account_number_id Filter Inbound Real-Time Payments Transfers to ones belonging to the specified
      #   Account Number.
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::InboundRealTimePaymentsTransfer>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/inbound_real_time_payments_transfers"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::InboundRealTimePaymentsTransfer
        @client.request(req, opts)
      end

      class CreatedAt < BaseModel
        # @!attribute [rw] after
        #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :after, DateTime

        # @!attribute [rw] before
        #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :before, DateTime

        # @!attribute [rw] on_or_after
        #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_after, DateTime

        # @!attribute [rw] on_or_before
        #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_before, DateTime
      end
    end
  end
end
