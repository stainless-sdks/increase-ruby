# frozen_string_literal: true

module Increase
  module Models
    class BookkeepingAccount < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] account_id
      required :account_id, String

      # @!attribute [rw] compliance_category
      required :compliance_category, Increase::Enum.new([:commingled_cash, :customer_balance])

      # @!attribute [rw] entity_id
      required :entity_id, String

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] name_
      required :name_, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:bookkeeping_account])
    end
  end
end
