# frozen_string_literal: true

module Increase
  module Models
    class BookkeepingAccount < Increase::BaseModel
      # @!attribute [rw] id
      #   The account identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The API Account associated with this bookkeeping account.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] compliance_category
      #   The compliance category of the account.
      #   @return [Symbol, Increase::Models::BookkeepingAccount::ComplianceCategory]
      required :compliance_category, enum: -> { Increase::Models::BookkeepingAccount::ComplianceCategory }

      # @!attribute [rw] entity_id
      #   The Entity associated with this bookkeeping account.
      #   @return [String]
      required :entity_id, String

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] name_
      #   The name you choose for the account.
      #   @return [String]
      required :name_, String, api_name: :name

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `bookkeeping_account`.
      #   @return [Symbol, Increase::Models::BookkeepingAccount::Type]
      required :type, enum: -> { Increase::Models::BookkeepingAccount::Type }

      # The compliance category of the account.
      class ComplianceCategory < Increase::Enum
        # A cash in an commingled Increase Account.
        COMMINGLED_CASH = :commingled_cash

        # A customer balance.
        CUSTOMER_BALANCE = :customer_balance
      end

      # A constant representing the object's type. For this resource it will always be `bookkeeping_account`.
      class Type < Increase::Enum
        BOOKKEEPING_ACCOUNT = :bookkeeping_account
      end

      # @!parse
      #   # Create a new instance of BookkeepingAccount from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id The account identifier.
      #   #   @option data [String] :account_id The API Account associated with this bookkeeping account.
      #   #   @option data [String] :compliance_category The compliance category of the account.
      #   #   @option data [String] :entity_id The Entity associated with this bookkeeping account.
      #   #   @option data [String] :idempotency_key The idempotency key you chose for this object. This value is unique across
      #   #     Increase and is used to ensure that a request is only processed once. Learn more
      #   #     about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #   @option data [String] :name The name you choose for the account.
      #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
      #   #     `bookkeeping_account`.
      #   def initialize(data = {}) = super
    end
  end
end
