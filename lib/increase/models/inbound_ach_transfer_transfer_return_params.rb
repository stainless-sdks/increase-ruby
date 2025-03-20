# frozen_string_literal: true

module Increase
  module Models
    class InboundACHTransferTransferReturnParams < Increase::BaseModel
      # @!parse
      #   extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # @!attribute reason
      #   The reason why this transfer will be returned. The most usual return codes are
      #     `payment_stopped` for debits and `credit_entry_refused_by_receiver` for credits.
      #
      #   @return [Symbol, Increase::Models::InboundACHTransferTransferReturnParams::Reason]
      required :reason, enum: -> { Increase::Models::InboundACHTransferTransferReturnParams::Reason }

      # @!parse
      #   # @param reason [Symbol, Increase::Models::InboundACHTransferTransferReturnParams::Reason]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(reason:, request_options: {}, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The reason why this transfer will be returned. The most usual return codes are
      #   `payment_stopped` for debits and `credit_entry_refused_by_receiver` for credits.
      module Reason
        extend Increase::Enum

        # The customer's account has insufficient funds. This reason is only allowed for debits. The Nacha return code is R01.
        INSUFFICIENT_FUNDS = :insufficient_funds

        # The originating financial institution asked for this transfer to be returned. The receiving bank is complying with the request. The Nacha return code is R06.
        RETURNED_PER_ODFI_REQUEST = :returned_per_odfi_request

        # The customer no longer authorizes this transaction. The Nacha return code is R07.
        AUTHORIZATION_REVOKED_BY_CUSTOMER = :authorization_revoked_by_customer

        # The customer asked for the payment to be stopped. This reason is only allowed for debits. The Nacha return code is R08.
        PAYMENT_STOPPED = :payment_stopped

        # The customer advises that the debit was unauthorized. The Nacha return code is R10.
        CUSTOMER_ADVISED_UNAUTHORIZED_IMPROPER_INELIGIBLE_OR_INCOMPLETE =
          :customer_advised_unauthorized_improper_ineligible_or_incomplete

        # The payee is deceased. The Nacha return code is R14.
        REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE_IN_THAT_CAPACITY =
          :representative_payee_deceased_or_unable_to_continue_in_that_capacity

        # The account holder is deceased. The Nacha return code is R15.
        BENEFICIARY_OR_ACCOUNT_HOLDER_DECEASED = :beneficiary_or_account_holder_deceased

        # The customer refused a credit entry. This reason is only allowed for credits. The Nacha return code is R23.
        CREDIT_ENTRY_REFUSED_BY_RECEIVER = :credit_entry_refused_by_receiver

        # The account holder identified this transaction as a duplicate. The Nacha return code is R24.
        DUPLICATE_ENTRY = :duplicate_entry

        # The corporate customer no longer authorizes this transaction. The Nacha return code is R29.
        CORPORATE_CUSTOMER_ADVISED_NOT_AUTHORIZED = :corporate_customer_advised_not_authorized

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end
    end
  end
end
