# frozen_string_literal: true

module Increase
  module Models
    class BookkeepingBalanceLookup < BaseModel
      # @!attribute [rw] balance
      #   The Bookkeeping Account's current balance, representing the sum of all Bookkeeping Entries on the Bookkeeping Account.
      #   @return [Integer]
      required :balance, Integer

      # @!attribute [rw] bookkeeping_account_id
      #   The identifier for the account for which the balance was queried.
      #   @return [String]
      required :bookkeeping_account_id, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `bookkeeping_balance_lookup`.
      #   @return [Symbol, Increase::Models::BookkeepingBalanceLookup::Type]
      required :type, enum: -> { Increase::Models::BookkeepingBalanceLookup::Type }

      # A constant representing the object's type. For this resource it will always be `bookkeeping_balance_lookup`.
      class Type < Increase::Enum
        BOOKKEEPING_BALANCE_LOOKUP = :bookkeeping_balance_lookup
      end
    end
  end
end
