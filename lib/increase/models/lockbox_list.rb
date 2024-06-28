# frozen_string_literal: true

module Increase
  module Models
    class LockboxList < BaseModel
      # @!attribute [rw] data
      #   The contents of the list.
      #   @return [Array<Increase::Models::Lockbox>]
      required :data, Increase::ArrayOf.new(-> { Increase::Models::Lockbox })

      # @!attribute [rw] next_cursor
      #   A pointer to a place in the list.
      #   @return [String]
      required :next_cursor, String
    end
  end
end
