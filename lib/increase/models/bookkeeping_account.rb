# frozen_string_literal: true

module Increase
  module Models
    class BookkeepingAccount < BaseModel
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
      #   @return [Symbol]
      required :compliance_category, Increase::Enum.new(:commingled_cash, :customer_balance)

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
      required :name_, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `bookkeeping_account`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:bookkeeping_account)
    end
  end
end
