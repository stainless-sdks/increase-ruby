# frozen_string_literal: true

module Increase
  module Models
    # @example
    # ```ruby
    # balance_lookup => {
    #   account_id: String,
    #   available_balance: Integer,
    #   current_balance: Integer,
    #   type: Increase::Models::BalanceLookup::Type
    # }
    # ```
    class BalanceLookup < Increase::BaseModel
      # @!attribute account_id
      #   The identifier for the account for which the balance was queried.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute available_balance
      #   The Account's available balance, representing the current balance less any open
      #     Pending Transactions on the Account.
      #
      #   @return [Integer]
      required :available_balance, Integer

      # @!attribute current_balance
      #   The Account's current balance, representing the sum of all posted Transactions
      #     on the Account.
      #
      #   @return [Integer]
      required :current_balance, Integer

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be
      #     `balance_lookup`.
      #
      #   @return [Symbol, Increase::Models::BalanceLookup::Type]
      required :type, enum: -> { Increase::Models::BalanceLookup::Type }

      # @!parse
      #   # Represents a request to lookup the balance of an Account at a given point in
      #   #   time.
      #   #
      #   # @param account_id [String]
      #   # @param available_balance [Integer]
      #   # @param current_balance [Integer]
      #   # @param type [Symbol, Increase::Models::BalanceLookup::Type]
      #   #
      #   def initialize(account_id:, available_balance:, current_balance:, type:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @abstract
      #
      # A constant representing the object's type. For this resource it will always be
      #   `balance_lookup`.
      #
      # @example
      # ```ruby
      # case type
      # in :balance_lookup
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        BALANCE_LOOKUP = :balance_lookup

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
