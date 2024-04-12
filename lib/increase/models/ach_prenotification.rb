# frozen_string_literal: true

module Increase
  module Models
    class ACHPrenotification < BaseModel
      # @!attribute [rw] id
      #   The ACH Prenotification's identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_number
      #   The destination account number.
      #   @return [String]
      required :account_number, String

      # @!attribute [rw] addendum
      #   Additional information for the recipient.
      #   @return [String]
      required :addendum, String

      # @!attribute [rw] company_descriptive_date
      #   The description of the date of the notification.
      #   @return [String]
      required :company_descriptive_date, String

      # @!attribute [rw] company_discretionary_data
      #   Optional data associated with the notification.
      #   @return [String]
      required :company_discretionary_data, String

      # @!attribute [rw] company_entry_description
      #   The description of the notification.
      #   @return [String]
      required :company_entry_description, String

      # @!attribute [rw] company_name
      #   The name by which you know the company.
      #   @return [String]
      required :company_name, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the prenotification was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] credit_debit_indicator
      #   If the notification is for a future credit or debit.
      #   @return [Symbol]
      required :credit_debit_indicator, Increase::Enum.new(:credit, :debit)

      # @!attribute [rw] effective_date
      #   The effective date in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
      #   @return [String]
      required :effective_date, String

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] notifications_of_change
      #   If the receiving bank notifies that future transfers should use different details, this will contain those details.
      #   @return [Array<Increase::Models::ACHPrenotification::NotificationsOfChange>]
      required :notifications_of_change,
               Increase::ArrayOf.new(-> { Increase::Models::ACHPrenotification::NotificationsOfChange })

      # @!attribute [rw] prenotification_return
      #   If your prenotification is returned, this will contain details of the return.
      #   @return [Increase::Models::ACHPrenotification::PrenotificationReturn]
      required :prenotification_return, -> { Increase::Models::ACHPrenotification::PrenotificationReturn }

      # @!attribute [rw] routing_number
      #   The American Bankers' Association (ABA) Routing Transit Number (RTN).
      #   @return [String]
      required :routing_number, String

      # @!attribute [rw] status
      #   The lifecycle status of the ACH Prenotification.
      #   @return [Symbol]
      required :status, Increase::Enum.new(:pending_submitting, :requires_attention, :returned, :submitted)

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `ach_prenotification`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:ach_prenotification)

      class NotificationsOfChange < BaseModel
        # @!attribute [rw] change_code
        #   The required type of change that is being signaled by the receiving financial institution.
        #   @return [Symbol]
        required :change_code,
                 Increase::Enum.new(
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
                 )

        # @!attribute [rw] corrected_data
        #   The corrected data that should be used in future ACHs to this account. This may contain the suggested new  account number or routing number. When the `change_code` is `incorrect_transaction_code`, this field contains an integer. Numbers starting with a 2 encourage changing the `funding` parameter to checking; numbers starting with a 3 encourage changing to savings.
        #   @return [String]
        required :corrected_data, String

        # @!attribute [rw] created_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the notification occurred.
        #   @return [String]
        required :created_at, String
      end

      class PrenotificationReturn < BaseModel
        # @!attribute [rw] created_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Prenotification was returned.
        #   @return [String]
        required :created_at, String

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
      end
    end
  end
end
