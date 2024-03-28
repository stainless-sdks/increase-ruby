# frozen_string_literal: true

module Increase
  module Models
    class ACHTransfer < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] account_id
      required :account_id, String

      # @!attribute [rw] account_number
      required :account_number, String

      # @!attribute [rw] acknowledgement
      required :acknowledgement, -> { Increase::Models::ACHTransfer::Acknowledgement }

      # @!attribute [rw] addenda
      required :addenda, -> { Increase::Models::ACHTransfer::Addenda }

      # @!attribute [rw] amount
      required :amount, Integer

      # @!attribute [rw] approval
      required :approval, -> { Increase::Models::ACHTransfer::Approval }

      # @!attribute [rw] cancellation
      required :cancellation, -> { Increase::Models::ACHTransfer::Cancellation }

      # @!attribute [rw] company_descriptive_date
      required :company_descriptive_date, String

      # @!attribute [rw] company_discretionary_data
      required :company_discretionary_data, String

      # @!attribute [rw] company_entry_description
      required :company_entry_description, String

      # @!attribute [rw] company_name
      required :company_name, String

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] currency
      required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

      # @!attribute [rw] destination_account_holder
      required :destination_account_holder, Increase::Enum.new([:business, :individual, :unknown])

      # @!attribute [rw] effective_date
      required :effective_date, String

      # @!attribute [rw] external_account_id
      required :external_account_id, String

      # @!attribute [rw] funding
      required :funding, Increase::Enum.new([:checking, :savings])

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] individual_id
      required :individual_id, String

      # @!attribute [rw] individual_name
      required :individual_name, String

      # @!attribute [rw] network
      required :network, Increase::Enum.new([:ach])

      # @!attribute [rw] notifications_of_change
      required :notifications_of_change,
               Increase::ArrayOf.new(
                 lambda {
                   Increase::Models::ACHTransfer::NotificationsOfChange
                 }
               )

      # @!attribute [rw] pending_transaction_id
      required :pending_transaction_id, String

      # @!attribute [rw] return_
      required :return_, -> { Increase::Models::ACHTransfer::Return }

      # @!attribute [rw] routing_number
      required :routing_number, String

      # @!attribute [rw] standard_entry_class_code
      required :standard_entry_class_code,
               Increase::Enum.new(
                 [
                   :corporate_credit_or_debit,
                   :corporate_trade_exchange,
                   :prearranged_payments_and_deposit,
                   :internet_initiated
                 ]
               )

      # @!attribute [rw] statement_descriptor
      required :statement_descriptor, String

      # @!attribute [rw] status
      required :status,
               Increase::Enum.new(
                 [
                   :pending_approval,
                   :canceled,
                   :pending_reviewing,
                   :pending_submission,
                   :submitted,
                   :returned,
                   :requires_attention,
                   :rejected
                 ]
               )

      # @!attribute [rw] submission
      required :submission, -> { Increase::Models::ACHTransfer::Submission }

      # @!attribute [rw] transaction_id
      required :transaction_id, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:ach_transfer])

      class Acknowledgement < BaseModel
        # @!attribute [rw] acknowledged_at
        required :acknowledged_at, String
      end

      class Addenda < BaseModel
        # @!attribute [rw] category
        required :category,
                 Increase::Enum.new([:freeform, :payment_order_remittance_advice, :other])

        # @!attribute [rw] freeform
        required :freeform, -> { Increase::Models::ACHTransfer::Addenda::Freeform }

        # @!attribute [rw] payment_order_remittance_advice
        required :payment_order_remittance_advice,
                 lambda {
                   Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice
                 }

        class Freeform < BaseModel
          # @!attribute [rw] entries
          required :entries,
                   Increase::ArrayOf.new(
                     lambda {
                       Increase::Models::ACHTransfer::Addenda::Freeform::Entries
                     }
                   )

          class Entries < BaseModel
            # @!attribute [rw] payment_related_information
            required :payment_related_information, String
          end
        end

        class PaymentOrderRemittanceAdvice < BaseModel
          # @!attribute [rw] invoices
          required :invoices,
                   Increase::ArrayOf.new(
                     lambda {
                       Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoices
                     }
                   )

          class Invoices < BaseModel
            # @!attribute [rw] invoice_number
            required :invoice_number, String

            # @!attribute [rw] paid_amount
            required :paid_amount, Integer
          end
        end
      end

      class Approval < BaseModel
        # @!attribute [rw] approved_at
        required :approved_at, String

        # @!attribute [rw] approved_by
        required :approved_by, String
      end

      class Cancellation < BaseModel
        # @!attribute [rw] canceled_at
        required :canceled_at, String

        # @!attribute [rw] canceled_by
        required :canceled_by, String
      end

      class NotificationsOfChange < BaseModel
        # @!attribute [rw] change_code
        required :change_code,
                 Increase::Enum.new(
                   [
                     :incorrect_account_number,
                     :incorrect_routing_number,
                     :incorrect_routing_number_and_account_number,
                     :incorrect_transaction_code,
                     :incorrect_account_number_and_transaction_code,
                     :incorrect_routing_number_account_number_and_transaction_code,
                     :incorrect_receiving_depository_financial_institution_identification,
                     :incorrect_individual_identification_number,
                     :addenda_format_error,
                     :incorrect_standard_entry_class_code_for_outbound_international_payment,
                     :misrouted_notification_of_change,
                     :incorrect_trace_number,
                     :incorrect_company_identification_number,
                     :incorrect_identification_number,
                     :incorrectly_formatted_corrected_data,
                     :incorrect_discretionary_data,
                     :routing_number_not_from_original_entry_detail_record,
                     :depository_financial_institution_account_number_not_from_original_entry_detail_record,
                     :incorrect_transaction_code_by_originating_depository_financial_institution
                   ]
                 )

        # @!attribute [rw] corrected_data
        required :corrected_data, String

        # @!attribute [rw] created_at
        required :created_at, String
      end

      class Return < BaseModel
        # @!attribute [rw] created_at
        required :created_at, String

        # @!attribute [rw] raw_return_reason_code
        required :raw_return_reason_code, String

        # @!attribute [rw] return_reason_code
        required :return_reason_code,
                 Increase::Enum.new(
                   [
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
                   ]
                 )

        # @!attribute [rw] transaction_id
        required :transaction_id, String

        # @!attribute [rw] transfer_id
        required :transfer_id, String
      end

      class Submission < BaseModel
        # @!attribute [rw] effective_date
        required :effective_date, String

        # @!attribute [rw] expected_funds_settlement_at
        required :expected_funds_settlement_at, String

        # @!attribute [rw] submitted_at
        required :submitted_at, String

        # @!attribute [rw] trace_number
        required :trace_number, String
      end
    end
  end
end
