# frozen_string_literal: true

module Increase
  module Models
    class AccountNumber < BaseModel
      # @!attribute [rw] id
      #   The Account Number identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The identifier for the account this Account Number belongs to.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] account_number
      #   The account number.
      #   @return [String]
      required :account_number, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Account Number was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] inbound_ach
      #   Properties related to how this Account Number handles inbound ACH transfers.
      #   @return [Increase::Models::AccountNumber::InboundACH]
      required :inbound_ach, -> { Increase::Models::AccountNumber::InboundACH }

      # @!attribute [rw] inbound_checks
      #   Properties related to how this Account Number should handle inbound check withdrawals.
      #   @return [Increase::Models::AccountNumber::InboundChecks]
      required :inbound_checks, -> { Increase::Models::AccountNumber::InboundChecks }

      # @!attribute [rw] name_
      #   The name you choose for the Account Number.
      #   @return [String]
      required :name_, String

      # @!attribute [rw] routing_number
      #   The American Bankers' Association (ABA) Routing Transit Number (RTN).
      #   @return [String]
      required :routing_number, String

      # @!attribute [rw] status
      #   This indicates if payments can be made to the Account Number.
      #   @return [Symbol]
      required :status, Increase::Enum.new(:active, :disabled, :canceled)

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `account_number`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:account_number)

      class InboundACH < BaseModel
        # @!attribute [rw] debit_status
        #   Whether ACH debits are allowed against this Account Number. Note that they will still be declined if this is `allowed` if the Account Number is not active.
        #   @return [Symbol]
        required :debit_status, Increase::Enum.new(:allowed, :blocked)
      end

      class InboundChecks < BaseModel
        # @!attribute [rw] status
        #   How Increase should process checks with this account number printed on them.
        #   @return [Symbol]
        required :status, Increase::Enum.new(:allowed, :check_transfers_only)
      end
    end
  end
end
