# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class CardRefundCreateParams < Increase::BaseModel
        # @!attribute transaction_id
        #   The identifier for the Transaction to refund. The Transaction's source must have a category of card_settlement.
        #
        #   @return [String]
        required :transaction_id, String

        # @!parse
        #   # @param transaction_id [String] The identifier for the Transaction to refund. The Transaction's source must have
        #   #   a category of card_settlement.
        #   #
        #   def initialize(transaction_id:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
