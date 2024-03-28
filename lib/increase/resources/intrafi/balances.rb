# frozen_string_literal: true

module Increase
  module Resources
    module Intrafi
      class BalancesResource
        def initialize(client:)
          @client = client
        end

        # Get IntraFi balances by bank
        #
        # @param account_id [String] The identifier of the Account to get balances for.
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::IntrafiBalance]
        def retrieve(account_id, opts = {})
          request = {}
          request[:method] = :get
          request[:path] = "/intrafi_balances/#{account_id}"
          request[:model] = Increase::Models::IntrafiBalance
          request.merge!(opts)
          @client.request(request)
        end
      end
    end
  end
end
