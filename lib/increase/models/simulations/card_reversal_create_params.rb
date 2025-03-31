# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class CardReversalCreateParams < Increase::BaseModel
        # @!parse
        #   extend Increase::Type::RequestParameters::Converter
        include Increase::RequestParameters

        # @!attribute card_payment_id
        #   The identifier of the Card Payment to create a reversal on.
        #
        #   @return [String]
        required :card_payment_id, String

        # @!attribute [r] amount
        #   The amount of the reversal in minor units in the card authorization's currency.
        #     This defaults to the authorization amount.
        #
        #   @return [Integer, nil]
        optional :amount, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :amount

        # @!parse
        #   # @param card_payment_id [String]
        #   # @param amount [Integer]
        #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(card_payment_id:, amount: nil, request_options: {}, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
