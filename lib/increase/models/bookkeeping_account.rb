# frozen_string_literal: true

module Increase
  module Models
    # @example
    #
    # ```ruby
    # bookkeeping_account => {
    #   id: String,
    #   account_id: String,
    #   compliance_category: enum: Increase::Models::BookkeepingAccount::ComplianceCategory,
    #   entity_id: String,
    #   idempotency_key: String,
    #   **_
    # }
    # ```
    class BookkeepingAccount < Increase::BaseModel
      # @!attribute id
      #   The account identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   The API Account associated with this bookkeeping account.
      #
      #   @return [String, nil]
      required :account_id, String

      # @!attribute compliance_category
      #   The compliance category of the account.
      #
      #   @return [Symbol, Increase::Models::BookkeepingAccount::ComplianceCategory, nil]
      required :compliance_category, enum: -> { Increase::Models::BookkeepingAccount::ComplianceCategory }

      # @!attribute entity_id
      #   The Entity associated with this bookkeeping account.
      #
      #   @return [String, nil]
      required :entity_id, String

      # @!attribute idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      required :idempotency_key, String

      # @!attribute name
      #   The name you choose for the account.
      #
      #   @return [String]
      required :name, String

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be `bookkeeping_account`.
      #
      #   @return [Symbol, Increase::Models::BookkeepingAccount::Type]
      required :type, enum: -> { Increase::Models::BookkeepingAccount::Type }

      # @!parse
      #   # Accounts are T-accounts. They can store accounting entries. Your compliance
      #   #   setup might require annotating money movements using this API. Learn more in our
      #   #   [guide to Bookkeeping](https://increase.com/documentation/bookkeeping#bookkeeping).
      #   #
      #   # @param id [String] The account identifier.
      #   #
      #   # @param account_id [String, nil] The API Account associated with this bookkeeping account.
      #   #
      #   # @param compliance_category [String, nil] The compliance category of the account.
      #   #
      #   # @param entity_id [String, nil] The Entity associated with this bookkeeping account.
      #   #
      #   # @param idempotency_key [String, nil] The idempotency key you chose for this object. This value is unique across
      #   #   Increase and is used to ensure that a request is only processed once. Learn more
      #   #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #
      #   # @param name [String] The name you choose for the account.
      #   #
      #   # @param type [String] A constant representing the object's type. For this resource it will always be
      #   #   `bookkeeping_account`.
      #   #
      #   def initialize(id:, account_id:, compliance_category:, entity_id:, idempotency_key:, name:, type:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The compliance category of the account.
      #
      # @example
      #
      # ```ruby
      # case compliance_category
      # in :commingled_cash
      #   # ...
      # in :customer_balance
      #   # ...
      # end
      # ```
      class ComplianceCategory < Increase::Enum
        # A cash in an commingled Increase Account.
        COMMINGLED_CASH = :commingled_cash

        # A customer balance.
        CUSTOMER_BALANCE = :customer_balance

        finalize!
      end

      # A constant representing the object's type. For this resource it will always be `bookkeeping_account`.
      #
      # @example
      #
      # ```ruby
      # case type
      # in :bookkeeping_account
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        BOOKKEEPING_ACCOUNT = :bookkeeping_account

        finalize!
      end
    end
  end
end
