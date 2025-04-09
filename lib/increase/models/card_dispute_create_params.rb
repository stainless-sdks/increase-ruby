# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::CardDisputes#create
    class CardDisputeCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute disputed_transaction_id
      #   #/components/schemas/create_a_card_dispute_parameters/properties/disputed_transaction_id
      #
      #   @return [String]
      required :disputed_transaction_id, String

      # @!attribute explanation
      #   #/components/schemas/create_a_card_dispute_parameters/properties/explanation
      #
      #   @return [String]
      required :explanation, String

      # @!attribute [r] amount
      #   #/components/schemas/create_a_card_dispute_parameters/properties/amount
      #
      #   @return [Integer, nil]
      optional :amount, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :amount

      # @!parse
      #   # @param disputed_transaction_id [String]
      #   # @param explanation [String]
      #   # @param amount [Integer]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(disputed_transaction_id:, explanation:, amount: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
    end
  end
end
