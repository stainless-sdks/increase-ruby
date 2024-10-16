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
      required :name_, String

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

      # Create a new instance of BookkeepingAccount from a Hash of raw data.
      #
      # @overload initialize(id: nil, account_id: nil, compliance_category: nil, entity_id: nil, idempotency_key: nil, name: nil, type: nil)
      # @param id [String] The account identifier.
      # @param account_id [String] The API Account associated with this bookkeeping account.
      # @param compliance_category [String] The compliance category of the account.
      # @param entity_id [String] The Entity associated with this bookkeeping account.
      # @param idempotency_key [String] The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      # @param name [String] The name you choose for the account.
      # @param type [String] A constant representing the object's type. For this resource it will always be
      #   `bookkeeping_account`.
      def initialize(data = {})
        super
      end
    end
  end
end
