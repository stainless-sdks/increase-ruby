# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::InboundCheckDeposits#list
    class InboundCheckDepositListParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute [r] account_id
      #   #/paths//inbound_check_deposits/get/parameters/2/schema
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_id

      # @!attribute [r] check_transfer_id
      #   #/paths//inbound_check_deposits/get/parameters/3/schema
      #
      #   @return [String, nil]
      optional :check_transfer_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :check_transfer_id

      # @!attribute [r] created_at
      #
      #   @return [Increase::Models::InboundCheckDepositListParams::CreatedAt, nil]
      optional :created_at, -> { Increase::Models::InboundCheckDepositListParams::CreatedAt }

      # @!parse
      #   # @return [Increase::Models::InboundCheckDepositListParams::CreatedAt]
      #   attr_writer :created_at

      # @!attribute [r] cursor
      #   #/paths//inbound_check_deposits/get/parameters/0/schema
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!parse
      #   # @return [String]
      #   attr_writer :cursor

      # @!attribute [r] limit
      #   #/paths//inbound_check_deposits/get/parameters/1/schema
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!parse
      #   # @param account_id [String]
      #   # @param check_transfer_id [String]
      #   # @param created_at [Increase::Models::InboundCheckDepositListParams::CreatedAt]
      #   # @param cursor [String]
      #   # @param limit [Integer]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(account_id: nil, check_transfer_id: nil, created_at: nil, cursor: nil, limit: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class CreatedAt < Increase::Internal::Type::BaseModel
        # @!attribute [r] after
        #   #/paths//inbound_check_deposits/get/parameters/4/schema
        #
        #   @return [Time, nil]
        optional :after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :after

        # @!attribute [r] before
        #   #/paths//inbound_check_deposits/get/parameters/5/schema
        #
        #   @return [Time, nil]
        optional :before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :before

        # @!attribute [r] on_or_after
        #   #/paths//inbound_check_deposits/get/parameters/6/schema
        #
        #   @return [Time, nil]
        optional :on_or_after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :on_or_after

        # @!attribute [r] on_or_before
        #   #/paths//inbound_check_deposits/get/parameters/7/schema
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
    end
  end
end
