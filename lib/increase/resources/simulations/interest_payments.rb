# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InterestPayments
        # Simulates an interest payment to your account. In production, this happens
        #   automatically on the first of each month.
        #
        # @param params [Increase::Models::Simulations::InterestPaymentCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :account_id The identifier of the Account the Interest Payment should be paid to is for.
        #
        #   @option params [Integer] :amount The interest amount in cents. Must be positive.
        #
        #   @option params [String] :accrued_on_account_id The identifier of the Account the Interest accrued on. Defaults to `account_id`.
        #
        #   @option params [Time] :period_end The end of the interest period. If not provided, defaults to the current time.
        #
        #   @option params [Time] :period_start The start of the interest period. If not provided, defaults to the current time.
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Increase::Models::Transaction]
        #
        # @see Increase::Models::Simulations::InterestPaymentCreateParams
        def create(params)
          parsed, options = Increase::Models::Simulations::InterestPaymentCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "simulations/interest_payments",
            body: parsed,
            model: Increase::Models::Transaction,
            options: options
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
end
