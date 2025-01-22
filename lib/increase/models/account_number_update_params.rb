# frozen_string_literal: true

module Increase
  module Models
    class AccountNumberUpdateParams < Increase::BaseModel
      # @!attribute [r] inbound_ach
      #   Options related to how this Account Number handles inbound ACH transfers.
      #
      #   @return [Increase::Models::AccountNumberUpdateParams::InboundACH, nil]
      optional :inbound_ach, -> { Increase::Models::AccountNumberUpdateParams::InboundACH }

      # @!parse
      #   # @return [Increase::Models::AccountNumberUpdateParams::InboundACH]
      #   attr_writer :inbound_ach

      # @!attribute [r] inbound_checks
      #   Options related to how this Account Number should handle inbound check
      #     withdrawals.
      #
      #   @return [Increase::Models::AccountNumberUpdateParams::InboundChecks, nil]
      optional :inbound_checks, -> { Increase::Models::AccountNumberUpdateParams::InboundChecks }

      # @!parse
      #   # @return [Increase::Models::AccountNumberUpdateParams::InboundChecks]
      #   attr_writer :inbound_checks

      # @!attribute [r] name
      #   The name you choose for the Account Number.
      #
      #   @return [String, nil]
      optional :name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :name

      # @!attribute [r] status
      #   This indicates if transfers can be made to the Account Number.
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
      #   # @param status [String]
      #   #
      #   def initialize(inbound_ach: nil, inbound_checks: nil, name: nil, status: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      # ```ruby
      # inbound_ach => {
      #   debit_status: Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus
      # }
      # ```
      class InboundACH < Increase::BaseModel
        # @!attribute [r] debit_status
        #   Whether ACH debits are allowed against this Account Number. Note that ACH debits
        #     will be declined if this is `allowed` but the Account Number is not active.
        #
        #   @return [Symbol, Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus, nil]
        optional :debit_status,
                 enum: -> {
                   Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus
                 }

        # @!parse
        #   # @return [Symbol, Increase::Models::AccountNumberUpdateParams::InboundACH::DebitStatus]
        #   attr_writer :debit_status

        # @!parse
        #   # Options related to how this Account Number handles inbound ACH transfers.
        #   #
        #   # @param debit_status [String]
        #   #
        #   def initialize(debit_status: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # Whether ACH debits are allowed against this Account Number. Note that ACH debits
        #   will be declined if this is `allowed` but the Account Number is not active.
        #
        # @example
        # ```ruby
        # case debit_status
        # in :allowed
        #   # ...
        # in :blocked
        #   # ...
        # end
        # ```
        class DebitStatus < Increase::Enum
          # ACH Debits are allowed.
          ALLOWED = :allowed

          # ACH Debits are blocked.
          BLOCKED = :blocked

          finalize!
        end
      end

      # @example
      # ```ruby
      # inbound_checks => {
      #   status: Increase::Models::AccountNumberUpdateParams::InboundChecks::Status
      # }
      # ```
      class InboundChecks < Increase::BaseModel
        # @!attribute status
        #   How Increase should process checks with this account number printed on them.
        #
        #   @return [Symbol, Increase::Models::AccountNumberUpdateParams::InboundChecks::Status]
        required :status, enum: -> { Increase::Models::AccountNumberUpdateParams::InboundChecks::Status }

        # @!parse
        #   # Options related to how this Account Number should handle inbound check
        #   #   withdrawals.
        #   #
        #   # @param status [String]
        #   #
        #   def initialize(status:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # How Increase should process checks with this account number printed on them.
        #
        # @example
        # ```ruby
        # case status
        # in :allowed
        #   # ...
        # in :check_transfers_only
        #   # ...
        # end
        # ```
        class Status < Increase::Enum
          # Checks with this Account Number will be processed even if they are not associated with a Check Transfer.
          ALLOWED = :allowed

          # Checks with this Account Number will be processed only if they can be matched to an existing Check Transfer.
          CHECK_TRANSFERS_ONLY = :check_transfers_only

          finalize!
        end
      end

      # This indicates if transfers can be made to the Account Number.
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
