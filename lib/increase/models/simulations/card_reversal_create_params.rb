# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class CardReversalCreateParams < Increase::BaseModel
        # @!attribute card_payment_id
        #   The identifier of the Card Payment to create a reversal on.
        #
        #   @return [String]
        required :card_payment_id, String

        # @!attribute amount
        #   The amount of the reversal in minor units in the card authorization's currency. This defaults to the authorization amount.
        #
        #   @return [Integer]
        optional :amount, Integer

        # @!parse
        #   # @param card_payment_id [String] The identifier of the Card Payment to create a reversal on.
        #   #
        #   # @param amount [Integer] The amount of the reversal in minor units in the card authorization's currency.
        #   #   This defaults to the authorization amount.
        #   #
        #   def initialize(card_payment_id:, amount: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
