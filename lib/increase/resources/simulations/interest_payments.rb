# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InterestPayments
        def initialize(client:)
          @client = client
        end

        # Simulates an interest payment to your account. In production, this happens
        #   automatically on the first of each month.
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :account_id The identifier of the Account Number the Interest Payment is for.
        # @option params [Integer] :amount The interest amount in cents. Must be positive.
        # @option params [String] :period_end The end of the interest period. If not provided, defaults to the current time.
        # @option params [String] :period_start The start of the interest period. If not provided, defaults to the current time.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Models::Transaction]
        def create(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/interest_payment"
          req[:body] = params
          req[:model] = Increase::Models::Transaction
          @client.request(req, opts)
        end
      end
    end
  end
end
