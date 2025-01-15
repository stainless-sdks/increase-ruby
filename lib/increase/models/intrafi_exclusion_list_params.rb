# frozen_string_literal: true

module Increase
  module Models
    class IntrafiExclusionListParams < Increase::BaseModel
      # @!attribute cursor
      #   Return the page of entries after this one.
      #
      #   @return [String]
      optional :cursor, String

      # @!attribute entity_id
      #   Filter IntraFi Exclusions for those belonging to the specified Entity.
      #
      #   @return [String]
      optional :entity_id, String

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

      # @!parse
      #   # @param cursor [String] Return the page of entries after this one.
      #   #
      #   # @param entity_id [String] Filter IntraFi Exclusions for those belonging to the specified Entity.
      #   #
      #   # @param idempotency_key [String] Filter records to the one with the specified `idempotency_key` you chose for
      #   #   that object. This value is unique across Increase and is used to ensure that a
      #   #   request is only processed once. Learn more about
      #   #   [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #
      #   # @param limit [Integer] Limit the size of the list that is returned. The default (and maximum) is 100
      #   #   objects.
      #   #
      #   def initialize(cursor: nil, entity_id: nil, idempotency_key: nil, limit: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void
    end
  end
end
