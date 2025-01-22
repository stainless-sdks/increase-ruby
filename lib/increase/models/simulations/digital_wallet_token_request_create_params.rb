# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class DigitalWalletTokenRequestCreateParams < Increase::BaseModel
        # @!attribute card_id
        #   The identifier of the Card to be authorized.
        #
        #   @return [String]
        required :card_id, String

        # @!parse
        #   # @param card_id [String]
        #   #
        #   def initialize(card_id:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
