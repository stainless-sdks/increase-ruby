# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::AccountNumbers#list
    class AccountNumberListParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute [r] account_id
      #   #/paths//account_numbers/get/parameters/4/schema
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_id

      # @!attribute [r] ach_debit_status
      #
      #   @return [Increase::Models::AccountNumberListParams::ACHDebitStatus, nil]
      optional :ach_debit_status, -> { Increase::Models::AccountNumberListParams::ACHDebitStatus }

      # @!parse
      #   # @return [Increase::Models::AccountNumberListParams::ACHDebitStatus]
      #   attr_writer :ach_debit_status

      # @!attribute [r] created_at
      #
      #   @return [Increase::Models::AccountNumberListParams::CreatedAt, nil]
      optional :created_at, -> { Increase::Models::AccountNumberListParams::CreatedAt }

      # @!parse
      #   # @return [Increase::Models::AccountNumberListParams::CreatedAt]
      #   attr_writer :created_at

      # @!attribute [r] cursor
      #   #/paths//account_numbers/get/parameters/0/schema
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!parse
      #   # @return [String]
      #   attr_writer :cursor

      # @!attribute [r] idempotency_key
      #   #/paths//account_numbers/get/parameters/9/schema
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!parse
      #   # @return [String]
      #   attr_writer :idempotency_key

      # @!attribute [r] limit
      #   #/paths//account_numbers/get/parameters/1/schema
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute [r] status
      #
      #   @return [Increase::Models::AccountNumberListParams::Status, nil]
      optional :status, -> { Increase::Models::AccountNumberListParams::Status }

      # @!parse
      #   # @return [Increase::Models::AccountNumberListParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param account_id [String]
      #   # @param ach_debit_status [Increase::Models::AccountNumberListParams::ACHDebitStatus]
      #   # @param created_at [Increase::Models::AccountNumberListParams::CreatedAt]
      #   # @param cursor [String]
      #   # @param idempotency_key [String]
      #   # @param limit [Integer]
      #   # @param status [Increase::Models::AccountNumberListParams::Status]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     account_id: nil,
      #     ach_debit_status: nil,
      #     created_at: nil,
      #     cursor: nil,
      #     idempotency_key: nil,
      #     limit: nil,
      #     status: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class ACHDebitStatus < Increase::Internal::Type::BaseModel
        # @!attribute [r] in_
        #   #/paths//account_numbers/get/parameters/3/schema
        #
        #   @return [Array<Symbol, Increase::Models::AccountNumberListParams::ACHDebitStatus::In>, nil]
        optional :in_,
                 -> { Increase::Internal::Type::ArrayOf[enum: Increase::Models::AccountNumberListParams::ACHDebitStatus::In] },
                 api_name: :in

        # @!parse
        #   # @return [Array<Symbol, Increase::Models::AccountNumberListParams::ACHDebitStatus::In>]
        #   attr_writer :in_

        # @!parse
        #   # @param in_ [Array<Symbol, Increase::Models::AccountNumberListParams::ACHDebitStatus::In>]
        #   #
        #   def initialize(in_: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/paths//account_numbers/get/parameters/3/schema/items
        module In
          extend Increase::Internal::Type::Enum

          # ACH Debits are allowed.
          ALLOWED = :allowed

          # ACH Debits are blocked.
          BLOCKED = :blocked

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      class CreatedAt < Increase::Internal::Type::BaseModel
        # @!attribute [r] after
        #   #/paths//account_numbers/get/parameters/5/schema
        #
        #   @return [Time, nil]
        optional :after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :after

        # @!attribute [r] before
        #   #/paths//account_numbers/get/parameters/6/schema
        #
        #   @return [Time, nil]
        optional :before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :before

        # @!attribute [r] on_or_after
        #   #/paths//account_numbers/get/parameters/7/schema
        #
        #   @return [Time, nil]
        optional :on_or_after, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :on_or_after

        # @!attribute [r] on_or_before
        #   #/paths//account_numbers/get/parameters/8/schema
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
        #   #/paths//account_numbers/get/parameters/2/schema
        #
        #   @return [Array<Symbol, Increase::Models::AccountNumberListParams::Status::In>, nil]
        optional :in_,
                 -> { Increase::Internal::Type::ArrayOf[enum: Increase::Models::AccountNumberListParams::Status::In] },
                 api_name: :in

        # @!parse
        #   # @return [Array<Symbol, Increase::Models::AccountNumberListParams::Status::In>]
        #   attr_writer :in_

        # @!parse
        #   # @param in_ [Array<Symbol, Increase::Models::AccountNumberListParams::Status::In>]
        #   #
        #   def initialize(in_: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/paths//account_numbers/get/parameters/2/schema/items
        module In
          extend Increase::Internal::Type::Enum

          # The account number is active.
          ACTIVE = :active

          # The account number is temporarily disabled.
          DISABLED = :disabled

          # The account number is permanently disabled.
          CANCELED = :canceled

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
