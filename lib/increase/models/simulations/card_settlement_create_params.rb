# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class CardSettlementCreateParams < Increase::BaseModel
        # @!attribute card_id
        #   The identifier of the Card to create a settlement on.
        #
        #   @return [String]
        required :card_id, String

        # @!attribute pending_transaction_id
        #   The identifier of the Pending Transaction for the Card Authorization you wish to
        #     settle.
        #
        #   @return [String]
        required :pending_transaction_id, String

        # @!attribute [r] amount
        #   The amount to be settled. This defaults to the amount of the Pending Transaction
        #     being settled.
        #
        #   @return [Integer, nil]
        optional :amount, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :amount

        # @!parse
        #   # @param card_id [String]
        #   # @param pending_transaction_id [String]
        #   # @param amount [Integer]
        #   #
        #   def initialize(card_id:, pending_transaction_id:, amount: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
