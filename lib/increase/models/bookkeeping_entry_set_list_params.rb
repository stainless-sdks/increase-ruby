# frozen_string_literal: true

module Increase
  module Models
    class BookkeepingEntrySetListParams < Increase::BaseModel
      # @!attribute cursor
      #   Return the page of entries after this one.
      #
      #   @return [String]
      optional :cursor, String

      # @!attribute idempotency_key
      #   Filter records to the one with the specified `idempotency_key` you chose for that object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String]
      optional :idempotency_key, String

      # @!attribute limit
      #   Limit the size of the list that is returned. The default (and maximum) is 100 objects.
      #
      #   @return [Integer]
      optional :limit, Integer

      # @!attribute transaction_id
      #   Filter to the Bookkeeping Entry Set that maps to this Transaction.
      #
      #   @return [String]
      optional :transaction_id, String

      # @!parse
      #   # @param cursor [String] Return the page of entries after this one.
      #   #
      #   # @param idempotency_key [String] Filter records to the one with the specified `idempotency_key` you chose for
      #   #   that object. This value is unique across Increase and is used to ensure that a
      #   #   request is only processed once. Learn more about
      #   #   [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #
      #   # @param limit [Integer] Limit the size of the list that is returned. The default (and maximum) is 100
      #   #   objects.
      #   #
      #   # @param transaction_id [String] Filter to the Bookkeeping Entry Set that maps to this Transaction.
      #   #
      #   def initialize(cursor: nil, idempotency_key: nil, limit: nil, transaction_id: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
