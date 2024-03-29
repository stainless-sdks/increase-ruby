# frozen_string_literal: true

module Increase
  module Resources
    class InboundWireTransfers
      def initialize(client:)
        @client = client
      end

      # Retrieve an Inbound Wire Transfer
      #
      # @param inbound_wire_transfer_id [String] The identifier of the Inbound Wire Transfer to get details for.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundWireTransfer]
      def retrieve(inbound_wire_transfer_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/inbound_wire_transfers/#{inbound_wire_transfer_id}"
        request[:model] = Increase::Models::InboundWireTransfer
        request.merge!(opts)
        @client.request(request)
      end

      # List Inbound Wire Transfers
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id Filter Inbound Wire Tranfers to ones belonging to the specified Account.
      # @option params [String] :account_number_id Filter Inbound Wire Tranfers to ones belonging to the specified Account Number.
      # @option params [Hash] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Symbol] :status Filter Inbound Wire Transfers to those with the specified status.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundWireTransfer]
      def list(params = {}, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/inbound_wire_transfers"
        query_params = [:account_id, :account_number_id, :created_at, :cursor, :limit, :status]
        request[:query] = params.filter { |k, _| query_params.include?(k) }
        request[:model] = Increase::Models::InboundWireTransfer
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
