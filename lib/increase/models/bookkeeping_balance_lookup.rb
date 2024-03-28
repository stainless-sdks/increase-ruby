# frozen_string_literal: true

module Increase
  module Models
    class BookkeepingBalanceLookup < BaseModel
      # @!attribute [rw] balance
      required :balance, Integer

      # @!attribute [rw] bookkeeping_account_id
      required :bookkeeping_account_id, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:bookkeeping_balance_lookup])
    end
  end
end
