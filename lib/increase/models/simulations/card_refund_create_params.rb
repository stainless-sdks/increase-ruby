# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      # @see Increase::Resources::Simulations::CardRefunds#create
      class CardRefundCreateParams < Increase::Internal::Type::BaseModel
        extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        # @!attribute transaction_id
        #   The identifier for the Transaction to refund. The Transaction's source must have
        #   a category of card_settlement.
        #
        #   @return [String]
        required :transaction_id, String

        # @!method initialize(transaction_id:, request_options: {})
        #   @param transaction_id [String]
        #   @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
