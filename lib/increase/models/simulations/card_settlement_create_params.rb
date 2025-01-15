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
        #   The identifier of the Pending Transaction for the Card Authorization you wish to settle.
        #
        #   @return [String]
        required :pending_transaction_id, String

        # @!attribute amount
        #   The amount to be settled. This defaults to the amount of the Pending Transaction being settled.
        #
        #   @return [Integer]
        optional :amount, Integer

        # @!parse
        #   # @param card_id [String] The identifier of the Card to create a settlement on.
        #   #
        #   # @param pending_transaction_id [String] The identifier of the Pending Transaction for the Card Authorization you wish to
        #   #   settle.
        #   #
        #   # @param amount [Integer] The amount to be settled. This defaults to the amount of the Pending Transaction
        #   #   being settled.
        #   #
        #   def initialize(card_id:, pending_transaction_id:, amount: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
