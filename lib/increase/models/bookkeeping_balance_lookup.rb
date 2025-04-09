# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::BookkeepingAccounts#balance
    class BookkeepingBalanceLookup < Increase::Internal::Type::BaseModel
      # @!attribute balance
      #   #/components/schemas/bookkeeping_balance_lookup/properties/balance
      #
      #   @return [Integer]
      required :balance, Integer

      # @!attribute bookkeeping_account_id
      #   #/components/schemas/bookkeeping_balance_lookup/properties/bookkeeping_account_id
      #
      #   @return [String]
      required :bookkeeping_account_id, String

      # @!attribute type
      #   #/components/schemas/bookkeeping_balance_lookup/properties/type
      #
      #   @return [Symbol, Increase::Models::BookkeepingBalanceLookup::Type]
      required :type, enum: -> { Increase::Models::BookkeepingBalanceLookup::Type }

      # @!parse
      #   # #/components/schemas/bookkeeping_balance_lookup
      #   #
      #   # @param balance [Integer]
      #   # @param bookkeeping_account_id [String]
      #   # @param type [Symbol, Increase::Models::BookkeepingBalanceLookup::Type]
      #   #
      #   def initialize(balance:, bookkeeping_account_id:, type:, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/bookkeeping_balance_lookup/properties/type
      #
      # @see Increase::Models::BookkeepingBalanceLookup#type
      module Type
        extend Increase::Internal::Type::Enum

        BOOKKEEPING_BALANCE_LOOKUP = :bookkeeping_balance_lookup

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
