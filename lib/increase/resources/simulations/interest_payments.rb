# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InterestPayments
        # Simulates an interest payment to your account. In production, this happens
        #   automatically on the first of each month.
        #
        # @param params [Increase::Models::Simulations::InterestPaymentCreateParams, Hash{Symbol => Object}] Attributes to send in this request.
        #
        #   @option params [String] :account_id The identifier of the Account Number the Interest Payment is for.
        #
        #   @option params [Integer] :amount The interest amount in cents. Must be positive.
        #
        #   @option params [Time] :period_end The end of the interest period. If not provided, defaults to the current time.
        #
        #   @option params [Time] :period_start The start of the interest period. If not provided, defaults to the current time.
        #
        # @param opts [Hash{Symbol => Object}, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
        #
        # @return [Increase::Models::Transaction]
        #
        def create(params = {}, opts = {})
          parsed = Increase::Models::Simulations::InterestPaymentCreateParams.dump(params)
          req = {
            method: :post,
            path: "simulations/interest_payments",
            body: parsed,
            model: Increase::Models::Transaction
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
end
