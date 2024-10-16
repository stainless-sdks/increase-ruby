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

      # Create a new instance of BookkeepingBalanceLookup from a Hash of raw data.
      #
      # @overload initialize(balance: nil, bookkeeping_account_id: nil, type: nil)
      # @param balance [Integer] The Bookkeeping Account's current balance, representing the sum of all
      #   Bookkeeping Entries on the Bookkeeping Account.
      # @param bookkeeping_account_id [String] The identifier for the account for which the balance was queried.
      # @param type [String] A constant representing the object's type. For this resource it will always be
      #   `bookkeeping_balance_lookup`.
      def initialize(data = {})
        super
      end
    end
  end
end
