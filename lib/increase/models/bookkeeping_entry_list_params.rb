# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::BookkeepingEntries#list
    class BookkeepingEntryListParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute [r] account_id
      #   The identifier for the Bookkeeping Account to filter by.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_id

      # @!attribute [r] cursor
      #   Return the page of entries after this one.
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!parse
      #   # @return [String]
      #   attr_writer :cursor

      # @!attribute [r] limit
      #   Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!method initialize(account_id: nil, cursor: nil, limit: nil, request_options: {})
      #   @param account_id [String]
      #   @param cursor [String]
      #   @param limit [Integer]
      #   @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
