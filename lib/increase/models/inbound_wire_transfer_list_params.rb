# frozen_string_literal: true

module Increase
  module Models
    class InboundWireTransferListParams < Increase::BaseModel
      # @!parse
      #   extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # @!attribute [r] account_id
      #   Filter Inbound Wire Tranfers to ones belonging to the specified Account.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_id

      # @!attribute [r] account_number_id
      #   Filter Inbound Wire Tranfers to ones belonging to the specified Account Number.
      #
      #   @return [String, nil]
      optional :account_number_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_number_id

      # @!attribute [r] created_at
      #
      #   @return [Increase::Models::InboundWireTransferListParams::CreatedAt, nil]
      optional :created_at, -> { Increase::Models::InboundWireTransferListParams::CreatedAt }

      # @!parse
      #   # @return [Increase::Models::InboundWireTransferListParams::CreatedAt]
      #   attr_writer :created_at

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
      #     objects.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute [r] status
      #   Filter Inbound Wire Transfers to those with the specified status.
      #
      #   @return [Symbol, Increase::Models::InboundWireTransferListParams::Status, nil]
      optional :status, enum: -> { Increase::Models::InboundWireTransferListParams::Status }

      # @!parse
      #   # @return [Symbol, Increase::Models::InboundWireTransferListParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param account_id [String]
      #   # @param account_number_id [String]
      #   # @param created_at [Increase::Models::InboundWireTransferListParams::CreatedAt]
      #   # @param cursor [String]
      #   # @param limit [Integer]
      #   # @param status [Symbol, Increase::Models::InboundWireTransferListParams::Status]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     account_id: nil,
      #     account_number_id: nil,
      #     created_at: nil,
      #     cursor: nil,
      #     limit: nil,
      #     status: nil,
      #     request_options: {},
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
        # @!attribute [r] after
        #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #     timestamp.
        #
        #   @return [Time, nil]
        optional :after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :after

        # @!attribute [r] before
        #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #     timestamp.
        #
        #   @return [Time, nil]
        optional :before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :before

        # @!attribute [r] on_or_after
        #   Return results on or after this
        #     [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time, nil]
        optional :on_or_after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :on_or_after

        # @!attribute [r] on_or_before
        #   Return results on or before this
        #     [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time, nil]
        optional :on_or_before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :on_or_before

        # @!parse
        #   # @param after [Time]
        #   # @param before [Time]
        #   # @param on_or_after [Time]
        #   # @param on_or_before [Time]
        #   #
        #   def initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end

      # @abstract
      #
      # Filter Inbound Wire Transfers to those with the specified status.
      #
      # @example
      # ```ruby
      # case status
      # in :pending
      #   # ...
      # in :accepted
      #   # ...
      # in :declined
      #   # ...
      # in :reversed
      #   # ...
      # end
      # ```
      class Status < Increase::Enum
        # The Inbound Wire Transfer is awaiting action, will transition automatically if no action is taken.
        PENDING = :pending

        # The Inbound Wire Transfer is accepted.
        ACCEPTED = :accepted

        # The Inbound Wire Transfer was declined.
        DECLINED = :declined

        # The Inbound Wire Transfer was reversed.
        REVERSED = :reversed

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
