# frozen_string_literal: true

module Increase
  module Models
    class DeclinedTransactionListParams < Increase::BaseModel
      # @!attribute account_id
      #   Filter Declined Transactions to ones belonging to the specified Account.
      #
      #   @return [String]
      optional :account_id, String

      # @!attribute category
      #
      #   @return [Increase::Models::DeclinedTransactionListParams::Category]
      optional :category, -> { Increase::Models::DeclinedTransactionListParams::Category }

      # @!attribute created_at
      #
      #   @return [Increase::Models::DeclinedTransactionListParams::CreatedAt]
      optional :created_at, -> { Increase::Models::DeclinedTransactionListParams::CreatedAt }

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

      # @!attribute route_id
      #   Filter Declined Transactions to those belonging to the specified route.
      #
      #   @return [String]
      optional :route_id, String

      # @!parse
      #   # @param account_id [String] Filter Declined Transactions to ones belonging to the specified Account.
      #   #
      #   # @param category [Increase::Models::DeclinedTransactionListParams::Category]
      #   #
      #   # @param created_at [Increase::Models::DeclinedTransactionListParams::CreatedAt]
      #   #
      #   # @param cursor [String] Return the page of entries after this one.
      #   #
      #   # @param limit [Integer] Limit the size of the list that is returned. The default (and maximum) is 100
      #   #   objects.
      #   #
      #   # @param route_id [String] Filter Declined Transactions to those belonging to the specified route.
      #   #
      #   def initialize(account_id: nil, category: nil, created_at: nil, cursor: nil, limit: nil, route_id: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      #
      # ```ruby
      # category => {
      #   in_: -> { Increase::ArrayOf[enum: Increase::Models::DeclinedTransactionListParams::Category::In] === _1 }
      # }
      # ```
      class Category < Increase::BaseModel
        # @!attribute in_
        #   Return results whose value is in the provided list. For GET requests, this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #
        #   @return [Array<Symbol, Increase::Models::DeclinedTransactionListParams::Category::In>]
        optional :in_,
                 -> {
                   Increase::ArrayOf[enum: Increase::Models::DeclinedTransactionListParams::Category::In]
                 },
                 api_name: :in

        # @!parse
        #   # @param in_ [Array<String>] Return results whose value is in the provided list. For GET requests, this
        #   #   should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #   #
        #   def initialize(in_: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case in
        # in :ach_decline
        #   # ...
        # in :card_decline
        #   # ...
        # in :check_decline
        #   # ...
        # in :inbound_real_time_payments_transfer_decline
        #   # ...
        # in :wire_decline
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class In < Increase::Enum
          # ACH Decline: details will be under the `ach_decline` object.
          ACH_DECLINE = :ach_decline

          # Card Decline: details will be under the `card_decline` object.
          CARD_DECLINE = :card_decline

          # Check Decline: details will be under the `check_decline` object.
          CHECK_DECLINE = :check_decline

          # Inbound Real-Time Payments Transfer Decline: details will be under the `inbound_real_time_payments_transfer_decline` object.
          INBOUND_REAL_TIME_PAYMENTS_TRANSFER_DECLINE = :inbound_real_time_payments_transfer_decline

          # Wire Decline: details will be under the `wire_decline` object.
          WIRE_DECLINE = :wire_decline

          # Check Deposit Rejection: details will be under the `check_deposit_rejection` object.
          CHECK_DEPOSIT_REJECTION = :check_deposit_rejection

          # The Declined Transaction was made for an undocumented or deprecated reason.
          OTHER = :other

          finalize!
        end
      end

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
