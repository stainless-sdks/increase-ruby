# frozen_string_literal: true

module Increase
  module Models
    class BookkeepingEntrySetCreateParams < Increase::BaseModel
      # @!attribute entries
      #   The bookkeeping entries.
      #
      #   @return [Array<Increase::Models::BookkeepingEntrySetCreateParams::Entry>]
      required :entries, -> { Increase::ArrayOf[Increase::Models::BookkeepingEntrySetCreateParams::Entry] }

      # @!attribute date
      #   The date of the transaction. Optional if `transaction_id` is provided, in which case we use the `date` of that transaction. Required otherwise.
      #
      #   @return [Time]
      optional :date, Time

      # @!attribute transaction_id
      #   The identifier of the Transaction related to this entry set, if any.
      #
      #   @return [String]
      optional :transaction_id, String

      # @!parse
      #   # @param entries [Array<Increase::Models::BookkeepingEntrySetCreateParams::Entry>] The bookkeeping entries.
      #   #
      #   # @param date [String] The date of the transaction. Optional if `transaction_id` is provided, in which
      #   #   case we use the `date` of that transaction. Required otherwise.
      #   #
      #   # @param transaction_id [String] The identifier of the Transaction related to this entry set, if any.
      #   #
      #   def initialize(entries:, date: nil, transaction_id: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      # ```ruby
      # entry => {
      #   account_id: String,
      #   amount: Integer
      # }
      # ```
      class Entry < Increase::BaseModel
        # @!attribute account_id
        #   The identifier for the Bookkeeping Account impacted by this entry.
        #
        #   @return [String]
        required :account_id, String

        # @!attribute amount
        #   The entry amount in the minor unit of the account currency. For dollars, for example, this is cents. Debit entries have positive amounts; credit entries have negative amounts.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!parse
        #   # @param account_id [String] The identifier for the Bookkeeping Account impacted by this entry.
        #   #
        #   # @param amount [Integer] The entry amount in the minor unit of the account currency. For dollars, for
        #   #   example, this is cents. Debit entries have positive amounts; credit entries have
        #   #   negative amounts.
        #   #
        #   def initialize(account_id:, amount:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
