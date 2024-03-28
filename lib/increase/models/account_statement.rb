# frozen_string_literal: true

module Increase
  module Models
    class AccountStatement < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] account_id
      required :account_id, String

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] ending_balance
      required :ending_balance, Integer

      # @!attribute [rw] file_id
      required :file_id, String

      # @!attribute [rw] starting_balance
      required :starting_balance, Integer

      # @!attribute [rw] statement_period_end
      required :statement_period_end, String

      # @!attribute [rw] statement_period_start
      required :statement_period_start, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:account_statement])
    end
  end
end
