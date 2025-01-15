# frozen_string_literal: true

module Increase
  module Models
    class BookkeepingAccountBalanceParams < Increase::BaseModel
      # @!attribute at_time
      #   The moment to query the balance at. If not set, returns the current balances.
      #
      #   @return [Time]
      optional :at_time, Time

      # @!parse
      #   # @param at_time [String] The moment to query the balance at. If not set, returns the current balances.
      #   #
      #   def initialize(at_time: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
