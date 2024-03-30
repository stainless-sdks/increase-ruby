# frozen_string_literal: true

module Increase
  module Resources
    class InboundACHTransfers
      def initialize(client:)
        @client = client
      end

      # Retrieve an Inbound ACH Transfer
      #
      # @param inbound_ach_transfer_id [String] The identifier of the Inbound ACH Transfer to get details for.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundACHTransfer]
      def retrieve(inbound_ach_transfer_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/inbound_ach_transfers/#{inbound_ach_transfer_id}"
        request[:model] = Increase::Models::InboundACHTransfer
        request.merge!(opts)
        @client.request(request)
      end

      # Decline an Inbound ACH Transfer
      #
      # @param inbound_ach_transfer_id [String] The identifier of the Inbound ACH Transfer to decline.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundACHTransfer]
      def decline(inbound_ach_transfer_id, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/inbound_ach_transfers/#{inbound_ach_transfer_id}/decline"
        request[:model] = Increase::Models::InboundACHTransfer
        request.merge!(opts)
        @client.request(request)
      end

      # Create a notification of change for an Inbound ACH Transfer
      #
      # @param inbound_ach_transfer_id [String] The identifier of the Inbound ACH Transfer for which to create a notification of
      #   change.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :updated_account_number The updated account number to send in the notification of change.
      # @option params [String] :updated_routing_number The updated routing number to send in the notification of change.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundACHTransfer]
      def notification_of_change(inbound_ach_transfer_id, params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/inbound_ach_transfers/#{inbound_ach_transfer_id}/notification_of_change"
        body_params = [:updated_account_number, :updated_routing_number]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::InboundACHTransfer
        request.merge!(opts)
        @client.request(request)
      end

      # Return an Inbound ACH Transfer
      #
      # @param inbound_ach_transfer_id [String] The identifier of the Inbound ACH Transfer to return to the originating
      #   financial institution.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol] :reason The reason why this transfer will be returned. The most usual return codes are
      #   `payment_stopped` for debits and `credit_entry_refused_by_receiver` for credits.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundACHTransfer]
      def transfer_return(inbound_ach_transfer_id, params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/inbound_ach_transfers/#{inbound_ach_transfer_id}/transfer_return"
        body_params = [:reason]
        request[:body] = params.filter { |k, _| body_params.include?(k) }
        request[:model] = Increase::Models::InboundACHTransfer
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
