# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class InterestPayments
        # Simulates an interest payment to your account. In production, this happens
        # automatically on the first of each month.
        #
        # @overload create(account_id:, amount:, accrued_on_account_id: nil, period_end: nil, period_start: nil, request_options: {})
        #
        # @param account_id [String]
        # @param amount [Integer]
        # @param accrued_on_account_id [String]
        # @param period_end [Time]
        # @param period_start [Time]
        # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
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
