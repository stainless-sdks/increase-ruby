# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::AccountNumbers#create
    class AccountNumber < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/account_number/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   #/components/schemas/account_number/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute account_number
      #   #/components/schemas/account_number/properties/account_number
      #
      #   @return [String]
      required :account_number, String

      # @!attribute created_at
      #   #/components/schemas/account_number/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute idempotency_key
      #   #/components/schemas/account_number/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute inbound_ach
      #   #/components/schemas/account_number/properties/inbound_ach
      #
      #   @return [Increase::Models::AccountNumber::InboundACH]
      required :inbound_ach, -> { Increase::Models::AccountNumber::InboundACH }

      # @!attribute inbound_checks
      #   #/components/schemas/account_number/properties/inbound_checks
      #
      #   @return [Increase::Models::AccountNumber::InboundChecks]
      required :inbound_checks, -> { Increase::Models::AccountNumber::InboundChecks }

      # @!attribute name
      #   #/components/schemas/account_number/properties/name
      #
      #   @return [String]
      required :name, String

      # @!attribute routing_number
      #   #/components/schemas/account_number/properties/routing_number
      #
      #   @return [String]
      required :routing_number, String

      # @!attribute status
      #   #/components/schemas/account_number/properties/status
      #
      #   @return [Symbol, Increase::Models::AccountNumber::Status]
      required :status, enum: -> { Increase::Models::AccountNumber::Status }

      # @!attribute type
      #   #/components/schemas/account_number/properties/type
      #
      #   @return [Symbol, Increase::Models::AccountNumber::Type]
      required :type, enum: -> { Increase::Models::AccountNumber::Type }

      # @!parse
      #   # #/components/schemas/account_number
      #   #
      #   # @param id [String]
      #   # @param account_id [String]
      #   # @param account_number [String]
      #   # @param created_at [Time]
      #   # @param idempotency_key [String, nil]
      #   # @param inbound_ach [Increase::Models::AccountNumber::InboundACH]
      #   # @param inbound_checks [Increase::Models::AccountNumber::InboundChecks]
      #   # @param name [String]
      #   # @param routing_number [String]
      #   # @param status [Symbol, Increase::Models::AccountNumber::Status]
      #   # @param type [Symbol, Increase::Models::AccountNumber::Type]
      #   #
      #   def initialize(
      #     id:,
      #     account_id:,
      #     account_number:,
      #     created_at:,
      #     idempotency_key:,
      #     inbound_ach:,
      #     inbound_checks:,
      #     name:,
      #     routing_number:,
      #     status:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # @see Increase::Models::AccountNumber#inbound_ach
      class InboundACH < Increase::Internal::Type::BaseModel
        # @!attribute debit_status
        #   #/components/schemas/account_number/properties/inbound_ach/properties/debit_status
        #
        #   @return [Symbol, Increase::Models::AccountNumber::InboundACH::DebitStatus]
        required :debit_status, enum: -> { Increase::Models::AccountNumber::InboundACH::DebitStatus }

        # @!parse
        #   # #/components/schemas/account_number/properties/inbound_ach
        #   #
        #   # @param debit_status [Symbol, Increase::Models::AccountNumber::InboundACH::DebitStatus]
        #   #
        #   def initialize(debit_status:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/account_number/properties/inbound_ach/properties/debit_status
        #
        # @see Increase::Models::AccountNumber::InboundACH#debit_status
        module DebitStatus
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

      # @see Increase::Models::AccountNumber#inbound_checks
      class InboundChecks < Increase::Internal::Type::BaseModel
        # @!attribute status
        #   #/components/schemas/account_number/properties/inbound_checks/properties/status
        #
        #   @return [Symbol, Increase::Models::AccountNumber::InboundChecks::Status]
        required :status, enum: -> { Increase::Models::AccountNumber::InboundChecks::Status }

        # @!parse
        #   # #/components/schemas/account_number/properties/inbound_checks
        #   #
        #   # @param status [Symbol, Increase::Models::AccountNumber::InboundChecks::Status]
        #   #
        #   def initialize(status:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/account_number/properties/inbound_checks/properties/status
        #
        # @see Increase::Models::AccountNumber::InboundChecks#status
        module Status
          extend Increase::Internal::Type::Enum

          # Checks with this Account Number will be processed even if they are not associated with a Check Transfer.
          ALLOWED = :allowed

          # Checks with this Account Number will be processed only if they can be matched to an existing Check Transfer.
          CHECK_TRANSFERS_ONLY = :check_transfers_only

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # #/components/schemas/account_number/properties/status
      #
      # @see Increase::Models::AccountNumber#status
      module Status
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

      # #/components/schemas/account_number/properties/type
      #
      # @see Increase::Models::AccountNumber#type
      module Type
        extend Increase::Internal::Type::Enum

        ACCOUNT_NUMBER = :account_number

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
