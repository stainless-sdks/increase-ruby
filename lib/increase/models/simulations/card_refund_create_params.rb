# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class CardRefundCreateParams < Increase::BaseModel
        # @!parse
        #   extend Increase::Type::RequestParameters::Converter
        include Increase::RequestParameters

        # @!attribute transaction_id
        #   The identifier for the Transaction to refund. The Transaction's source must have
        #     a category of card_settlement.
        #
        #   @return [String]
        required :transaction_id, String

        # @!parse
        #   # @param transaction_id [String]
        #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(transaction_id:, request_options: {}, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
