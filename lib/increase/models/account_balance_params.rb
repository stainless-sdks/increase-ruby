# frozen_string_literal: true

module Increase
  module Models
    class AccountBalanceParams < Increase::BaseModel
      # @!parse
      #   extend Increase::Type::RequestParameters::Converter
      include Increase::RequestParameters

      # @!attribute [r] at_time
      #   The moment to query the balance at. If not set, returns the current balances.
      #
      #   @return [Time, nil]
      optional :at_time, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :at_time

      # @!parse
      #   # @param at_time [Time]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(at_time: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
