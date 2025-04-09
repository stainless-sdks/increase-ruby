# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Accounts#balance
    class BalanceLookup < Increase::Internal::Type::BaseModel
      # @!attribute account_id
      #   #/components/schemas/balance_lookup/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute available_balance
      #   #/components/schemas/balance_lookup/properties/available_balance
      #
      #   @return [Integer]
      required :available_balance, Integer

      # @!attribute current_balance
      #   #/components/schemas/balance_lookup/properties/current_balance
      #
      #   @return [Integer]
      required :current_balance, Integer

      # @!attribute type
      #   #/components/schemas/balance_lookup/properties/type
      #
      #   @return [Symbol, Increase::Models::BalanceLookup::Type]
      required :type, enum: -> { Increase::Models::BalanceLookup::Type }

      # @!parse
      #   # #/components/schemas/balance_lookup
      #   #
      #   # @param account_id [String]
      #   # @param available_balance [Integer]
      #   # @param current_balance [Integer]
      #   # @param type [Symbol, Increase::Models::BalanceLookup::Type]
      #   #
      #   def initialize(account_id:, available_balance:, current_balance:, type:, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/balance_lookup/properties/type
      #
      # @see Increase::Models::BalanceLookup#type
      module Type
        extend Increase::Internal::Type::Enum

        BALANCE_LOOKUP = :balance_lookup

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
