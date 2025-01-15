# frozen_string_literal: true

module Increase
  module Models
    class PhysicalCardListParams < Increase::BaseModel
      # @!attribute card_id
      #   Filter Physical Cards to ones belonging to the specified Card.
      #
      #   @return [String]
      optional :card_id, String

      # @!attribute created_at
      #
      #   @return [Increase::Models::PhysicalCardListParams::CreatedAt]
      optional :created_at, -> { Increase::Models::PhysicalCardListParams::CreatedAt }

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

      # @!parse
      #   # @param card_id [String] Filter Physical Cards to ones belonging to the specified Card.
      #   #
      #   # @param created_at [Increase::Models::PhysicalCardListParams::CreatedAt]
      #   #
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
      #   def initialize(card_id: nil, created_at: nil, cursor: nil, idempotency_key: nil, limit: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      #
      # ```ruby
      # created_at => {
      #   after: Time,
      #   before: Time,
      #   on_or_after: Time,
      #   on_or_before: Time
      # }
      # ```
      class CreatedAt < Increase::BaseModel
        # @!attribute after
        #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time]
        optional :after, Time

        # @!attribute before
        #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time]
        optional :before, Time

        # @!attribute on_or_after
        #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time]
        optional :on_or_after, Time

        # @!attribute on_or_before
        #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time]
        optional :on_or_before, Time

        # @!parse
        #   # @param after [String] Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #   #   timestamp.
        #   #
        #   # @param before [String] Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #   #   timestamp.
        #   #
        #   # @param on_or_after [String] Return results on or after this
        #   #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   #
        #   # @param on_or_before [String] Return results on or before this
        #   #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   #
        #   def initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end
    end
  end
end
