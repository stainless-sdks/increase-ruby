# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      # @see Increase::Resources::Simulations::CardReversals#create
      class CardReversalCreateParams < Increase::Internal::Type::BaseModel
        # @!parse
        #   extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        # @!attribute card_payment_id
        #   #/components/schemas/sandbox_reverse_a_card_authorization_parameters/properties/card_payment_id
        #
        #   @return [String]
        required :card_payment_id, String

        # @!attribute [r] amount
        #   #/components/schemas/sandbox_reverse_a_card_authorization_parameters/properties/amount
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

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end
    end
  end
end
