# frozen_string_literal: true

module Increase
  module Models
    class BookkeepingAccountBalanceParams < Increase::BaseModel
      # @!attribute [r] at_time
      #   The moment to query the balance at. If not set, returns the current balances.
      #
      #   @return [Time, nil]
      optional :at_time, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :at_time

      # @!parse
      #   # @param at_time [String] The moment to query the balance at. If not set, returns the current balances.
      #   #
      #   def initialize(at_time: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
