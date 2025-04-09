# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::BookkeepingEntrySets#create
    class BookkeepingEntrySetCreateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute entries
      #   #/components/schemas/create_a_bookkeeping_entry_set_parameters/properties/entries
      #
      #   @return [Array<Increase::Models::BookkeepingEntrySetCreateParams::Entry>]
      required :entries,
               -> { Increase::Internal::Type::ArrayOf[Increase::Models::BookkeepingEntrySetCreateParams::Entry] }

      # @!attribute [r] date
      #   #/components/schemas/create_a_bookkeeping_entry_set_parameters/properties/date
      #
      #   @return [Time, nil]
      optional :date, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :date

      # @!attribute [r] transaction_id
      #   #/components/schemas/create_a_bookkeeping_entry_set_parameters/properties/transaction_id
      #
      #   @return [String, nil]
      optional :transaction_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :transaction_id

      # @!parse
      #   # @param entries [Array<Increase::Models::BookkeepingEntrySetCreateParams::Entry>]
      #   # @param date [Time]
      #   # @param transaction_id [String]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(entries:, date: nil, transaction_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class Entry < Increase::Internal::Type::BaseModel
        # @!attribute account_id
        #   #/components/schemas/create_a_bookkeeping_entry_set_parameters/properties/entries/items/properties/account_id
        #
        #   @return [String]
        required :account_id, String

        # @!attribute amount
        #   #/components/schemas/create_a_bookkeeping_entry_set_parameters/properties/entries/items/properties/amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!parse
        #   # #/components/schemas/create_a_bookkeeping_entry_set_parameters/properties/entries/items
        #   #
        #   # @param account_id [String]
        #   # @param amount [Integer]
        #   #
        #   def initialize(account_id:, amount:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end
    end
  end
end
