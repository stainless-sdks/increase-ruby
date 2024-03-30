# frozen_string_literal: true

module Increase
  module Models
    class AccountNumber < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] account_id
      required :account_id, String

      # @!attribute [rw] account_number
      required :account_number, String

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] inbound_ach
      required :inbound_ach, -> { Increase::Models::AccountNumber::InboundACH }

      # @!attribute [rw] inbound_checks
      required :inbound_checks, -> { Increase::Models::AccountNumber::InboundChecks }

      # @!attribute [rw] name_
      required :name_, String

      # @!attribute [rw] routing_number
      required :routing_number, String

      # @!attribute [rw] status
      required :status, Increase::Enum.new(:active, :disabled, :canceled)

      # @!attribute [rw] type
      required :type, Increase::Enum.new(:account_number)

      class InboundACH < BaseModel
        # @!attribute [rw] debit_status
        required :debit_status, Increase::Enum.new(:allowed, :blocked)
      end

      class InboundChecks < BaseModel
        # @!attribute [rw] status
        required :status, Increase::Enum.new(:allowed, :check_transfers_only)
      end
    end
  end
end
