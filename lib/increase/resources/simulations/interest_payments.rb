# frozen_string_literal: true

module Increase
  module Resources
    module Simulations
      class InterestPaymentsResource
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
          request = {}
          request[:method] = :post
          request[:path] = "/simulations/interest_payment"
          body_params = [:account_id, :amount, :period_end, :period_start]
          request[:body] = params.filter { |k, _| body_params.include?(k) }
          request[:model] = Increase::Models::Transaction
          request.merge!(opts)
          @client.request(request)
        end
      end
    end
  end
end
