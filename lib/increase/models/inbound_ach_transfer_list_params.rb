# frozen_string_literal: true

module Increase
  module Models
    class InboundACHTransferListParams < Increase::BaseModel
      # @!attribute account_id
      #   Filter Inbound ACH Tranfers to ones belonging to the specified Account.
      #
      #   @return [String]
      optional :account_id, String

      # @!attribute account_number_id
      #   Filter Inbound ACH Tranfers to ones belonging to the specified Account Number.
      #
      #   @return [String]
      optional :account_number_id, String

      # @!attribute created_at
      #
      #   @return [Increase::Models::InboundACHTransferListParams::CreatedAt]
      optional :created_at, -> { Increase::Models::InboundACHTransferListParams::CreatedAt }

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

      # @!attribute status
      #   Filter Inbound ACH Transfers to those with the specified status.
      #
      #   @return [Symbol, Increase::Models::InboundACHTransferListParams::Status]
      optional :status, enum: -> { Increase::Models::InboundACHTransferListParams::Status }

      # @!parse
      #   # @param account_id [String] Filter Inbound ACH Tranfers to ones belonging to the specified Account.
      #   #
      #   # @param account_number_id [String] Filter Inbound ACH Tranfers to ones belonging to the specified Account Number.
      #   #
      #   # @param created_at [Increase::Models::InboundACHTransferListParams::CreatedAt]
      #   #
      #   # @param cursor [String] Return the page of entries after this one.
      #   #
      #   # @param limit [Integer] Limit the size of the list that is returned. The default (and maximum) is 100
      #   #   objects.
      #   #
      #   # @param status [String] Filter Inbound ACH Transfers to those with the specified status.
      #   #
      #   def initialize(account_id: nil, account_number_id: nil, created_at: nil, cursor: nil, limit: nil, status: nil, **) = super

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

      # Filter Inbound ACH Transfers to those with the specified status.
      #
      # @example
      #
      # ```ruby
      # case status
      # in :pending
      #   # ...
      # in :declined
      #   # ...
      # in :accepted
      #   # ...
      # in :returned
      #   # ...
      # end
      # ```
      class Status < Increase::Enum
        # The Inbound ACH Transfer is awaiting action, will transition automatically if no action is taken.
        PENDING = :pending

        # The Inbound ACH Transfer has been declined.
        DECLINED = :declined

        # The Inbound ACH Transfer is accepted.
        ACCEPTED = :accepted

        # The Inbound ACH Transfer has been returned.
        RETURNED = :returned

        finalize!
      end
    end
  end
end
