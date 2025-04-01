# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      class DigitalWalletTokenRequestCreateParams < Increase::BaseModel
        # @!parse
        #   extend Increase::Type::RequestParameters::Converter
        include Increase::RequestParameters

        # @!attribute card_id
        #   The identifier of the Card to be authorized.
        #
        #   @return [String]
        required :card_id, String

        # @!parse
        #   # @param card_id [String]
        #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(card_id:, request_options: {}, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
