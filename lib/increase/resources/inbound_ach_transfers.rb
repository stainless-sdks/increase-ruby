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
        req = {}
        req[:method] = :get
        req[:path] = "/inbound_ach_transfers/#{inbound_ach_transfer_id}"
        req[:model] = Increase::Models::InboundACHTransfer
        @client.request(req, opts)
      end

      # List Inbound ACH Transfers
      # 
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id Filter Inbound ACH Tranfers to ones belonging to the specified Account.
      # @option params [String] :account_number_id Filter Inbound ACH Tranfers to ones belonging to the specified Account Number.
      # @option params [CreatedAt] :created_at
      # @option params [String] :cursor Return the page of entries after this one.
      # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Symbol] :status Filter Inbound ACH Transfers to those with the specified status.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Page<Increase::Models::InboundACHTransfer>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/inbound_ach_transfers"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::InboundACHTransfer
        @client.request(req, opts)
      end

      # Decline an Inbound ACH Transfer
      # 
      # @param inbound_ach_transfer_id [String] The identifier of the Inbound ACH Transfer to decline.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::InboundACHTransfer]
      def decline(inbound_ach_transfer_id, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/inbound_ach_transfers/#{inbound_ach_transfer_id}/decline"
        req[:model] = Increase::Models::InboundACHTransfer
        @client.request(req, opts)
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
        req = {}
        req[:method] = :post
        req[:path] = "/inbound_ach_transfers/#{inbound_ach_transfer_id}/notification_of_change"
        req[:body] = params
        req[:model] = Increase::Models::InboundACHTransfer
        @client.request(req, opts)
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
        req = {}
        req[:method] = :post
        req[:path] = "/inbound_ach_transfers/#{inbound_ach_transfer_id}/transfer_return"
        req[:body] = params
        req[:model] = Increase::Models::InboundACHTransfer
        @client.request(req, opts)
      end
    end
  end
end
