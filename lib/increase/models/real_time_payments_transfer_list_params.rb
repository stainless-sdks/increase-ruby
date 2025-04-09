# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::RealTimePaymentsTransfers#list
    class RealTimePaymentsTransferListParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute [r] account_id
      #   #/paths//real_time_payments_transfers/get/parameters/2/schema
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_id

      # @!attribute [r] created_at
      #
      #   @return [Increase::Models::RealTimePaymentsTransferListParams::CreatedAt, nil]
      optional :created_at, -> { Increase::Models::RealTimePaymentsTransferListParams::CreatedAt }

      # @!parse
      #   # @return [Increase::Models::RealTimePaymentsTransferListParams::CreatedAt]
      #   attr_writer :created_at

      # @!attribute [r] cursor
      #   #/paths//real_time_payments_transfers/get/parameters/0/schema
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!parse
      #   # @return [String]
      #   attr_writer :cursor

      # @!attribute [r] external_account_id
      #   #/paths//real_time_payments_transfers/get/parameters/3/schema
      #
      #   @return [String, nil]
      optional :external_account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :external_account_id

      # @!attribute [r] idempotency_key
      #   #/paths//real_time_payments_transfers/get/parameters/4/schema
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!parse
      #   # @return [String]
      #   attr_writer :idempotency_key

      # @!attribute [r] limit
      #   #/paths//real_time_payments_transfers/get/parameters/1/schema
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute [r] status
      #
      #   @return [Increase::Models::RealTimePaymentsTransferListParams::Status, nil]
      optional :status, -> { Increase::Models::RealTimePaymentsTransferListParams::Status }

      # @!parse
      #   # @return [Increase::Models::RealTimePaymentsTransferListParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param account_id [String]
      #   # @param created_at [Increase::Models::RealTimePaymentsTransferListParams::CreatedAt]
      #   # @param cursor [String]
      #   # @param external_account_id [String]
      #   # @param idempotency_key [String]
      #   # @param limit [Integer]
      #   # @param status [Increase::Models::RealTimePaymentsTransferListParams::Status]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     account_id: nil,
      #     created_at: nil,
      #     cursor: nil,
      #     external_account_id: nil,
      #     idempotency_key: nil,
      #     limit: nil,
      #     status: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class CreatedAt < Increase::Internal::Type::BaseModel
        # @!attribute [r] after
        #   #/paths//real_time_payments_transfers/get/parameters/6/schema
        #
        #   @return [Time, nil]
        optional :after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :after

        # @!attribute [r] before
        #   #/paths//real_time_payments_transfers/get/parameters/7/schema
        #
        #   @return [Time, nil]
        optional :before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :before

        # @!attribute [r] on_or_after
        #   #/paths//real_time_payments_transfers/get/parameters/8/schema
        #
        #   @return [Time, nil]
        optional :on_or_after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :on_or_after

        # @!attribute [r] on_or_before
        #   #/paths//real_time_payments_transfers/get/parameters/9/schema
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

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      class Status < Increase::Internal::Type::BaseModel
        # @!attribute [r] in_
        #   #/paths//real_time_payments_transfers/get/parameters/5/schema
        #
        #   @return [Array<Symbol, Increase::Models::RealTimePaymentsTransferListParams::Status::In>, nil]
        optional :in_,
                 -> { Increase::Internal::Type::ArrayOf[enum: Increase::Models::RealTimePaymentsTransferListParams::Status::In] },
                 api_name: :in

        # @!parse
        #   # @return [Array<Symbol, Increase::Models::RealTimePaymentsTransferListParams::Status::In>]
        #   attr_writer :in_

        # @!parse
        #   # @param in_ [Array<Symbol, Increase::Models::RealTimePaymentsTransferListParams::Status::In>]
        #   #
        #   def initialize(in_: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/paths//real_time_payments_transfers/get/parameters/5/schema/items
        module In
          extend Increase::Internal::Type::Enum

          # The transfer is pending approval.
          PENDING_APPROVAL = :pending_approval

          # The transfer has been canceled.
          CANCELED = :canceled

          # The transfer is pending review by Increase.
          PENDING_REVIEWING = :pending_reviewing

          # The transfer requires attention from an Increase operator.
          REQUIRES_ATTENTION = :requires_attention

          # The transfer was rejected by the network or the recipient's bank.
          REJECTED = :rejected

          # The transfer is queued to be submitted to Real-Time Payments.
          PENDING_SUBMISSION = :pending_submission

          # The transfer has been submitted and is pending a response from Real-Time Payments.
          SUBMITTED = :submitted

          # The transfer has been sent successfully and is complete.
          COMPLETE = :complete

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
