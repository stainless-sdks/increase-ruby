# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::AccountNumbers#list
    class AccountNumberListParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Filter Account Numbers to those belonging to the specified Account.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute ach_debit_status
      #
      #   @return [Increase::Models::AccountNumberListParams::ACHDebitStatus, nil]
      optional :ach_debit_status, -> { Increase::Models::AccountNumberListParams::ACHDebitStatus }

      # @!attribute created_at
      #
      #   @return [Increase::Models::AccountNumberListParams::CreatedAt, nil]
      optional :created_at, -> { Increase::Models::AccountNumberListParams::CreatedAt }

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
      #   @return [Increase::Models::AccountNumberListParams::Status, nil]
      optional :status, -> { Increase::Models::AccountNumberListParams::Status }

      # @!method initialize(account_id: nil, ach_debit_status: nil, created_at: nil, cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      #   @param account_id [String]
      #   @param ach_debit_status [Increase::Models::AccountNumberListParams::ACHDebitStatus]
      #   @param created_at [Increase::Models::AccountNumberListParams::CreatedAt]
      #   @param cursor [String]
      #   @param idempotency_key [String]
      #   @param limit [Integer]
      #   @param status [Increase::Models::AccountNumberListParams::Status]
      #   @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]

      class ACHDebitStatus < Increase::Internal::Type::BaseModel
        # @!attribute in_
        #   The ACH Debit status to retrieve Account Numbers for. For GET requests, this
        #   should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #
        #   @return [Array<Symbol, Increase::Models::AccountNumberListParams::ACHDebitStatus::In>, nil]
        optional :in_,
                 -> { Increase::Internal::Type::ArrayOf[enum: Increase::Models::AccountNumberListParams::ACHDebitStatus::In] },
                 api_name: :in

        # @!method initialize(in_: nil)
        #   @param in_ [Array<Symbol, Increase::Models::AccountNumberListParams::ACHDebitStatus::In>]

        module In
          extend Increase::Internal::Type::Enum

          # ACH Debits are allowed.
          ALLOWED = :allowed

          # ACH Debits are blocked.
          BLOCKED = :blocked

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

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
        #   The status to retrieve Account Numbers for. For GET requests, this should be
        #   encoded as a comma-delimited string, such as `?in=one,two,three`.
        #
        #   @return [Array<Symbol, Increase::Models::AccountNumberListParams::Status::In>, nil]
        optional :in_,
                 -> { Increase::Internal::Type::ArrayOf[enum: Increase::Models::AccountNumberListParams::Status::In] },
                 api_name: :in

        # @!method initialize(in_: nil)
        #   @param in_ [Array<Symbol, Increase::Models::AccountNumberListParams::Status::In>]

        module In
          extend Increase::Internal::Type::Enum

          # The account number is active.
          ACTIVE = :active

          # The account number is temporarily disabled.
          DISABLED = :disabled

          # The account number is permanently disabled.
          CANCELED = :canceled

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
