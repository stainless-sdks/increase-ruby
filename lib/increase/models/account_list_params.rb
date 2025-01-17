# frozen_string_literal: true

module Increase
  module Models
    class AccountListParams < Increase::BaseModel
      # @!attribute created_at
      #
      #   @return [Increase::Models::AccountListParams::CreatedAt]
      optional :created_at, -> { Increase::Models::AccountListParams::CreatedAt }

      # @!attribute cursor
      #   Return the page of entries after this one.
      #
      #   @return [String]
      optional :cursor, String

      # @!attribute entity_id
      #   Filter Accounts for those belonging to the specified Entity.
      #
      #   @return [String]
      optional :entity_id, String

      # @!attribute idempotency_key
      #   Filter records to the one with the specified `idempotency_key` you chose for that object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String]
      optional :idempotency_key, String

      # @!attribute informational_entity_id
      #   Filter Accounts for those belonging to the specified Entity as informational.
      #
      #   @return [String]
      optional :informational_entity_id, String

      # @!attribute limit
      #   Limit the size of the list that is returned. The default (and maximum) is 100 objects.
      #
      #   @return [Integer]
      optional :limit, Integer

      # @!attribute program_id
      #   Filter Accounts for those in a specific Program.
      #
      #   @return [String]
      optional :program_id, String

      # @!attribute status
      #   Filter Accounts for those with the specified status.
      #
      #   @return [Symbol, Increase::Models::AccountListParams::Status]
      optional :status, enum: -> { Increase::Models::AccountListParams::Status }

      # @!parse
      #   # @param created_at [Increase::Models::AccountListParams::CreatedAt]
      #   #
      #   # @param cursor [String] Return the page of entries after this one.
      #   #
      #   # @param entity_id [String] Filter Accounts for those belonging to the specified Entity.
      #   #
      #   # @param idempotency_key [String] Filter records to the one with the specified `idempotency_key` you chose for
      #   #   that object. This value is unique across Increase and is used to ensure that a
      #   #   request is only processed once. Learn more about
      #   #   [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #
      #   # @param informational_entity_id [String] Filter Accounts for those belonging to the specified Entity as informational.
      #   #
      #   # @param limit [Integer] Limit the size of the list that is returned. The default (and maximum) is 100
      #   #   objects.
      #   #
      #   # @param program_id [String] Filter Accounts for those in a specific Program.
      #   #
      #   # @param status [String] Filter Accounts for those with the specified status.
      #   #
      #   def initialize(
      #     created_at: nil,
      #     cursor: nil,
      #     entity_id: nil,
      #     idempotency_key: nil,
      #     informational_entity_id: nil,
      #     limit: nil,
      #     program_id: nil,
      #     status: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
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

      # Filter Accounts for those with the specified status.
      #
      # @example
      # ```ruby
      # case status
      # in :closed
      #   # ...
      # in :open
      #   # ...
      # end
      # ```
      class Status < Increase::Enum
        # Closed Accounts on which no new activity can occur.
        CLOSED = :closed

        # Open Accounts that are ready to use.
        OPEN = :open

        finalize!
      end
    end
  end
end
