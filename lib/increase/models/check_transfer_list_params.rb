# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::CheckTransfers#list
    class CheckTransferListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Filter Check Transfers to those that originated from the specified Account.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute created_at
      #
      #   @return [Increase::Models::CheckTransferListParams::CreatedAt, nil]
      optional :created_at, -> { Increase::Models::CheckTransferListParams::CreatedAt }

      # @!attribute cursor
      #   Return the page of entries after this one.
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute idempotency_key
      #   Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!attribute limit
      #   Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute status
      #
      #   @return [Increase::Models::CheckTransferListParams::Status, nil]
      optional :status, -> { Increase::Models::CheckTransferListParams::Status }

      # @!method initialize(account_id: nil, created_at: nil, cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      #   @param account_id [String]
      #   @param created_at [Increase::Models::CheckTransferListParams::CreatedAt]
      #   @param cursor [String]
      #   @param idempotency_key [String]
      #   @param limit [Integer]
      #   @param status [Increase::Models::CheckTransferListParams::Status]
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

      class Status < Increase::Internal::Type::BaseModel
        # @!attribute in_
        #   Filter Check Transfers to those that have the specified status. For GET
        #   requests, this should be encoded as a comma-delimited string, such as
        #   `?in=one,two,three`.
        #
        #   @return [Array<Symbol, Increase::Models::CheckTransferListParams::Status::In>, nil]
        optional :in_,
                 -> { Increase::Internal::Type::ArrayOf[enum: Increase::Models::CheckTransferListParams::Status::In] },
                 api_name: :in

        # @!method initialize(in_: nil)
        #   @param in_ [Array<Symbol, Increase::Models::CheckTransferListParams::Status::In>]

        module In
          extend Increase::Internal::Type::Enum

          # The transfer is awaiting approval.
          PENDING_APPROVAL = :pending_approval

          # The transfer has been canceled.
          CANCELED = :canceled

          # The transfer is pending submission.
          PENDING_SUBMISSION = :pending_submission

          # The transfer requires attention from an Increase operator.
          REQUIRES_ATTENTION = :requires_attention

          # The transfer has been rejected.
          REJECTED = :rejected

          # The check is queued for mailing.
          PENDING_MAILING = :pending_mailing

          # The check has been mailed.
          MAILED = :mailed

          # The check has been deposited.
          DEPOSITED = :deposited

          # A stop-payment was requested for this check.
          STOPPED = :stopped

          # The transfer has been returned.
          RETURNED = :returned

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
