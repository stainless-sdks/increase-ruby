# frozen_string_literal: true

module Increase
  module Models
    class AccountNumberListParams < Increase::BaseModel
      # @!attribute account_id
      #   Filter Account Numbers to those belonging to the specified Account.
      #
      #   @return [String]
      optional :account_id, String

      # @!attribute ach_debit_status
      #   The ACH Debit status to retrieve Account Numbers for.
      #
      #   @return [Symbol, Increase::Models::AccountNumberListParams::ACHDebitStatus]
      optional :ach_debit_status, enum: -> { Increase::Models::AccountNumberListParams::ACHDebitStatus }

      # @!attribute created_at
      #
      #   @return [Increase::Models::AccountNumberListParams::CreatedAt]
      optional :created_at, -> { Increase::Models::AccountNumberListParams::CreatedAt }

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

      # @!attribute status
      #   The status to retrieve Account Numbers for.
      #
      #   @return [Symbol, Increase::Models::AccountNumberListParams::Status]
      optional :status, enum: -> { Increase::Models::AccountNumberListParams::Status }

      # @!parse
      #   # @param account_id [String] Filter Account Numbers to those belonging to the specified Account.
      #   #
      #   # @param ach_debit_status [String] The ACH Debit status to retrieve Account Numbers for.
      #   #
      #   # @param created_at [Increase::Models::AccountNumberListParams::CreatedAt]
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
      #   # @param status [String] The status to retrieve Account Numbers for.
      #   #
      #   def initialize(
      #     account_id: nil,
      #     ach_debit_status: nil,
      #     created_at: nil,
      #     cursor: nil,
      #     idempotency_key: nil,
      #     limit: nil,
      #     status: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The ACH Debit status to retrieve Account Numbers for.
      #
      # @example
      # ```ruby
      # case ach_debit_status
      # in :allowed
      #   # ...
      # in :blocked
      #   # ...
      # end
      # ```
      class ACHDebitStatus < Increase::Enum
        # ACH Debits are allowed.
        ALLOWED = :allowed

        # ACH Debits are blocked.
        BLOCKED = :blocked

        finalize!
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

      # The status to retrieve Account Numbers for.
      #
      # @example
      # ```ruby
      # case status
      # in :active
      #   # ...
      # in :disabled
      #   # ...
      # in :canceled
      #   # ...
      # end
      # ```
      class Status < Increase::Enum
        # The account number is active.
        ACTIVE = :active

        # The account number is temporarily disabled.
        DISABLED = :disabled

        # The account number is permanently disabled.
        CANCELED = :canceled

        finalize!
      end
    end
  end
end
