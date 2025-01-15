# frozen_string_literal: true

module Increase
  module Models
    class BookkeepingEntryListParams < Increase::BaseModel
      # @!attribute account_id
      #   The identifier for the Bookkeeping Account to filter by.
      #
      #   @return [String]
      optional :account_id, String

      # @!attribute cursor
      #   Return the page of entries after this one.
      #
      #   @return [String]
      optional :cursor, String

      # @!attribute limit
      #   Limit the size of the list that is returned. The default (and maximum) is 100 objects.
      #
      #   @return [Integer]
      optional :limit, Integer

      # @!parse
      #   # @param account_id [String] The identifier for the Bookkeeping Account to filter by.
      #   #
      #   # @param cursor [String] Return the page of entries after this one.
      #   #
      #   # @param limit [Integer] Limit the size of the list that is returned. The default (and maximum) is 100
      #   #   objects.
      #   #
      #   def initialize(account_id: nil, cursor: nil, limit: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
