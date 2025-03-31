# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class CardAuthorizationExpirationCreateParams < Increase::BaseModel
        # @!parse
        #   extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        # @!attribute card_payment_id
        #   The identifier of the Card Payment to expire.
        #
        #   @return [String]
        required :card_payment_id, String

        # @!parse
        #   # @param card_payment_id [String]
        #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(card_payment_id:, request_options: {}, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
