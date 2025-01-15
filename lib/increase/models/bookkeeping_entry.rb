# frozen_string_literal: true

module Increase
  module Models
    # @example
    #
    # ```ruby
    # bookkeeping_entry => {
    #   id: String,
    #   account_id: String,
    #   amount: Integer,
    #   created_at: Time,
    #   entry_set_id: String
    # }
    # ```
    class BookkeepingEntry < Increase::BaseModel
      # @!attribute id
      #   The entry identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   The identifier for the Account the Entry belongs to.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute amount
      #   The Entry amount in the minor unit of its currency. For dollars, for example, this is cents.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute created_at
      #   When the entry set was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute entry_set_id
      #   The identifier for the Account the Entry belongs to.
      #
      #   @return [String]
      required :entry_set_id, String

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be `bookkeeping_entry`.
      #
      #   @return [Symbol, Increase::Models::BookkeepingEntry::Type]
      required :type, enum: -> { Increase::Models::BookkeepingEntry::Type }

      # @!parse
      #   # Entries are T-account entries recording debits and credits. Your compliance
      #   #   setup might require annotating money movements using this API. Learn more in our
      #   #   [guide to Bookkeeping](https://increase.com/documentation/bookkeeping#bookkeeping).
      #   #
      #   # @param id [String] The entry identifier.
      #   #
      #   # @param account_id [String] The identifier for the Account the Entry belongs to.
      #   #
      #   # @param amount [Integer] The Entry amount in the minor unit of its currency. For dollars, for example,
      #   #   this is cents.
      #   #
      #   # @param created_at [String] When the entry set was created.
      #   #
      #   # @param entry_set_id [String] The identifier for the Account the Entry belongs to.
      #   #
      #   # @param type [String] A constant representing the object's type. For this resource it will always be
      #   #   `bookkeeping_entry`.
      #   #
      #   def initialize(id:, account_id:, amount:, created_at:, entry_set_id:, type:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # A constant representing the object's type. For this resource it will always be `bookkeeping_entry`.
      #
      # @example
      #
      # ```ruby
      # case type
      # in :bookkeeping_entry
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        BOOKKEEPING_ENTRY = :bookkeeping_entry

        finalize!
      end
    end
  end
end
