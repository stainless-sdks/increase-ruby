# frozen_string_literal: true

module Increase
  module Resources
    class InboundACHTransfers
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end

      # Retrieve an Inbound ACH Transfer
      #
      # @param inbound_ach_transfer_id [String] The identifier of the Inbound ACH Transfer to get details for.
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundACHTransfer]
      def retrieve(inbound_ach_transfer_id, opts = {})
        req = {
          method: :get,
          path: "/inbound_ach_transfers/#{inbound_ach_transfer_id}",
          model: Increase::Models::InboundACHTransfer
        }
        @client.request(req, opts)
      end

      # List Inbound ACH Transfers
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :account_id Filter Inbound ACH Tranfers to ones belonging to the specified Account.
      #   @option params [String, nil] :account_number_id Filter Inbound ACH Tranfers to ones belonging to the specified Account Number.
      #   @option params [CreatedAt, nil] :created_at
      #   @option params [String, nil] :cursor Return the page of entries after this one.
      #   @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #   @option params [Symbol, Status, nil] :status Filter Inbound ACH Transfers to those with the specified status.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::InboundACHTransfer>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/inbound_ach_transfers",
          query: params,
          page: Increase::Page,
          model: Increase::Models::InboundACHTransfer
        }
        @client.request(req, opts)
      end

      # Create a notification of change for an Inbound ACH Transfer
      #
      # @param inbound_ach_transfer_id [String] The identifier of the Inbound ACH Transfer for which to create a notification of
      #   change.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :updated_account_number The updated account number to send in the notification of change.
      #   @option params [String, nil] :updated_routing_number The updated routing number to send in the notification of change.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundACHTransfer]
      def create_notification_of_change(inbound_ach_transfer_id, params = {}, opts = {})
        req = {
          method: :post,
          path: "/inbound_ach_transfers/#{inbound_ach_transfer_id}/create_notification_of_change",
          headers: {"Content-Type" => "application/json"},
          body: params,
          model: Increase::Models::InboundACHTransfer
        }
        @client.request(req, opts)
      end

      # Decline an Inbound ACH Transfer
      #
      # @param inbound_ach_transfer_id [String] The identifier of the Inbound ACH Transfer to decline.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Symbol, Reason, nil] :reason The reason why this transfer will be returned. If this parameter is unset, the
      #     return codes will be `payment_stopped` for debits and
      #     `credit_entry_refused_by_receiver` for credits.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundACHTransfer]
      def decline(inbound_ach_transfer_id, params = {}, opts = {})
        req = {
          method: :post,
          path: "/inbound_ach_transfers/#{inbound_ach_transfer_id}/decline",
          headers: {"Content-Type" => "application/json"},
          body: params,
          model: Increase::Models::InboundACHTransfer
        }
        @client.request(req, opts)
      end

      # Return an Inbound ACH Transfer
      #
      # @param inbound_ach_transfer_id [String] The identifier of the Inbound ACH Transfer to return to the originating
      #   financial institution.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Symbol, Reason] :reason The reason why this transfer will be returned. The most usual return codes are
      #     `payment_stopped` for debits and `credit_entry_refused_by_receiver` for credits.
      #
      # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundACHTransfer]
      def transfer_return(inbound_ach_transfer_id, params = {}, opts = {})
        req = {
          method: :post,
          path: "/inbound_ach_transfers/#{inbound_ach_transfer_id}/transfer_return",
          headers: {"Content-Type" => "application/json"},
          body: params,
          model: Increase::Models::InboundACHTransfer
        }
        @client.request(req, opts)
      end
    end
  end
end
