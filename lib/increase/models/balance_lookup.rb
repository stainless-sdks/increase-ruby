# frozen_string_literal: true

module Increase
  module Models
    class BalanceLookup < BaseModel
      # @!attribute [rw] account_id
      #   The identifier for the account for which the balance was queried.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] available_balance
      #   The Account's available balance, representing the current balance less any open Pending Transactions on the Account.
      #   @return [Integer]
      required :available_balance, Integer

      # @!attribute [rw] current_balance
      #   The Account's current balance, representing the sum of all posted Transactions on the Account.
      #   @return [Integer]
      required :current_balance, Integer

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `balance_lookup`.
      #   @return [Symbol, Increase::Models::BalanceLookup::Type]
      required :type, enum: -> { Increase::Models::BalanceLookup::Type }

      # A constant representing the object's type. For this resource it will always be `balance_lookup`.
      class Type < Increase::Enum
        BALANCE_LOOKUP = :balance_lookup
      end

      # @!parse
      #   # Create a new instance of BalanceLookup from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :account_id The identifier for the account for which the balance was queried.
      #   #   @option data [Integer] :available_balance The Account's available balance, representing the current balance less any open
      #   #     Pending Transactions on the Account.
      #   #   @option data [Integer] :current_balance The Account's current balance, representing the sum of all posted Transactions
      #   #     on the Account.
      #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
      #   #     `balance_lookup`.
      #   def initialize(data = {}) = super
    end
  end
end
