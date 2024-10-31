# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InterestPayments
        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
        end

        # Simulates an interest payment to your account. In production, this happens
        #   automatically on the first of each month.
        #
        # @param params [Hash{Symbol => Object}] Attributes to send in this request.
        #   @option params [String] :account_id The identifier of the Account Number the Interest Payment is for.
        #   @option params [Integer] :amount The interest amount in cents. Must be positive.
        #   @option params [Time, nil] :period_end The end of the interest period. If not provided, defaults to the current time.
        #   @option params [Time, nil] :period_start The start of the interest period. If not provided, defaults to the current time.
        #
        # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::Transaction]
        def create(params = {}, opts = {})
          req = {
            method: :post,
            path: "/simulations/interest_payments",
            body: params,
            headers: {"Content-Type" => "application/json"},
            model: Increase::Models::Transaction
          }
          @client.request(req, opts)
        end
      end
    end
  end
end
