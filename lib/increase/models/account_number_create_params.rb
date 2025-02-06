# frozen_string_literal: true

module Increase
  module Models
    class AccountNumberCreateParams < Increase::BaseModel
      # @!parse
      #   extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

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
      #   Options related to how this Account Number should handle inbound check
      #     withdrawals.
      #
      #   @return [Increase::Models::AccountNumberCreateParams::InboundChecks, nil]
      optional :inbound_checks, -> { Increase::Models::AccountNumberCreateParams::InboundChecks }

      # @!parse
      #   # @return [Increase::Models::AccountNumberCreateParams::InboundChecks]
      #   attr_writer :inbound_checks

      # @!parse
      #   # @param account_id [String]
      #   # @param name [String]
      #   # @param inbound_ach [Increase::Models::AccountNumberCreateParams::InboundACH]
      #   # @param inbound_checks [Increase::Models::AccountNumberCreateParams::InboundChecks]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(account_id:, name:, inbound_ach: nil, inbound_checks: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      # ```ruby
      # inbound_ach => {
      #   debit_status: Increase::Models::AccountNumberCreateParams::InboundACH::DebitStatus
      # }
      # ```
      class InboundACH < Increase::BaseModel
        # @!attribute debit_status
        #   Whether ACH debits are allowed against this Account Number. Note that ACH debits
        #     will be declined if this is `allowed` but the Account Number is not active. If
        #     you do not specify this field, the default is `allowed`.
        #
        #   @return [Symbol, Increase::Models::AccountNumberCreateParams::InboundACH::DebitStatus]
        required :debit_status,
                 enum: -> {
                   Increase::Models::AccountNumberCreateParams::InboundACH::DebitStatus
                 }

        # @!parse
        #   # Options related to how this Account Number should handle inbound ACH transfers.
        #   #
        #   # @param debit_status [Symbol, Increase::Models::AccountNumberCreateParams::InboundACH::DebitStatus]
        #   #
        #   def initialize(debit_status:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @abstract
        #
        # Whether ACH debits are allowed against this Account Number. Note that ACH debits
        #   will be declined if this is `allowed` but the Account Number is not active. If
        #   you do not specify this field, the default is `allowed`.
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

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      # @example
      # ```ruby
      # inbound_checks => {
      #   status: Increase::Models::AccountNumberCreateParams::InboundChecks::Status
      # }
      # ```
      class InboundChecks < Increase::BaseModel
        # @!attribute status
        #   How Increase should process checks with this account number printed on them. If
        #     you do not specify this field, the default is `check_transfers_only`.
        #
        #   @return [Symbol, Increase::Models::AccountNumberCreateParams::InboundChecks::Status]
        required :status, enum: -> { Increase::Models::AccountNumberCreateParams::InboundChecks::Status }

        # @!parse
        #   # Options related to how this Account Number should handle inbound check
        #   #   withdrawals.
        #   #
        #   # @param status [Symbol, Increase::Models::AccountNumberCreateParams::InboundChecks::Status]
        #   #
        #   def initialize(status:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @abstract
        #
        # How Increase should process checks with this account number printed on them. If
        #   you do not specify this field, the default is `check_transfers_only`.
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

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end
    end
  end
end
