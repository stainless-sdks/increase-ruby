# frozen_string_literal: true

module Increase
  module Models
    class BookkeepingEntry < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] account_id
      required :account_id, String

      # @!attribute [rw] amount
      required :amount, Integer

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] entry_set_id
      required :entry_set_id, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new(:bookkeeping_entry)
    end
  end
end
