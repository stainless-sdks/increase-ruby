# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class CardAuthorizationExpirationCreateParams < Increase::BaseModel
        # @!attribute card_payment_id
        #   The identifier of the Card Payment to expire.
        #
        #   @return [String]
        required :card_payment_id, String

        # @!parse
        #   # @param card_payment_id [String] The identifier of the Card Payment to expire.
        #   #
        #   def initialize(card_payment_id:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
