# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::InboundRealTimePaymentsTransfers#list
    class InboundRealTimePaymentsTransferListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Filter Inbound Real-Time Payments Transfers to those belonging to the specified
      #   Account.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute account_number_id
      #   Filter Inbound Real-Time Payments Transfers to ones belonging to the specified
      #   Account Number.
      #
      #   @return [String, nil]
      optional :account_number_id, String

      # @!attribute created_at
      #
      #   @return [Increase::Models::InboundRealTimePaymentsTransferListParams::CreatedAt, nil]
      optional :created_at, -> { Increase::Models::InboundRealTimePaymentsTransferListParams::CreatedAt }

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

      # @!method initialize(account_id: nil, account_number_id: nil, created_at: nil, cursor: nil, limit: nil, request_options: {})
      #   @param account_id [String]
      #   @param account_number_id [String]
      #   @param created_at [Increase::Models::InboundRealTimePaymentsTransferListParams::CreatedAt]
      #   @param cursor [String]
      #   @param limit [Integer]
      #   @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]

      class CreatedAt < Increase::Internal::Type::BaseModel
        # @!attribute after
        #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #   timestamp.
        #
        #   @return [Time, nil]
        optional :after, Time

        # @!attribute before
        #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)
        #   timestamp.
        #
        #   @return [Time, nil]
        optional :before, Time

        # @!attribute on_or_after
        #   Return results on or after this
        #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time, nil]
        optional :on_or_after, Time

        # @!attribute on_or_before
        #   Return results on or before this
        #   [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time, nil]
        optional :on_or_before, Time

        # @!method initialize(after: nil, before: nil, on_or_after: nil, on_or_before: nil)
        #   @param after [Time]
        #   @param before [Time]
        #   @param on_or_after [Time]
        #   @param on_or_before [Time]
      end
    end
  end
end
