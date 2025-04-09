# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::AccountNumbers#update
    class AccountNumberUpdateParams < Increase::Internal::Type::BaseModel
      # @!parse
      #   extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # @!attribute [r] inbound_ach
      #   #/components/schemas/update_an_account_number_parameters/properties/inbound_ach
      #
      #   @return [Increase::Models::AccountNumberUpdateParams::InboundACH, nil]
      optional :inbound_ach, -> { Increase::Models::AccountNumberUpdateParams::InboundACH }

      # @!parse
      #   # @return [Increase::Models::AccountNumberUpdateParams::InboundACH]
      #   attr_writer :inbound_ach

      # @!attribute [r] inbound_checks
      #   #/components/schemas/update_an_account_number_parameters/properties/inbound_checks
      #
      #   @return [Increase::Models::AccountNumberUpdateParams::InboundChecks, nil]
      optional :inbound_checks, -> { Increase::Models::AccountNumberUpdateParams::InboundChecks }

      # @!parse
      #   # @return [Increase::Models::AccountNumberUpdateParams::InboundChecks]
      #   attr_writer :inbound_checks

      # @!attribute [r] name
      #   #/components/schemas/update_an_account_number_parameters/properties/name
      #
      #   @return [String, nil]
      optional :name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :name

      # @!attribute [r] status
      #   #/components/schemas/update_an_account_number_parameters/properties/status
      #
      #   @return [Symbol, Increase::Models::AccountNumberUpdateParams::Status, nil]
      optional :status, enum: -> { Increase::Models::AccountNumberUpdateParams::Status }

      # @!parse
      #   # @return [Symbol, Increase::Models::AccountNumberUpdateParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param inbound_ach [Increase::Models::AccountNumberUpdateParams::InboundACH]
      #   # @param inbound_checks [Increase::Models::AccountNumberUpdateParams::InboundChecks]
      #   # @param name [String]
      #   # @param status [Symbol, Increase::Models::AccountNumberUpdateParams::Status]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(inbound_ach: nil, inbound_checks: nil, name: nil, status: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      class InboundACH < Increase::Internal::Type::BaseModel
        # @!attribute [r] debit_status
        #   #/components/schemas/update_an_account_number_parameters/properties/inbound_ach/properties/debit_status
        #
        #   @return [Symbol, Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus, nil]
        optional :debit_status, enum: -> { Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus }

        # @!parse
        #   # @return [Symbol, Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus]
        #   attr_writer :debit_status

        # @!parse
        #   # #/components/schemas/update_an_account_number_parameters/properties/inbound_ach
        #   #
        #   # @param debit_status [Symbol, Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus]
        #   #
        #   def initialize(debit_status: nil, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/update_an_account_number_parameters/properties/inbound_ach/properties/debit_status
        #
        # @see Increase::Models::AccountNumberUpdateParams::InboundACH#debit_status
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

      class InboundChecks < Increase::Internal::Type::BaseModel
        # @!attribute status
        #   #/components/schemas/update_an_account_number_parameters/properties/inbound_checks/properties/status
        #
        #   @return [Symbol, Increase::Models::AccountNumberUpdateParams::InboundChecks::Status]
        required :status, enum: -> { Increase::Models::AccountNumberUpdateParams::InboundChecks::Status }

        # @!parse
        #   # #/components/schemas/update_an_account_number_parameters/properties/inbound_checks
        #   #
        #   # @param status [Symbol, Increase::Models::AccountNumberUpdateParams::InboundChecks::Status]
        #   #
        #   def initialize(status:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/update_an_account_number_parameters/properties/inbound_checks/properties/status
        #
        # @see Increase::Models::AccountNumberUpdateParams::InboundChecks#status
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

      # #/components/schemas/update_an_account_number_parameters/properties/status
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
    end
  end
end
