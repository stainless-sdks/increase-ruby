# frozen_string_literal: true

module Increase
  module Resources
    class Intrafi
      class Balances
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
          req = {}
          req[:method] = :get
          req[:path] = "/intrafi_balances/#{account_id}"
          req[:model] = Increase::Models::IntrafiBalance
          @client.request(req, opts)
        end
      end
    end
  end
end
