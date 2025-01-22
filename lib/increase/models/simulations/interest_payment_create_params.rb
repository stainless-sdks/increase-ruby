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

        # @!attribute [r] period_end
        #   The end of the interest period. If not provided, defaults to the current time.
        #
        #   @return [Time, nil]
        optional :period_end, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :period_end

        # @!attribute [r] period_start
        #   The start of the interest period. If not provided, defaults to the current time.
        #
        #   @return [Time, nil]
        optional :period_start, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :period_start

        # @!parse
        #   # @param account_id [String]
        #   # @param amount [Integer]
        #   # @param period_end [String]
        #   # @param period_start [String]
        #   #
        #   def initialize(account_id:, amount:, period_end: nil, period_start: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
