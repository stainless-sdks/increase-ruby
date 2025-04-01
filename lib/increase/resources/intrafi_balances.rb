# frozen_string_literal: true

module Increase
  module Resources
    class IntrafiBalances
      # Get IntraFi balances by bank
      #
      # @overload intrafi_balance(account_id, request_options: {})
      #
      # @param account_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::IntrafiBalance]
      #
      # @see Increase::Models::IntrafiBalanceIntrafiBalanceParams
      def intrafi_balance(account_id, params = {})
        @client.request(
          method: :get,
          path: ["accounts/%1$s/intrafi_balance", account_id],
          model: Increase::Models::IntrafiBalance,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
