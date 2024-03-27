# frozen_string_literal: true

module Increase
  module Models
    class BookkeepingEntrySet
      class Entries
        extend Increase::Model

        include Increase::Model::Instance

        # @!attribute [rw] id
        required :id, String

        # @!attribute [rw] account_id
        required :account_id, String

        # @!attribute [rw] amount
        required :amount, Integer
      end

      extend Increase::Model

      include Increase::Model::Instance

      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] date
      required :date, String

      # @!attribute [rw] entries
      required :entries,
               Increase::ArrayOf.new(
                 lambda {
                   Increase::Models::BookkeepingEntrySet::Entries
                 }
               )

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] transaction_id
      required :transaction_id, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:bookkeeping_entry_set])
    end
  end
end
