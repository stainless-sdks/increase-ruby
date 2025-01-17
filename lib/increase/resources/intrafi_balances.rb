# frozen_string_literal: true

module Increase
  module Resources
    class IntrafiBalances
      # Get IntraFi balances by bank
      #
      # @param account_id [String] The identifier of the Account to get balances for.
      #
      # @param opts [Hash{Symbol=>Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::IntrafiBalance]
      #
      def retrieve(account_id, opts = {})
        req = {
          method: :get,
          path: ["intrafi_balances/%0s", account_id],
          model: Increase::Models::IntrafiBalance
        }
        @client.request(req, opts)
      end

      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
