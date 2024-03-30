# frozen_string_literal: true

module Increase
  module Models
    class BalanceLookup < BaseModel
      # @!attribute [rw] account_id
      required :account_id, String

      # @!attribute [rw] available_balance
      required :available_balance, Integer

      # @!attribute [rw] current_balance
      required :current_balance, Integer

      # @!attribute [rw] type
      required :type, Increase::Enum.new(:balance_lookup)
    end
  end
end
