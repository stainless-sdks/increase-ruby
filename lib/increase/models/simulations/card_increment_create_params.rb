# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      # @see Increase::Resources::Simulations::CardIncrements#create
      class CardIncrementCreateParams < Increase::Internal::Type::BaseModel
        # @!parse
        #   extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        # @!attribute amount
        #   #/components/schemas/sandbox_increment_a_card_authorization_parameters/properties/amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute card_payment_id
        #   #/components/schemas/sandbox_increment_a_card_authorization_parameters/properties/card_payment_id
        #
        #   @return [String]
        required :card_payment_id, String

        # @!attribute [r] event_subscription_id
        #   #/components/schemas/sandbox_increment_a_card_authorization_parameters/properties/event_subscription_id
        #
        #   @return [String, nil]
        optional :event_subscription_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :event_subscription_id

        # @!parse
        #   # @param amount [Integer]
        #   # @param card_payment_id [String]
        #   # @param event_subscription_id [String]
        #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(amount:, card_payment_id:, event_subscription_id: nil, request_options: {}, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end
    end
  end
end
