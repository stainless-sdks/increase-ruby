# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::BookkeepingEntries#retrieve
    class BookkeepingEntry < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/bookkeeping_entry/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   #/components/schemas/bookkeeping_entry/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute amount
      #   #/components/schemas/bookkeeping_entry/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute created_at
      #   #/components/schemas/bookkeeping_entry/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute entry_set_id
      #   #/components/schemas/bookkeeping_entry/properties/entry_set_id
      #
      #   @return [String]
      required :entry_set_id, String

      # @!attribute type
      #   #/components/schemas/bookkeeping_entry/properties/type
      #
      #   @return [Symbol, Increase::Models::BookkeepingEntry::Type]
      required :type, enum: -> { Increase::Models::BookkeepingEntry::Type }

      # @!parse
      #   # #/components/schemas/bookkeeping_entry
      #   #
      #   # @param id [String]
      #   # @param account_id [String]
      #   # @param amount [Integer]
      #   # @param created_at [Time]
      #   # @param entry_set_id [String]
      #   # @param type [Symbol, Increase::Models::BookkeepingEntry::Type]
      #   #
      #   def initialize(id:, account_id:, amount:, created_at:, entry_set_id:, type:, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/bookkeeping_entry/properties/type
      #
      # @see Increase::Models::BookkeepingEntry#type
      module Type
        extend Increase::Internal::Type::Enum

        BOOKKEEPING_ENTRY = :bookkeeping_entry

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
