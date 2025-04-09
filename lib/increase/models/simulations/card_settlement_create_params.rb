# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      # @see Increase::Resources::Simulations::CardSettlements#create
      class CardSettlementCreateParams < Increase::Internal::Type::BaseModel
        # @!parse
        #   extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        # @!attribute card_id
        #   #/components/schemas/sandbox_settle_a_card_authorization_parameters/properties/card_id
        #
        #   @return [String]
        required :card_id, String

        # @!attribute pending_transaction_id
        #   #/components/schemas/sandbox_settle_a_card_authorization_parameters/properties/pending_transaction_id
        #
        #   @return [String]
        required :pending_transaction_id, String

        # @!attribute [r] amount
        #   #/components/schemas/sandbox_settle_a_card_authorization_parameters/properties/amount
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
        #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(card_id:, pending_transaction_id:, amount: nil, request_options: {}, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end
    end
  end
end
