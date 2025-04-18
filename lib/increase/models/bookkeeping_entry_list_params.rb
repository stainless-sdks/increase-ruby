# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::BookkeepingEntries#list
    class BookkeepingEntryListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The identifier for the Bookkeeping Account to filter by.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute cursor
      #   Return the page of entries after this one.
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute limit
      #   Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!method initialize(account_id: nil, cursor: nil, limit: nil, request_options: {})
      #   @param account_id [String]
      #   @param cursor [String]
      #   @param limit [Integer]
      #   @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
