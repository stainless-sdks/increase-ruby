# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class InterestPaymentCreateParams < Increase::BaseModel
        # @!attribute account_id
        #   The identifier of the Account Number the Interest Payment is for.
        #
        #   @return [String]
        required :account_id, String

        # @!attribute amount
        #   The interest amount in cents. Must be positive.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute period_end
        #   The end of the interest period. If not provided, defaults to the current time.
        #
        #   @return [Time]
        optional :period_end, Time

        # @!attribute period_start
        #   The start of the interest period. If not provided, defaults to the current time.
        #
        #   @return [Time]
        optional :period_start, Time

        # @!parse
        #   # @param account_id [String] The identifier of the Account Number the Interest Payment is for.
        #   #
        #   # @param amount [Integer] The interest amount in cents. Must be positive.
        #   #
        #   # @param period_end [String] The end of the interest period. If not provided, defaults to the current time.
        #   #
        #   # @param period_start [String] The start of the interest period. If not provided, defaults to the current time.
        #   #
        #   def initialize(account_id:, amount:, period_end: nil, period_start: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
