# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class CardFuelConfirmationCreateParams < Increase::BaseModel
        # @!attribute amount
        #   The amount of the fuel_confirmation in minor units in the card authorization's currency.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute card_payment_id
        #   The identifier of the Card Payment to create a fuel_confirmation on.
        #
        #   @return [String]
        required :card_payment_id, String

        # @!parse
        #   # @param amount [Integer] The amount of the fuel_confirmation in minor units in the card authorization's
        #   #   currency.
        #   #
        #   # @param card_payment_id [String] The identifier of the Card Payment to create a fuel_confirmation on.
        #   #
        #   def initialize(amount:, card_payment_id:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
