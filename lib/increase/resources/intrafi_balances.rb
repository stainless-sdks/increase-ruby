# frozen_string_literal: true

module Increase
  module Resources
    class IntrafiBalances
      # Get IntraFi balances by bank
      #
      # @param account_id [String] The identifier of the Account to get balances for.
      #
      # @param params [Increase::Models::IntrafiBalanceIntrafiBalanceParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::IntrafiBalance]
      def intrafi_balance(account_id, params = {})
        @client.request(
          method: :get,
          path: ["accounts/%1$s/intrafi_balance", account_id],
          model: Increase::Models::IntrafiBalance,
          options: params[:request_options]
        )
      end

      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
