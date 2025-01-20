# frozen_string_literal: true

module Increase
  module Models
    class PendingTransactionListParams < Increase::BaseModel
      # @!attribute [r] account_id
      #   Filter pending transactions to those belonging to the specified Account.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_id

      # @!attribute [r] category
      #
      #   @return [Increase::Models::PendingTransactionListParams::Category, nil]
      optional :category, -> { Increase::Models::PendingTransactionListParams::Category }

      # @!parse
      #   # @return [Increase::Models::PendingTransactionListParams::Category]
      #   attr_writer :category

      # @!attribute [r] created_at
      #
      #   @return [Increase::Models::PendingTransactionListParams::CreatedAt, nil]
      optional :created_at, -> { Increase::Models::PendingTransactionListParams::CreatedAt }

      # @!parse
      #   # @return [Increase::Models::PendingTransactionListParams::CreatedAt]
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
      #   Limit the size of the list that is returned. The default (and maximum) is 100 objects.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute [r] route_id
      #   Filter pending transactions to those belonging to the specified Route.
      #
      #   @return [String, nil]
      optional :route_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :route_id

      # @!attribute [r] status
      #
      #   @return [Increase::Models::PendingTransactionListParams::Status, nil]
      optional :status, -> { Increase::Models::PendingTransactionListParams::Status }

      # @!parse
      #   # @return [Increase::Models::PendingTransactionListParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param account_id [String] Filter pending transactions to those belonging to the specified Account.
      #   #
      #   # @param category [Increase::Models::PendingTransactionListParams::Category]
      #   #
      #   # @param created_at [Increase::Models::PendingTransactionListParams::CreatedAt]
      #   #
      #   # @param cursor [String] Return the page of entries after this one.
      #   #
      #   # @param limit [Integer] Limit the size of the list that is returned. The default (and maximum) is 100
      #   #   objects.
      #   #
      #   # @param route_id [String] Filter pending transactions to those belonging to the specified Route.
      #   #
      #   # @param status [Increase::Models::PendingTransactionListParams::Status]
      #   #
      #   def initialize(account_id: nil, category: nil, created_at: nil, cursor: nil, limit: nil, route_id: nil, status: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      # ```ruby
      # category => {
      #   in_: -> { Increase::ArrayOf[enum: Increase::Models::PendingTransactionListParams::Category::In] === _1 }
      # }
      # ```
      class Category < Increase::BaseModel
        # @!attribute [r] in_
        #   Return results whose value is in the provided list. For GET requests, this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #
        #   @return [Array<Symbol, Increase::Models::PendingTransactionListParams::Category::In>]
        optional :in_,
                 -> { Increase::ArrayOf[enum: Increase::Models::PendingTransactionListParams::Category::In] },
                 api_name: :in

        # @!parse
        #   # @return [Array<Symbol, Increase::Models::PendingTransactionListParams::Category::In>]
        #   attr_writer :in_

        # @!parse
        #   # @param in_ [Array<String>] Return results whose value is in the provided list. For GET requests, this
        #   #   should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #   #
        #   def initialize(in_: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # case in
        # in :account_transfer_instruction
        #   # ...
        # in :ach_transfer_instruction
        #   # ...
        # in :card_authorization
        #   # ...
        # in :check_deposit_instruction
        #   # ...
        # in :check_transfer_instruction
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class In < Increase::Enum
          # Account Transfer Instruction: details will be under the `account_transfer_instruction` object.
          ACCOUNT_TRANSFER_INSTRUCTION = :account_transfer_instruction

          # ACH Transfer Instruction: details will be under the `ach_transfer_instruction` object.
          ACH_TRANSFER_INSTRUCTION = :ach_transfer_instruction

          # Card Authorization: details will be under the `card_authorization` object.
          CARD_AUTHORIZATION = :card_authorization

          # Check Deposit Instruction: details will be under the `check_deposit_instruction` object.
          CHECK_DEPOSIT_INSTRUCTION = :check_deposit_instruction

          # Check Transfer Instruction: details will be under the `check_transfer_instruction` object.
          CHECK_TRANSFER_INSTRUCTION = :check_transfer_instruction

          # Inbound Funds Hold: details will be under the `inbound_funds_hold` object.
          INBOUND_FUNDS_HOLD = :inbound_funds_hold

          # Real-Time Payments Transfer Instruction: details will be under the `real_time_payments_transfer_instruction` object.
          REAL_TIME_PAYMENTS_TRANSFER_INSTRUCTION = :real_time_payments_transfer_instruction

          # Wire Transfer Instruction: details will be under the `wire_transfer_instruction` object.
          WIRE_TRANSFER_INSTRUCTION = :wire_transfer_instruction

          # Inbound Wire Transfer Reversal: details will be under the `inbound_wire_transfer_reversal` object.
          INBOUND_WIRE_TRANSFER_REVERSAL = :inbound_wire_transfer_reversal

          # The Pending Transaction was made for an undocumented or deprecated reason.
          OTHER = :other

          finalize!
        end
      end

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
        #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time, nil]
        optional :after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :after

        # @!attribute [r] before
        #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time, nil]
        optional :before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :before

        # @!attribute [r] on_or_after
        #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time, nil]
        optional :on_or_after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :on_or_after

        # @!attribute [r] on_or_before
        #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #
        #   @return [Time, nil]
        optional :on_or_before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :on_or_before

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

      # @example
      # ```ruby
      # status => {
      #   in_: -> { Increase::ArrayOf[enum: Increase::Models::PendingTransactionListParams::Status::In] === _1 }
      # }
      # ```
      class Status < Increase::BaseModel
        # @!attribute [r] in_
        #   Filter Pending Transactions for those with the specified status. By default only Pending Transactions in with status `pending` will be returned. For GET requests, this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #
        #   @return [Array<Symbol, Increase::Models::PendingTransactionListParams::Status::In>]
        optional :in_,
                 -> { Increase::ArrayOf[enum: Increase::Models::PendingTransactionListParams::Status::In] },
                 api_name: :in

        # @!parse
        #   # @return [Array<Symbol, Increase::Models::PendingTransactionListParams::Status::In>]
        #   attr_writer :in_

        # @!parse
        #   # @param in_ [Array<String>] Filter Pending Transactions for those with the specified status. By default only
        #   #   Pending Transactions in with status `pending` will be returned. For GET
        #   #   requests, this should be encoded as a comma-delimited string, such as
        #   #   `?in=one,two,three`.
        #   #
        #   def initialize(in_: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # case in
        # in :pending
        #   # ...
        # in :complete
        #   # ...
        # end
        # ```
        class In < Increase::Enum
          # The Pending Transaction is still awaiting confirmation.
          PENDING = :pending

          # The Pending Transaction is confirmed. An associated Transaction exists for this object. The Pending Transaction will no longer count against your balance and can generally be hidden from UIs, etc.
          COMPLETE = :complete

          finalize!
        end
      end
    end
  end
end
