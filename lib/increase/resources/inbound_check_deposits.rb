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
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::InboundCheckDepositRetrieveResponse]
      def retrieve(inbound_check_deposit_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/inbound_check_deposits/#{inbound_check_deposit_id}"
        req[:model] = Increase::Models::InboundCheckDepositRetrieveResponse
        @client.request(req, opts)
      end
    end
  end
end
