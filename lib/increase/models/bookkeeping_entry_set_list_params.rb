# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::BookkeepingEntrySets#list
    class BookkeepingEntrySetListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute cursor
      #   Return the page of entries after this one.
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute idempotency_key
      #   Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!attribute limit
      #   Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute transaction_id
      #   Filter to the Bookkeeping Entry Set that maps to this Transaction.
      #
      #   @return [String, nil]
      optional :transaction_id, String

      # @!method initialize(cursor: nil, idempotency_key: nil, limit: nil, transaction_id: nil, request_options: {})
      #   @param cursor [String]
      #   @param idempotency_key [String]
      #   @param limit [Integer]
      #   @param transaction_id [String]
      #   @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
