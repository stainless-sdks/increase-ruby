# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Accounts#list
    class AccountListParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute [r] created_at
      #
      #   @return [Increase::Models::AccountListParams::CreatedAt, nil]
      optional :created_at, -> { Increase::Models::AccountListParams::CreatedAt }

      # @!parse
      #   # @return [Increase::Models::AccountListParams::CreatedAt]
      #   attr_writer :created_at

      # @!attribute [r] cursor
      #   #/paths//accounts/get/parameters/0/schema
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!parse
      #   # @return [String]
      #   attr_writer :cursor

      # @!attribute [r] entity_id
      #   #/paths//accounts/get/parameters/2/schema
      #
      #   @return [String, nil]
      optional :entity_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :entity_id

      # @!attribute [r] idempotency_key
      #   #/paths//accounts/get/parameters/10/schema
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!parse
      #   # @return [String]
      #   attr_writer :idempotency_key

      # @!attribute [r] informational_entity_id
      #   #/paths//accounts/get/parameters/3/schema
      #
      #   @return [String, nil]
      optional :informational_entity_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :informational_entity_id

      # @!attribute [r] limit
      #   #/paths//accounts/get/parameters/1/schema
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute [r] program_id
      #   #/paths//accounts/get/parameters/4/schema
      #
      #   @return [String, nil]
      optional :program_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :program_id

      # @!attribute [r] status
      #
      #   @return [Increase::Models::AccountListParams::Status, nil]
      optional :status, -> { Increase::Models::AccountListParams::Status }

      # @!parse
      #   # @return [Increase::Models::AccountListParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param created_at [Increase::Models::AccountListParams::CreatedAt]
      #   # @param cursor [String]
      #   # @param entity_id [String]
      #   # @param idempotency_key [String]
      #   # @param informational_entity_id [String]
      #   # @param limit [Integer]
      #   # @param program_id [String]
      #   # @param status [Increase::Models::AccountListParams::Status]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     created_at: nil,
      #     cursor: nil,
      #     entity_id: nil,
      #     idempotency_key: nil,
      #     informational_entity_id: nil,
      #     limit: nil,
      #     program_id: nil,
      #     status: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class CreatedAt < Increase::Internal::Type::BaseModel
        # @!attribute [r] after
        #   #/paths//accounts/get/parameters/6/schema
        #
        #   @return [Time, nil]
        optional :after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :after

        # @!attribute [r] before
        #   #/paths//accounts/get/parameters/7/schema
        #
        #   @return [Time, nil]
        optional :before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :before

        # @!attribute [r] on_or_after
        #   #/paths//accounts/get/parameters/8/schema
        #
        #   @return [Time, nil]
        optional :on_or_after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :on_or_after

        # @!attribute [r] on_or_before
        #   #/paths//accounts/get/parameters/9/schema
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
        #   #/paths//accounts/get/parameters/5/schema
        #
        #   @return [Array<Symbol, Increase::Models::AccountListParams::Status::In>, nil]
        optional :in_,
                 -> { Increase::Internal::Type::ArrayOf[enum: Increase::Models::AccountListParams::Status::In] },
                 api_name: :in

        # @!parse
        #   # @return [Array<Symbol, Increase::Models::AccountListParams::Status::In>]
        #   attr_writer :in_

        # @!parse
        #   # @param in_ [Array<Symbol, Increase::Models::AccountListParams::Status::In>]
        #   #
        #   def initialize(in_: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/paths//accounts/get/parameters/5/schema/items
        module In
          extend Increase::Internal::Type::Enum

          # Closed Accounts on which no new activity can occur.
          CLOSED = :closed

          # Open Accounts that are ready to use.
          OPEN = :open

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
