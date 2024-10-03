# frozen_string_literal: true

module Increase
  module Resources
    class InboundCheckDeposits
      def initialize(client:)
        @client = client
      end

      # Retrieve an Inbound Check Deposit
      #
      # @param inbound_check_deposit_id [String] The identifier of the Inbound Check Deposit to get details for.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundCheckDeposit]
      def retrieve(inbound_check_deposit_id, opts = {})
        req = {
          method: :get,
          path: "/inbound_check_deposits/#{inbound_check_deposit_id}",
          model: Increase::Models::InboundCheckDeposit
        }
        @client.request(req, opts)
      end

      # List Inbound Check Deposits
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :account_id Filter Inbound Check Deposits to those belonging to the specified Account.
      # @option params [String, nil] :check_transfer_id Filter Inbound Check Deposits to those belonging to the specified Check
      #   Transfer.
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::InboundCheckDeposit>]
      def list(params = {}, opts = {})
        req = {
          method: :get,
          path: "/inbound_check_deposits",
          query: params,
          page: Increase::Page,
          model: Increase::Models::InboundCheckDeposit
        }
        @client.request(req, opts)
      end

      # Decline an Inbound Check Deposit
      #
      # @param inbound_check_deposit_id [String] The identifier of the Inbound Check Deposit to decline.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundCheckDeposit]
      def decline(inbound_check_deposit_id, opts = {})
        req = {
          method: :post,
          path: "/inbound_check_deposits/#{inbound_check_deposit_id}/decline",
          model: Increase::Models::InboundCheckDeposit
        }
        @client.request(req, opts)
      end

      # Return an Inbound Check Deposit
      #
      # @param inbound_check_deposit_id [String] The identifier of the Inbound Check Deposit to return.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol, Reason] :reason The reason to return the Inbound Check Deposit.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundCheckDeposit]
      def return_(inbound_check_deposit_id, params = {}, opts = {})
        req = {
          method: :post,
          path: "/inbound_check_deposits/#{inbound_check_deposit_id}/return",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Increase::Models::InboundCheckDeposit
        }
        @client.request(req, opts)
      end
    end
  end
end
