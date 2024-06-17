# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c < BaseModel
      # @!attribute [rw] account_transfer_intention
      #   An Account Transfer Intention object. This field will be present in the JSON response if and only if `category` is equal to `account_transfer_intention`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::AccountTransferIntention]
      required :account_transfer_intention,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::AccountTransferIntention }

      # @!attribute [rw] ach_transfer_intention
      #   An ACH Transfer Intention object. This field will be present in the JSON response if and only if `category` is equal to `ach_transfer_intention`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::ACHTransferIntention]
      required :ach_transfer_intention,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::ACHTransferIntention }

      # @!attribute [rw] ach_transfer_rejection
      #   An ACH Transfer Rejection object. This field will be present in the JSON response if and only if `category` is equal to `ach_transfer_rejection`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::ACHTransferRejection]
      required :ach_transfer_rejection,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::ACHTransferRejection }

      # @!attribute [rw] ach_transfer_return
      #   An ACH Transfer Return object. This field will be present in the JSON response if and only if `category` is equal to `ach_transfer_return`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::ACHTransferReturn]
      required :ach_transfer_return,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::ACHTransferReturn }

      # @!attribute [rw] card_dispute_acceptance
      #   A Card Dispute Acceptance object. This field will be present in the JSON response if and only if `category` is equal to `card_dispute_acceptance`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::CardDisputeAcceptance]
      required :card_dispute_acceptance,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::CardDisputeAcceptance }

      # @!attribute [rw] card_refund
      #   A Card Refund object. This field will be present in the JSON response if and only if `category` is equal to `card_refund`.
      #   @return [Increase::Models::UnnamedSchemaRef632f230d3820b3a35134722652454612]
      required :card_refund, -> { Increase::Models::UnnamedSchemaRef632f230d3820b3a35134722652454612 }

      # @!attribute [rw] card_revenue_payment
      #   A Card Revenue Payment object. This field will be present in the JSON response if and only if `category` is equal to `card_revenue_payment`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::CardRevenuePayment]
      required :card_revenue_payment,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::CardRevenuePayment }

      # @!attribute [rw] card_settlement
      #   A Card Settlement object. This field will be present in the JSON response if and only if `category` is equal to `card_settlement`.
      #   @return [Increase::Models::UnnamedSchemaRef447a61c8e208e7255229de863312f968]
      required :card_settlement, -> { Increase::Models::UnnamedSchemaRef447a61c8e208e7255229de863312f968 }

      # @!attribute [rw] cashback_payment
      #   A Cashback Payment object. This field will be present in the JSON response if and only if `category` is equal to `cashback_payment`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::CashbackPayment]
      required :cashback_payment,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::CashbackPayment }

      # @!attribute [rw] category
      #   The type of the resource. We may add additional possible values for this enum over time; your application should be able to handle such additions gracefully.
      #   @return [Symbol]
      required :category,
               Increase::Enum.new(
                 :account_transfer_intention,
                 :ach_transfer_intention,
                 :ach_transfer_rejection,
                 :ach_transfer_return,
                 :cashback_payment,
                 :card_dispute_acceptance,
                 :card_refund,
                 :card_settlement,
                 :card_revenue_payment,
                 :check_deposit_acceptance,
                 :check_deposit_return,
                 :check_transfer_deposit,
                 :check_transfer_stop_payment_request,
                 :fee_payment,
                 :inbound_ach_transfer,
                 :inbound_ach_transfer_return_intention,
                 :inbound_check_deposit_return_intention,
                 :inbound_international_ach_transfer,
                 :inbound_real_time_payments_transfer_confirmation,
                 :inbound_wire_drawdown_payment,
                 :inbound_wire_reversal,
                 :inbound_wire_transfer,
                 :inbound_wire_transfer_reversal,
                 :interest_payment,
                 :internal_source,
                 :real_time_payments_transfer_acknowledgement,
                 :sample_funds,
                 :wire_transfer_intention,
                 :wire_transfer_rejection,
                 :other
               )

      # @!attribute [rw] check_deposit_acceptance
      #   A Check Deposit Acceptance object. This field will be present in the JSON response if and only if `category` is equal to `check_deposit_acceptance`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::CheckDepositAcceptance]
      required :check_deposit_acceptance,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::CheckDepositAcceptance }

      # @!attribute [rw] check_deposit_return
      #   A Check Deposit Return object. This field will be present in the JSON response if and only if `category` is equal to `check_deposit_return`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::CheckDepositReturn]
      required :check_deposit_return,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::CheckDepositReturn }

      # @!attribute [rw] check_transfer_deposit
      #   A Check Transfer Deposit object. This field will be present in the JSON response if and only if `category` is equal to `check_transfer_deposit`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::CheckTransferDeposit]
      required :check_transfer_deposit,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::CheckTransferDeposit }

      # @!attribute [rw] check_transfer_stop_payment_request
      #   A Check Transfer Stop Payment Request object. This field will be present in the JSON response if and only if `category` is equal to `check_transfer_stop_payment_request`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::CheckTransferStopPaymentRequest]
      required :check_transfer_stop_payment_request,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::CheckTransferStopPaymentRequest }

      # @!attribute [rw] fee_payment
      #   A Fee Payment object. This field will be present in the JSON response if and only if `category` is equal to `fee_payment`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::FeePayment]
      required :fee_payment,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::FeePayment }

      # @!attribute [rw] inbound_ach_transfer
      #   An Inbound ACH Transfer Intention object. This field will be present in the JSON response if and only if `category` is equal to `inbound_ach_transfer`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::InboundACHTransfer]
      required :inbound_ach_transfer,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::InboundACHTransfer }

      # @!attribute [rw] inbound_international_ach_transfer
      #   An Inbound International ACH Transfer object. This field will be present in the JSON response if and only if `category` is equal to `inbound_international_ach_transfer`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::InboundInternationalACHTransfer]
      required :inbound_international_ach_transfer,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::InboundInternationalACHTransfer }

      # @!attribute [rw] inbound_real_time_payments_transfer_confirmation
      #   An Inbound Real-Time Payments Transfer Confirmation object. This field will be present in the JSON response if and only if `category` is equal to `inbound_real_time_payments_transfer_confirmation`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::InboundRealTimePaymentsTransferConfirmation]
      required :inbound_real_time_payments_transfer_confirmation,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::InboundRealTimePaymentsTransferConfirmation }

      # @!attribute [rw] inbound_wire_drawdown_payment
      #   An Inbound Wire Drawdown Payment object. This field will be present in the JSON response if and only if `category` is equal to `inbound_wire_drawdown_payment`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::InboundWireDrawdownPayment]
      required :inbound_wire_drawdown_payment,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::InboundWireDrawdownPayment }

      # @!attribute [rw] inbound_wire_reversal
      #   An Inbound Wire Reversal object. This field will be present in the JSON response if and only if `category` is equal to `inbound_wire_reversal`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::InboundWireReversal]
      required :inbound_wire_reversal,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::InboundWireReversal }

      # @!attribute [rw] inbound_wire_transfer
      #   An Inbound Wire Transfer Intention object. This field will be present in the JSON response if and only if `category` is equal to `inbound_wire_transfer`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::InboundWireTransfer]
      required :inbound_wire_transfer,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::InboundWireTransfer }

      # @!attribute [rw] interest_payment
      #   An Interest Payment object. This field will be present in the JSON response if and only if `category` is equal to `interest_payment`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::InterestPayment]
      required :interest_payment,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::InterestPayment }

      # @!attribute [rw] internal_source
      #   An Internal Source object. This field will be present in the JSON response if and only if `category` is equal to `internal_source`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::InternalSource]
      required :internal_source,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::InternalSource }

      # @!attribute [rw] real_time_payments_transfer_acknowledgement
      #   A Real-Time Payments Transfer Acknowledgement object. This field will be present in the JSON response if and only if `category` is equal to `real_time_payments_transfer_acknowledgement`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::RealTimePaymentsTransferAcknowledgement]
      required :real_time_payments_transfer_acknowledgement,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::RealTimePaymentsTransferAcknowledgement }

      # @!attribute [rw] sample_funds
      #   A Sample Funds object. This field will be present in the JSON response if and only if `category` is equal to `sample_funds`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::SampleFunds]
      required :sample_funds,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::SampleFunds }

      # @!attribute [rw] wire_transfer_intention
      #   A Wire Transfer Intention object. This field will be present in the JSON response if and only if `category` is equal to `wire_transfer_intention`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::WireTransferIntention]
      required :wire_transfer_intention,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::WireTransferIntention }

      # @!attribute [rw] wire_transfer_rejection
      #   A Wire Transfer Rejection object. This field will be present in the JSON response if and only if `category` is equal to `wire_transfer_rejection`.
      #   @return [Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::WireTransferRejection]
      required :wire_transfer_rejection,
               -> { Increase::Models::UnnamedSchemaRefE411b30860233da6486d2d3504eb2c5c::WireTransferRejection }

      class AccountTransferIntention < BaseModel
        # @!attribute [rw] amount
        #   The pending amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
        #   @return [Symbol]
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] description
        #   The description you chose to give the transfer.
        #   @return [String]
        required :description, String

        # @!attribute [rw] destination_account_id
        #   The identifier of the Account to where the Account Transfer was sent.
        #   @return [String]
        required :destination_account_id, String

        # @!attribute [rw] source_account_id
        #   The identifier of the Account from where the Account Transfer was sent.
        #   @return [String]
        required :source_account_id, String

        # @!attribute [rw] transfer_id
        #   The identifier of the Account Transfer that led to this Pending Transaction.
        #   @return [String]
        required :transfer_id, String
      end

      class ACHTransferIntention < BaseModel
        # @!attribute [rw] account_number
        #   The account number for the destination account.
        #   @return [String]
        required :account_number, String

        # @!attribute [rw] amount
        #   The amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] routing_number
        #   The American Bankers' Association (ABA) Routing Transit Number (RTN) for the destination account.
        #   @return [String]
        required :routing_number, String

        # @!attribute [rw] statement_descriptor
        #   A description set when the ACH Transfer was created.
        #   @return [String]
        required :statement_descriptor, String

        # @!attribute [rw] transfer_id
        #   The identifier of the ACH Transfer that led to this Transaction.
        #   @return [String]
        required :transfer_id, String
      end

      class ACHTransferRejection < BaseModel
        # @!attribute [rw] transfer_id
        #   The identifier of the ACH Transfer that led to this Transaction.
        #   @return [String]
        required :transfer_id, String
      end

      class ACHTransferReturn < BaseModel
        # @!attribute [rw] created_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was created.
        #   @return [String]
        required :created_at, String

        # @!attribute [rw] raw_return_reason_code
        #   The three character ACH return code, in the range R01 to R85.
        #   @return [String]
        required :raw_return_reason_code, String

        # @!attribute [rw] return_reason_code
        #   Why the Prenotification was returned.
        #   @return [Symbol]
        required :return_reason_code,
                 Increase::Enum.new(
                   :insufficient_fund,
                   :no_account,
                   :account_closed,
                   :invalid_account_number_structure,
                   :account_frozen_entry_returned_per_ofac_instruction,
                   :credit_entry_refused_by_receiver,
                   :unauthorized_debit_to_consumer_account_using_corporate_sec_code,
                   :corporate_customer_advised_not_authorized,
                   :payment_stopped,
                   :non_transaction_account,
                   :uncollected_funds,
                   :routing_number_check_digit_error,
                   :customer_advised_unauthorized_improper_ineligible_or_incomplete,
                   :amount_field_error,
                   :authorization_revoked_by_customer,
                   :invalid_ach_routing_number,
                   :file_record_edit_criteria,
                   :enr_invalid_individual_name,
                   :returned_per_odfi_request,
                   :limited_participation_dfi,
                   :incorrectly_coded_outbound_international_payment,
                   :account_sold_to_another_dfi,
                   :addenda_error,
                   :beneficiary_or_account_holder_deceased,
                   :customer_advised_not_within_authorization_terms,
                   :corrected_return,
                   :duplicate_entry,
                   :duplicate_return,
                   :enr_duplicate_enrollment,
                   :enr_invalid_dfi_account_number,
                   :enr_invalid_individual_id_number,
                   :enr_invalid_representative_payee_indicator,
                   :enr_invalid_transaction_code,
                   :enr_return_of_enr_entry,
                   :enr_routing_number_check_digit_error,
                   :entry_not_processed_by_gateway,
                   :field_error,
                   :foreign_receiving_dfi_unable_to_settle,
                   :iat_entry_coding_error,
                   :improper_effective_entry_date,
                   :improper_source_document_source_document_presented,
                   :invalid_company_id,
                   :invalid_foreign_receiving_dfi_identification,
                   :invalid_individual_id_number,
                   :item_and_rck_entry_presented_for_payment,
                   :item_related_to_rck_entry_is_ineligible,
                   :mandatory_field_error,
                   :misrouted_dishonored_return,
                   :misrouted_return,
                   :no_errors_found,
                   :non_acceptance_of_r62_dishonored_return,
                   :non_participant_in_iat_program,
                   :permissible_return_entry,
                   :permissible_return_entry_not_accepted,
                   :rdfi_non_settlement,
                   :rdfi_participant_in_check_truncation_program,
                   :representative_payee_deceased_or_unable_to_continue_in_that_capacity,
                   :return_not_a_duplicate,
                   :return_of_erroneous_or_reversing_debit,
                   :return_of_improper_credit_entry,
                   :return_of_improper_debit_entry,
                   :return_of_xck_entry,
                   :source_document_presented_for_payment,
                   :state_law_affecting_rck_acceptance,
                   :stop_payment_on_item_related_to_rck_entry,
                   :stop_payment_on_source_document,
                   :timely_original_return,
                   :trace_number_error,
                   :untimely_dishonored_return,
                   :untimely_return
                 )

        # @!attribute [rw] trace_number
        #   A 15 digit number that was generated by the bank that initiated the return. The trace number of the return is different than that of the original transfer. ACH trace numbers are not unique, but along with the amount and date this number can be used to identify the ACH return at the bank that initiated it.
        #   @return [String]
        required :trace_number, String

        # @!attribute [rw] transaction_id
        #   The identifier of the Transaction associated with this return.
        #   @return [String]
        required :transaction_id, String

        # @!attribute [rw] transfer_id
        #   The identifier of the ACH Transfer associated with this return.
        #   @return [String]
        required :transfer_id, String
      end

      class CardDisputeAcceptance < BaseModel
        # @!attribute [rw] accepted_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Card Dispute was accepted.
        #   @return [String]
        required :accepted_at, String

        # @!attribute [rw] card_dispute_id
        #   The identifier of the Card Dispute that was accepted.
        #   @return [String]
        required :card_dispute_id, String

        # @!attribute [rw] transaction_id
        #   The identifier of the Transaction that was created to return the disputed funds to your account.
        #   @return [String]
        required :transaction_id, String
      end

      class CardRevenuePayment < BaseModel
        # @!attribute [rw] amount
        #   The amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
        #   @return [Symbol]
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] period_end
        #   The end of the period for which this transaction paid interest.
        #   @return [String]
        required :period_end, String

        # @!attribute [rw] period_start
        #   The start of the period for which this transaction paid interest.
        #   @return [String]
        required :period_start, String

        # @!attribute [rw] transacted_on_account_id
        #   The account the card belonged to.
        #   @return [String]
        required :transacted_on_account_id, String
      end

      class CashbackPayment < BaseModel
        # @!attribute [rw] accrued_on_card_id
        #   The card on which the cashback was accrued.
        #   @return [String]
        required :accrued_on_card_id, String

        # @!attribute [rw] amount
        #   The amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
        #   @return [Symbol]
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] period_end
        #   The end of the period for which this transaction paid cashback.
        #   @return [String]
        required :period_end, String

        # @!attribute [rw] period_start
        #   The start of the period for which this transaction paid cashback.
        #   @return [String]
        required :period_start, String
      end

      class CheckDepositAcceptance < BaseModel
        # @!attribute [rw] account_number
        #   The account number printed on the check.
        #   @return [String]
        required :account_number, String

        # @!attribute [rw] amount
        #   The amount to be deposited in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] auxiliary_on_us
        #   An additional line of metadata printed on the check. This typically includes the check number for business checks.
        #   @return [String]
        required :auxiliary_on_us, String

        # @!attribute [rw] check_deposit_id
        #   The ID of the Check Deposit that was accepted.
        #   @return [String]
        required :check_deposit_id, String

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
        #   @return [Symbol]
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] routing_number
        #   The routing number printed on the check.
        #   @return [String]
        required :routing_number, String

        # @!attribute [rw] serial_number
        #   The check serial number, if present, for consumer checks. For business checks, the serial number is usually in the `auxiliary_on_us` field.
        #   @return [String]
        required :serial_number, String
      end

      class CheckDepositReturn < BaseModel
        # @!attribute [rw] amount
        #   The amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] check_deposit_id
        #   The identifier of the Check Deposit that was returned.
        #   @return [String]
        required :check_deposit_id, String

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
        #   @return [Symbol]
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] return_reason
        #   Why this check was returned by the bank holding the account it was drawn against.
        #   @return [Symbol]
        required :return_reason,
                 Increase::Enum.new(
                   :ach_conversion_not_supported,
                   :closed_account,
                   :duplicate_submission,
                   :insufficient_funds,
                   :no_account,
                   :not_authorized,
                   :stale_dated,
                   :stop_payment,
                   :unknown_reason,
                   :unmatched_details,
                   :unreadable_image,
                   :endorsement_irregular,
                   :altered_or_fictitious_item,
                   :frozen_or_blocked_account,
                   :post_dated,
                   :endorsement_missing,
                   :signature_missing,
                   :stop_payment_suspect,
                   :unusable_image,
                   :image_fails_security_check,
                   :cannot_determine_amount,
                   :signature_irregular,
                   :non_cash_item,
                   :unable_to_process,
                   :item_exceeds_dollar_limit,
                   :branch_or_account_sold
                 )

        # @!attribute [rw] returned_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the check deposit was returned.
        #   @return [String]
        required :returned_at, String

        # @!attribute [rw] transaction_id
        #   The identifier of the transaction that reversed the original check deposit transaction.
        #   @return [String]
        required :transaction_id, String
      end

      class CheckTransferDeposit < BaseModel
        # @!attribute [rw] back_image_file_id
        #   The identifier of the API File object containing an image of the back of the deposited check.
        #   @return [String]
        required :back_image_file_id, String

        # @!attribute [rw] bank_of_first_deposit_routing_number
        #   The American Bankers' Association (ABA) Routing Transit Number (RTN) for the bank depositing this check. In some rare cases, this is not transmitted via Check21 and the value will be null.
        #   @return [String]
        required :bank_of_first_deposit_routing_number, String

        # @!attribute [rw] deposited_at
        #   When the check was deposited.
        #   @return [String]
        required :deposited_at, String

        # @!attribute [rw] front_image_file_id
        #   The identifier of the API File object containing an image of the front of the deposited check.
        #   @return [String]
        required :front_image_file_id, String

        # @!attribute [rw] inbound_check_deposit_id
        #   The identifier of the Inbound Check Deposit object associated with this transaction.
        #   @return [String]
        required :inbound_check_deposit_id, String

        # @!attribute [rw] transaction_id
        #   The identifier of the Transaction object created when the check was deposited.
        #   @return [String]
        required :transaction_id, String

        # @!attribute [rw] transfer_id
        #   The identifier of the Check Transfer object that was deposited.
        #   @return [String]
        required :transfer_id, String

        # @!attribute [rw] type
        #   A constant representing the object's type. For this resource it will always be `check_transfer_deposit`.
        #   @return [Symbol]
        required :type, Increase::Enum.new(:check_transfer_deposit)
      end

      class CheckTransferStopPaymentRequest < BaseModel
        # @!attribute [rw] reason
        #   The reason why this transfer was stopped.
        #   @return [Symbol]
        required :reason,
                 Increase::Enum.new(:mail_delivery_failed, :rejected_by_increase, :not_authorized, :unknown)

        # @!attribute [rw] requested_at
        #   The time the stop-payment was requested.
        #   @return [String]
        required :requested_at, String

        # @!attribute [rw] transfer_id
        #   The ID of the check transfer that was stopped.
        #   @return [String]
        required :transfer_id, String

        # @!attribute [rw] type
        #   A constant representing the object's type. For this resource it will always be `check_transfer_stop_payment_request`.
        #   @return [Symbol]
        required :type, Increase::Enum.new(:check_transfer_stop_payment_request)
      end

      class FeePayment < BaseModel
        # @!attribute [rw] amount
        #   The amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
        #   @return [Symbol]
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] fee_period_start
        #   The start of this payment's fee period, usually the first day of a month.
        #   @return [String]
        required :fee_period_start, String
      end

      class InboundACHTransfer < BaseModel
        # @!attribute [rw] addenda
        #   Additional information sent from the originator.
        #   @return [Increase::Models::UnnamedSchemaRef4b32c45b49c8c82f889a68247d209b16]
        required :addenda, -> { Increase::Models::UnnamedSchemaRef4b32c45b49c8c82f889a68247d209b16 }

        # @!attribute [rw] amount
        #   The amount in the minor unit of the destination account currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] originator_company_descriptive_date
        #   The description of the date of the transfer, usually in the format `YYMMDD`.
        #   @return [String]
        required :originator_company_descriptive_date, String

        # @!attribute [rw] originator_company_discretionary_data
        #   Data set by the originator.
        #   @return [String]
        required :originator_company_discretionary_data, String

        # @!attribute [rw] originator_company_entry_description
        #   An informational description of the transfer.
        #   @return [String]
        required :originator_company_entry_description, String

        # @!attribute [rw] originator_company_id
        #   An identifier for the originating company. This is generally, but not always, a stable identifier across multiple transfers.
        #   @return [String]
        required :originator_company_id, String

        # @!attribute [rw] originator_company_name
        #   A name set by the originator to identify themselves.
        #   @return [String]
        required :originator_company_name, String

        # @!attribute [rw] receiver_id_number
        #   The originator's identifier for the transfer receipient.
        #   @return [String]
        required :receiver_id_number, String

        # @!attribute [rw] receiver_name
        #   The name of the transfer recipient. This value is informational and not verified by Increase.
        #   @return [String]
        required :receiver_name, String

        # @!attribute [rw] trace_number
        #   A 15 digit number recorded in the Nacha file and available to both the originating and receiving bank. Along with the amount, date, and originating routing number, this can be used to identify the ACH transfer at either bank. ACH trace numbers are not unique, but are [used to correlate returns](https://increase.com/documentation/ach-returns#ach-returns).
        #   @return [String]
        required :trace_number, String

        # @!attribute [rw] transfer_id
        #   The Inbound ACH Transfer's identifier.
        #   @return [String]
        required :transfer_id, String
      end

      class InboundInternationalACHTransfer < BaseModel
        # @!attribute [rw] amount
        #   The amount in the minor unit of the destination account currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] destination_country_code
        #   The [ISO 3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2), Alpha-2 country code of the destination country.
        #   @return [String]
        required :destination_country_code, String

        # @!attribute [rw] destination_currency_code
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) currency code for the destination bank account.
        #   @return [String]
        required :destination_currency_code, String

        # @!attribute [rw] foreign_exchange_indicator
        #   A description of how the foreign exchange rate was calculated.
        #   @return [Symbol]
        required :foreign_exchange_indicator,
                 Increase::Enum.new(:fixed_to_variable, :variable_to_fixed, :fixed_to_fixed)

        # @!attribute [rw] foreign_exchange_reference
        #   Depending on the `foreign_exchange_reference_indicator`, an exchange rate or a reference to a well-known rate.
        #   @return [String]
        required :foreign_exchange_reference, String

        # @!attribute [rw] foreign_exchange_reference_indicator
        #   An instruction of how to interpret the `foreign_exchange_reference` field for this Transaction.
        #   @return [Symbol]
        required :foreign_exchange_reference_indicator,
                 Increase::Enum.new(:foreign_exchange_rate, :foreign_exchange_reference_number, :blank)

        # @!attribute [rw] foreign_payment_amount
        #   The amount in the minor unit of the foreign payment currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :foreign_payment_amount, Integer

        # @!attribute [rw] foreign_trace_number
        #   A reference number in the foreign banking infrastructure.
        #   @return [String]
        required :foreign_trace_number, String

        # @!attribute [rw] international_transaction_type_code
        #   The type of transfer. Set by the originator.
        #   @return [Symbol]
        required :international_transaction_type_code,
                 Increase::Enum.new(
                   :annuity,
                   :business_or_commercial,
                   :deposit,
                   :loan,
                   :miscellaneous,
                   :mortgage,
                   :pension,
                   :remittance,
                   :rent_or_lease,
                   :salary_or_payroll,
                   :tax,
                   :accounts_receivable,
                   :back_office_conversion,
                   :machine_transfer,
                   :point_of_purchase,
                   :point_of_sale,
                   :represented_check,
                   :shared_network_transaction,
                   :telphone_initiated,
                   :internet_initiated
                 )

        # @!attribute [rw] originating_currency_code
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) currency code for the originating bank account.
        #   @return [String]
        required :originating_currency_code, String

        # @!attribute [rw] originating_depository_financial_institution_branch_country
        #   The [ISO 3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2), Alpha-2 country code of the originating branch country.
        #   @return [String]
        required :originating_depository_financial_institution_branch_country, String

        # @!attribute [rw] originating_depository_financial_institution_id
        #   An identifier for the originating bank. One of an International Bank Account Number (IBAN) bank identifier, SWIFT Bank Identification Code (BIC), or a domestic identifier like a US Routing Number.
        #   @return [String]
        required :originating_depository_financial_institution_id, String

        # @!attribute [rw] originating_depository_financial_institution_id_qualifier
        #   An instruction of how to interpret the `originating_depository_financial_institution_id` field for this Transaction.
        #   @return [Symbol]
        required :originating_depository_financial_institution_id_qualifier,
                 Increase::Enum.new(:national_clearing_system_number, :bic_code, :iban)

        # @!attribute [rw] originating_depository_financial_institution_name
        #   The name of the originating bank. Sometimes this will refer to an American bank and obscure the correspondent foreign bank.
        #   @return [String]
        required :originating_depository_financial_institution_name, String

        # @!attribute [rw] originator_city
        #   A portion of the originator address. This may be incomplete.
        #   @return [String]
        required :originator_city, String

        # @!attribute [rw] originator_company_entry_description
        #   A description field set by the originator.
        #   @return [String]
        required :originator_company_entry_description, String

        # @!attribute [rw] originator_country
        #   A portion of the originator address. The [ISO 3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2), Alpha-2 country code of the originator country.
        #   @return [String]
        required :originator_country, String

        # @!attribute [rw] originator_identification
        #   An identifier for the originating company. This is generally stable across multiple ACH transfers.
        #   @return [String]
        required :originator_identification, String

        # @!attribute [rw] originator_name
        #   Either the name of the originator or an intermediary money transmitter.
        #   @return [String]
        required :originator_name, String

        # @!attribute [rw] originator_postal_code
        #   A portion of the originator address. This may be incomplete.
        #   @return [String]
        required :originator_postal_code, String

        # @!attribute [rw] originator_state_or_province
        #   A portion of the originator address. This may be incomplete.
        #   @return [String]
        required :originator_state_or_province, String

        # @!attribute [rw] originator_street_address
        #   A portion of the originator address. This may be incomplete.
        #   @return [String]
        required :originator_street_address, String

        # @!attribute [rw] payment_related_information
        #   A description field set by the originator.
        #   @return [String]
        required :payment_related_information, String

        # @!attribute [rw] payment_related_information2
        #   A description field set by the originator.
        #   @return [String]
        required :payment_related_information2, String

        # @!attribute [rw] receiver_city
        #   A portion of the receiver address. This may be incomplete.
        #   @return [String]
        required :receiver_city, String

        # @!attribute [rw] receiver_country
        #   A portion of the receiver address. The [ISO 3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2), Alpha-2 country code of the receiver country.
        #   @return [String]
        required :receiver_country, String

        # @!attribute [rw] receiver_identification_number
        #   An identification number the originator uses for the receiver.
        #   @return [String]
        required :receiver_identification_number, String

        # @!attribute [rw] receiver_postal_code
        #   A portion of the receiver address. This may be incomplete.
        #   @return [String]
        required :receiver_postal_code, String

        # @!attribute [rw] receiver_state_or_province
        #   A portion of the receiver address. This may be incomplete.
        #   @return [String]
        required :receiver_state_or_province, String

        # @!attribute [rw] receiver_street_address
        #   A portion of the receiver address. This may be incomplete.
        #   @return [String]
        required :receiver_street_address, String

        # @!attribute [rw] receiving_company_or_individual_name
        #   The name of the receiver of the transfer. This is not verified by Increase.
        #   @return [String]
        required :receiving_company_or_individual_name, String

        # @!attribute [rw] receiving_depository_financial_institution_country
        #   The [ISO 3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2), Alpha-2 country code of the receiving bank country.
        #   @return [String]
        required :receiving_depository_financial_institution_country, String

        # @!attribute [rw] receiving_depository_financial_institution_id
        #   An identifier for the receiving bank. One of an International Bank Account Number (IBAN) bank identifier, SWIFT Bank Identification Code (BIC), or a domestic identifier like a US Routing Number.
        #   @return [String]
        required :receiving_depository_financial_institution_id, String

        # @!attribute [rw] receiving_depository_financial_institution_id_qualifier
        #   An instruction of how to interpret the `originating_depository_financial_institution_id` field for this Transaction.
        #   @return [Symbol]
        required :receiving_depository_financial_institution_id_qualifier,
                 Increase::Enum.new(:national_clearing_system_number, :bic_code, :iban)

        # @!attribute [rw] receiving_depository_financial_institution_name
        #   The name of the receiving bank, as set by the sending financial institution.
        #   @return [String]
        required :receiving_depository_financial_institution_name, String

        # @!attribute [rw] trace_number
        #   A 15 digit number recorded in the Nacha file and available to both the originating and receiving bank. Along with the amount, date, and originating routing number, this can be used to identify the ACH transfer at either bank. ACH trace numbers are not unique, but are [used to correlate returns](https://increase.com/documentation/ach-returns#ach-returns).
        #   @return [String]
        required :trace_number, String
      end

      class InboundRealTimePaymentsTransferConfirmation < BaseModel
        # @!attribute [rw] amount
        #   The amount in the minor unit of the transfer's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] creditor_name
        #   The name the sender of the transfer specified as the recipient of the transfer.
        #   @return [String]
        required :creditor_name, String

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
        #   @return [Symbol]
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] debtor_account_number
        #   The account number of the account that sent the transfer.
        #   @return [String]
        required :debtor_account_number, String

        # @!attribute [rw] debtor_name
        #   The name provided by the sender of the transfer.
        #   @return [String]
        required :debtor_name, String

        # @!attribute [rw] debtor_routing_number
        #   The routing number of the account that sent the transfer.
        #   @return [String]
        required :debtor_routing_number, String

        # @!attribute [rw] remittance_information
        #   Additional information included with the transfer.
        #   @return [String]
        required :remittance_information, String

        # @!attribute [rw] transaction_identification
        #   The Real-Time Payments network identification of the transfer.
        #   @return [String]
        required :transaction_identification, String
      end

      class InboundWireDrawdownPayment < BaseModel
        # @!attribute [rw] amount
        #   The amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] beneficiary_address_line1
        #   A free-form address field set by the sender.
        #   @return [String]
        required :beneficiary_address_line1, String

        # @!attribute [rw] beneficiary_address_line2
        #   A free-form address field set by the sender.
        #   @return [String]
        required :beneficiary_address_line2, String

        # @!attribute [rw] beneficiary_address_line3
        #   A free-form address field set by the sender.
        #   @return [String]
        required :beneficiary_address_line3, String

        # @!attribute [rw] beneficiary_name
        #   A name set by the sender.
        #   @return [String]
        required :beneficiary_name, String

        # @!attribute [rw] beneficiary_reference
        #   A free-form reference string set by the sender, to help identify the transfer.
        #   @return [String]
        required :beneficiary_reference, String

        # @!attribute [rw] description
        #   An Increase-constructed description of the transfer.
        #   @return [String]
        required :description, String

        # @!attribute [rw] input_message_accountability_data
        #   A unique identifier available to the originating and receiving banks, commonly abbreviated as IMAD. It is created when the wire is submitted to the Fedwire service and is helpful when debugging wires with the receiving bank.
        #   @return [String]
        required :input_message_accountability_data, String

        # @!attribute [rw] originator_address_line1
        #   The address of the wire originator, set by the sending bank.
        #   @return [String]
        required :originator_address_line1, String

        # @!attribute [rw] originator_address_line2
        #   The address of the wire originator, set by the sending bank.
        #   @return [String]
        required :originator_address_line2, String

        # @!attribute [rw] originator_address_line3
        #   The address of the wire originator, set by the sending bank.
        #   @return [String]
        required :originator_address_line3, String

        # @!attribute [rw] originator_name
        #   The originator of the wire, set by the sending bank.
        #   @return [String]
        required :originator_name, String

        # @!attribute [rw] originator_routing_number
        #   The American Banking Association (ABA) routing number of the bank originating the transfer.
        #   @return [String]
        required :originator_routing_number, String

        # @!attribute [rw] originator_to_beneficiary_information
        #   An Increase-created concatenation of the Originator-to-Beneficiary lines.
        #   @return [String]
        required :originator_to_beneficiary_information, String

        # @!attribute [rw] originator_to_beneficiary_information_line1
        #   A free-form message set by the wire originator.
        #   @return [String]
        required :originator_to_beneficiary_information_line1, String

        # @!attribute [rw] originator_to_beneficiary_information_line2
        #   A free-form message set by the wire originator.
        #   @return [String]
        required :originator_to_beneficiary_information_line2, String

        # @!attribute [rw] originator_to_beneficiary_information_line3
        #   A free-form message set by the wire originator.
        #   @return [String]
        required :originator_to_beneficiary_information_line3, String

        # @!attribute [rw] originator_to_beneficiary_information_line4
        #   A free-form message set by the wire originator.
        #   @return [String]
        required :originator_to_beneficiary_information_line4, String
      end

      class InboundWireReversal < BaseModel
        # @!attribute [rw] amount
        #   The amount that was reversed in USD cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] created_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the reversal was created.
        #   @return [String]
        required :created_at, String

        # @!attribute [rw] description
        #   The description on the reversal message from Fedwire, set by the reversing bank.
        #   @return [String]
        required :description, String

        # @!attribute [rw] financial_institution_to_financial_institution_information
        #   Additional financial institution information included in the wire reversal.
        #   @return [String]
        required :financial_institution_to_financial_institution_information, String

        # @!attribute [rw] input_cycle_date
        #   The Fedwire cycle date for the wire reversal. The "Fedwire day" begins at 9:00 PM Eastern Time on the evening before the `cycle date`.
        #   @return [String]
        required :input_cycle_date, String

        # @!attribute [rw] input_message_accountability_data
        #   The Fedwire transaction identifier.
        #   @return [String]
        required :input_message_accountability_data, String

        # @!attribute [rw] input_sequence_number
        #   The Fedwire sequence number.
        #   @return [String]
        required :input_sequence_number, String

        # @!attribute [rw] input_source
        #   The Fedwire input source identifier.
        #   @return [String]
        required :input_source, String

        # @!attribute [rw] originator_routing_number
        #   The American Banking Association (ABA) routing number of the bank originating the transfer.
        #   @return [String]
        required :originator_routing_number, String

        # @!attribute [rw] previous_message_input_cycle_date
        #   The Fedwire cycle date for the wire transfer that is being reversed by this message.
        #   @return [String]
        required :previous_message_input_cycle_date, String

        # @!attribute [rw] previous_message_input_message_accountability_data
        #   The Fedwire transaction identifier for the wire transfer that was reversed.
        #   @return [String]
        required :previous_message_input_message_accountability_data, String

        # @!attribute [rw] previous_message_input_sequence_number
        #   The Fedwire sequence number for the wire transfer that was reversed.
        #   @return [String]
        required :previous_message_input_sequence_number, String

        # @!attribute [rw] previous_message_input_source
        #   The Fedwire input source identifier for the wire transfer that was reversed.
        #   @return [String]
        required :previous_message_input_source, String

        # @!attribute [rw] receiver_financial_institution_information
        #   Information included in the wire reversal for the receiving financial institution.
        #   @return [String]
        required :receiver_financial_institution_information, String

        # @!attribute [rw] transaction_id
        #   The ID for the Transaction associated with the transfer reversal.
        #   @return [String]
        required :transaction_id, String

        # @!attribute [rw] wire_transfer_id
        #   The ID for the Wire Transfer that is being reversed.
        #   @return [String]
        required :wire_transfer_id, String
      end

      class InboundWireTransfer < BaseModel
        # @!attribute [rw] amount
        #   The amount in USD cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] beneficiary_address_line1
        #   A free-form address field set by the sender.
        #   @return [String]
        required :beneficiary_address_line1, String

        # @!attribute [rw] beneficiary_address_line2
        #   A free-form address field set by the sender.
        #   @return [String]
        required :beneficiary_address_line2, String

        # @!attribute [rw] beneficiary_address_line3
        #   A free-form address field set by the sender.
        #   @return [String]
        required :beneficiary_address_line3, String

        # @!attribute [rw] beneficiary_name
        #   A name set by the sender.
        #   @return [String]
        required :beneficiary_name, String

        # @!attribute [rw] beneficiary_reference
        #   A free-form reference string set by the sender, to help identify the transfer.
        #   @return [String]
        required :beneficiary_reference, String

        # @!attribute [rw] description
        #   An Increase-constructed description of the transfer.
        #   @return [String]
        required :description, String

        # @!attribute [rw] input_message_accountability_data
        #   A unique identifier available to the originating and receiving banks, commonly abbreviated as IMAD. It is created when the wire is submitted to the Fedwire service and is helpful when debugging wires with the originating bank.
        #   @return [String]
        required :input_message_accountability_data, String

        # @!attribute [rw] originator_address_line1
        #   The address of the wire originator, set by the sending bank.
        #   @return [String]
        required :originator_address_line1, String

        # @!attribute [rw] originator_address_line2
        #   The address of the wire originator, set by the sending bank.
        #   @return [String]
        required :originator_address_line2, String

        # @!attribute [rw] originator_address_line3
        #   The address of the wire originator, set by the sending bank.
        #   @return [String]
        required :originator_address_line3, String

        # @!attribute [rw] originator_name
        #   The originator of the wire, set by the sending bank.
        #   @return [String]
        required :originator_name, String

        # @!attribute [rw] originator_routing_number
        #   The American Banking Association (ABA) routing number of the bank originating the transfer.
        #   @return [String]
        required :originator_routing_number, String

        # @!attribute [rw] originator_to_beneficiary_information
        #   An Increase-created concatenation of the Originator-to-Beneficiary lines.
        #   @return [String]
        required :originator_to_beneficiary_information, String

        # @!attribute [rw] originator_to_beneficiary_information_line1
        #   A free-form message set by the wire originator.
        #   @return [String]
        required :originator_to_beneficiary_information_line1, String

        # @!attribute [rw] originator_to_beneficiary_information_line2
        #   A free-form message set by the wire originator.
        #   @return [String]
        required :originator_to_beneficiary_information_line2, String

        # @!attribute [rw] originator_to_beneficiary_information_line3
        #   A free-form message set by the wire originator.
        #   @return [String]
        required :originator_to_beneficiary_information_line3, String

        # @!attribute [rw] originator_to_beneficiary_information_line4
        #   A free-form message set by the wire originator.
        #   @return [String]
        required :originator_to_beneficiary_information_line4, String

        # @!attribute [rw] transfer_id
        #   The ID of the Inbound Wire Transfer object that resulted in this Transaction.
        #   @return [String]
        required :transfer_id, String
      end

      class InterestPayment < BaseModel
        # @!attribute [rw] accrued_on_account_id
        #   The account on which the interest was accrued.
        #   @return [String]
        required :accrued_on_account_id, String

        # @!attribute [rw] amount
        #   The amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
        #   @return [Symbol]
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] period_end
        #   The end of the period for which this transaction paid interest.
        #   @return [String]
        required :period_end, String

        # @!attribute [rw] period_start
        #   The start of the period for which this transaction paid interest.
        #   @return [String]
        required :period_start, String
      end

      class InternalSource < BaseModel
        # @!attribute [rw] amount
        #   The amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
        #   @return [Symbol]
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] reason
        #   An Internal Source is a transaction between you and Increase. This describes the reason for the transaction.
        #   @return [Symbol]
        required :reason,
                 Increase::Enum.new(
                   :account_closure,
                   :bank_migration,
                   :check_adjustment,
                   :collection_payment,
                   :collection_receivable,
                   :empyreal_adjustment,
                   :error,
                   :error_correction,
                   :fees,
                   :interest,
                   :negative_balance_forgiveness,
                   :sample_funds,
                   :sample_funds_return
                 )
      end

      class RealTimePaymentsTransferAcknowledgement < BaseModel
        # @!attribute [rw] amount
        #   The transfer amount in USD cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] destination_account_number
        #   The destination account number.
        #   @return [String]
        required :destination_account_number, String

        # @!attribute [rw] destination_routing_number
        #   The American Bankers' Association (ABA) Routing Transit Number (RTN).
        #   @return [String]
        required :destination_routing_number, String

        # @!attribute [rw] remittance_information
        #   Unstructured information that will show on the recipient's bank statement.
        #   @return [String]
        required :remittance_information, String

        # @!attribute [rw] transfer_id
        #   The identifier of the Real-Time Payments Transfer that led to this Transaction.
        #   @return [String]
        required :transfer_id, String
      end

      class SampleFunds < BaseModel
        # @!attribute [rw] originator
        #   Where the sample funds came from.
        #   @return [String]
        required :originator, String
      end

      class WireTransferIntention < BaseModel
        # @!attribute [rw] account_number
        #   The destination account number.
        #   @return [String]
        required :account_number, String

        # @!attribute [rw] amount
        #   The transfer amount in USD cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] message_to_recipient
        #   The message that will show on the recipient's bank statement.
        #   @return [String]
        required :message_to_recipient, String

        # @!attribute [rw] routing_number
        #   The American Bankers' Association (ABA) Routing Transit Number (RTN).
        #   @return [String]
        required :routing_number, String

        # @!attribute [rw] transfer_id
        #   The identifier of the Wire Transfer that led to this Transaction.
        #   @return [String]
        required :transfer_id, String
      end

      class WireTransferRejection < BaseModel
        # @!attribute [rw] transfer_id
        #   The identifier of the Wire Transfer that led to this Transaction.
        #   @return [String]
        required :transfer_id, String
      end
    end
  end
end
