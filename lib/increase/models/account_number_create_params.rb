# frozen_string_literal: true

module Increase
  module Models
    class AccountNumberCreateParams < Increase::BaseModel
      # @!attribute account_id
      #   The Account the Account Number should belong to.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute name
      #   The name you choose for the Account Number.
      #
      #   @return [String]
      required :name, String

      # @!attribute [r] inbound_ach
      #   Options related to how this Account Number should handle inbound ACH transfers.
      #
      #   @return [Increase::Models::AccountNumberCreateParams::InboundACH, nil]
      optional :inbound_ach, -> { Increase::Models::AccountNumberCreateParams::InboundACH }

      # @!parse
      #   # @return [Increase::Models::AccountNumberCreateParams::InboundACH]
      #   attr_writer :inbound_ach

      # @!attribute [r] inbound_checks
      #   Options related to how this Account Number should handle inbound check withdrawals.
      #
      #   @return [Increase::Models::AccountNumberCreateParams::InboundChecks, nil]
      optional :inbound_checks, -> { Increase::Models::AccountNumberCreateParams::InboundChecks }

      # @!parse
      #   # @return [Increase::Models::AccountNumberCreateParams::InboundChecks]
      #   attr_writer :inbound_checks

      # @!parse
      #   # @param account_id [String] The Account the Account Number should belong to.
      #   #
      #   # @param name [String] The name you choose for the Account Number.
      #   #
      #   # @param inbound_ach [Increase::Models::AccountNumberCreateParams::InboundACH] Options related to how this Account Number should handle inbound ACH transfers.
      #   #
      #   # @param inbound_checks [Increase::Models::AccountNumberCreateParams::InboundChecks] Options related to how this Account Number should handle inbound check
      #   #   withdrawals.
      #   #
      #   def initialize(account_id:, name:, inbound_ach: nil, inbound_checks: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      # ```ruby
      # inbound_ach => {
      #   debit_status: enum: Increase::Models::AccountNumberCreateParams::InboundACH::DebitStatus
      # }
      # ```
      class InboundACH < Increase::BaseModel
        # @!attribute debit_status
        #   Whether ACH debits are allowed against this Account Number. Note that ACH debits will be declined if this is `allowed` but the Account Number is not active. If you do not specify this field, the default is `allowed`.
        #
        #   @return [Symbol, Increase::Models::AccountNumberCreateParams::InboundACH::DebitStatus]
        required :debit_status,
                 enum: -> {
                   Increase::Models::AccountNumberCreateParams::InboundACH::DebitStatus
                 }

        # @!parse
        #   # Options related to how this Account Number should handle inbound ACH transfers.
        #   #
        #   # @param debit_status [String] Whether ACH debits are allowed against this Account Number. Note that ACH debits
        #   #   will be declined if this is `allowed` but the Account Number is not active. If
        #   #   you do not specify this field, the default is `allowed`.
        #   #
        #   def initialize(debit_status:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # Whether ACH debits are allowed against this Account Number. Note that ACH debits will be declined if this is `allowed` but the Account Number is not active. If you do not specify this field, the default is `allowed`.
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
      #   status: enum: Increase::Models::AccountNumberCreateParams::InboundChecks::Status
      # }
      # ```
      class InboundChecks < Increase::BaseModel
        # @!attribute status
        #   How Increase should process checks with this account number printed on them. If you do not specify this field, the default is `check_transfers_only`.
        #
        #   @return [Symbol, Increase::Models::AccountNumberCreateParams::InboundChecks::Status]
        required :status, enum: -> { Increase::Models::AccountNumberCreateParams::InboundChecks::Status }

        # @!parse
        #   # Options related to how this Account Number should handle inbound check
        #   #   withdrawals.
        #   #
        #   # @param status [String] How Increase should process checks with this account number printed on them. If
        #   #   you do not specify this field, the default is `check_transfers_only`.
        #   #
        #   def initialize(status:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # How Increase should process checks with this account number printed on them. If you do not specify this field, the default is `check_transfers_only`.
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
    end
  end
end
