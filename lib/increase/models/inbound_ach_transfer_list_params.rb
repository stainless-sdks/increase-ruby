# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::InboundACHTransfers#list
    class InboundACHTransferListParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute [r] account_id
      #   #/paths//inbound_ach_transfers/get/parameters/2/schema
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_id

      # @!attribute [r] account_number_id
      #   #/paths//inbound_ach_transfers/get/parameters/3/schema
      #
      #   @return [String, nil]
      optional :account_number_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_number_id

      # @!attribute [r] created_at
      #
      #   @return [Increase::Models::InboundACHTransferListParams::CreatedAt, nil]
      optional :created_at, -> { Increase::Models::InboundACHTransferListParams::CreatedAt }

      # @!parse
      #   # @return [Increase::Models::InboundACHTransferListParams::CreatedAt]
      #   attr_writer :created_at

      # @!attribute [r] cursor
      #   #/paths//inbound_ach_transfers/get/parameters/0/schema
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!parse
      #   # @return [String]
      #   attr_writer :cursor

      # @!attribute [r] limit
      #   #/paths//inbound_ach_transfers/get/parameters/1/schema
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute [r] status
      #
      #   @return [Increase::Models::InboundACHTransferListParams::Status, nil]
      optional :status, -> { Increase::Models::InboundACHTransferListParams::Status }

      # @!parse
      #   # @return [Increase::Models::InboundACHTransferListParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param account_id [String]
      #   # @param account_number_id [String]
      #   # @param created_at [Increase::Models::InboundACHTransferListParams::CreatedAt]
      #   # @param cursor [String]
      #   # @param limit [Integer]
      #   # @param status [Increase::Models::InboundACHTransferListParams::Status]
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

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class CreatedAt < Increase::Internal::Type::BaseModel
        # @!attribute [r] after
        #   #/paths//inbound_ach_transfers/get/parameters/4/schema
        #
        #   @return [Time, nil]
        optional :after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :after

        # @!attribute [r] before
        #   #/paths//inbound_ach_transfers/get/parameters/5/schema
        #
        #   @return [Time, nil]
        optional :before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :before

        # @!attribute [r] on_or_after
        #   #/paths//inbound_ach_transfers/get/parameters/6/schema
        #
        #   @return [Time, nil]
        optional :on_or_after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :on_or_after

        # @!attribute [r] on_or_before
        #   #/paths//inbound_ach_transfers/get/parameters/7/schema
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
        #   #/paths//inbound_ach_transfers/get/parameters/8/schema
        #
        #   @return [Array<Symbol, Increase::Models::InboundACHTransferListParams::Status::In>, nil]
        optional :in_,
                 -> { Increase::Internal::Type::ArrayOf[enum: Increase::Models::InboundACHTransferListParams::Status::In] },
                 api_name: :in

        # @!parse
        #   # @return [Array<Symbol, Increase::Models::InboundACHTransferListParams::Status::In>]
        #   attr_writer :in_

        # @!parse
        #   # @param in_ [Array<Symbol, Increase::Models::InboundACHTransferListParams::Status::In>]
        #   #
        #   def initialize(in_: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/paths//inbound_ach_transfers/get/parameters/8/schema/items
        module In
          extend Increase::Internal::Type::Enum

          # The Inbound ACH Transfer is awaiting action, will transition automatically if no action is taken.
          PENDING = :pending

          # The Inbound ACH Transfer has been declined.
          DECLINED = :declined

          # The Inbound ACH Transfer is accepted.
          ACCEPTED = :accepted

          # The Inbound ACH Transfer has been returned.
          RETURNED = :returned

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
