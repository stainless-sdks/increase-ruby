# frozen_string_literal: true

module Increase
  module Models
    class ACHTransfer < BaseModel
      # @!attribute [rw] id
      #   The ACH transfer's identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The Account to which the transfer belongs.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] account_number
      #   The destination account number.
      #   @return [String]
      required :account_number, String

      # @!attribute [rw] acknowledgement
      #   After the transfer is acknowledged by FedACH, this will contain supplemental details. The Federal Reserve sends an acknowledgement message for each file that Increase submits.
      #   @return [Increase::Models::ACHTransfer::Acknowledgement]
      required :acknowledgement, -> { Increase::Models::ACHTransfer::Acknowledgement }

      # @!attribute [rw] addenda
      #   Additional information that will be sent to the recipient.
      #   @return [Increase::Models::ACHTransfer::Addenda]
      required :addenda, -> { Increase::Models::ACHTransfer::Addenda }

      # @!attribute [rw] amount
      #   The transfer amount in USD cents. A positive amount indicates a credit transfer pushing funds to the receiving account. A negative amount indicates a debit transfer pulling funds from the receiving account.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] approval
      #   If your account requires approvals for transfers and the transfer was approved, this will contain details of the approval.
      #   @return [Increase::Models::ACHTransfer::Approval]
      required :approval, -> { Increase::Models::ACHTransfer::Approval }

      # @!attribute [rw] cancellation
      #   If your account requires approvals for transfers and the transfer was not approved, this will contain details of the cancellation.
      #   @return [Increase::Models::ACHTransfer::Cancellation]
      required :cancellation, -> { Increase::Models::ACHTransfer::Cancellation }

      # @!attribute [rw] company_descriptive_date
      #   The description of the date of the transfer.
      #   @return [String]
      required :company_descriptive_date, String

      # @!attribute [rw] company_discretionary_data
      #   The data you chose to associate with the transfer.
      #   @return [String]
      required :company_discretionary_data, String

      # @!attribute [rw] company_entry_description
      #   The description of the transfer you set to be shown to the recipient.
      #   @return [String]
      required :company_entry_description, String

      # @!attribute [rw] company_name
      #   The name by which the recipient knows you.
      #   @return [String]
      required :company_name, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] created_by
      #   What object created the transfer, either via the API or the dashboard.
      #   @return [Increase::Models::ACHTransfer::CreatedBy]
      required :created_by, -> { Increase::Models::ACHTransfer::CreatedBy }

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's currency. For ACH transfers this is always equal to `usd`.
      #   @return [Symbol]
      required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

      # @!attribute [rw] destination_account_holder
      #   The type of entity that owns the account to which the ACH Transfer is being sent.
      #   @return [Symbol]
      required :destination_account_holder, Increase::Enum.new(:business, :individual, :unknown)

      # @!attribute [rw] external_account_id
      #   The identifier of the External Account the transfer was made to, if any.
      #   @return [String]
      required :external_account_id, String

      # @!attribute [rw] funding
      #   The type of the account to which the transfer will be sent.
      #   @return [Symbol]
      required :funding, Increase::Enum.new(:checking, :savings)

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] individual_id
      #   Your identifier for the transfer recipient.
      #   @return [String]
      required :individual_id, String

      # @!attribute [rw] individual_name
      #   The name of the transfer recipient. This value is information and not verified by the recipient's bank.
      #   @return [String]
      required :individual_name, String

      # @!attribute [rw] network
      #   The transfer's network.
      #   @return [Symbol]
      required :network, Increase::Enum.new(:ach)

      # @!attribute [rw] notifications_of_change
      #   If the receiving bank accepts the transfer but notifies that future transfers should use different details, this will contain those details.
      #   @return [Array<Increase::Models::ACHTransfer::NotificationsOfChange>]
      required :notifications_of_change,
               Increase::ArrayOf.new(-> { Increase::Models::ACHTransfer::NotificationsOfChange })

      # @!attribute [rw] pending_transaction_id
      #   The ID for the pending transaction representing the transfer. A pending transaction is created when the transfer [requires approval](https://increase.com/documentation/transfer-approvals#transfer-approvals) by someone else in your organization.
      #   @return [String]
      required :pending_transaction_id, String

      # @!attribute [rw] preferred_effective_date
      #   Configuration for how the effective date of the transfer will be set. This determines same-day vs future-dated settlement timing. If not set, defaults to a `settlement_schedule` of `same_day`. If set, exactly one of the child atributes must be set.
      #   @return [Increase::Models::ACHTransfer::PreferredEffectiveDate]
      required :preferred_effective_date, -> { Increase::Models::ACHTransfer::PreferredEffectiveDate }

      # @!attribute [rw] return_
      #   If your transfer is returned, this will contain details of the return.
      #   @return [Increase::Models::ACHTransfer::Return]
      required :return_, -> { Increase::Models::ACHTransfer::Return }

      # @!attribute [rw] routing_number
      #   The American Bankers' Association (ABA) Routing Transit Number (RTN).
      #   @return [String]
      required :routing_number, String

      # @!attribute [rw] standard_entry_class_code
      #   The Standard Entry Class (SEC) code to use for the transfer.
      #   @return [Symbol]
      required :standard_entry_class_code,
               Increase::Enum.new(
                 :corporate_credit_or_debit,
                 :corporate_trade_exchange,
                 :prearranged_payments_and_deposit,
                 :internet_initiated
               )

      # @!attribute [rw] statement_descriptor
      #   The descriptor that will show on the recipient's bank statement.
      #   @return [String]
      required :statement_descriptor, String

      # @!attribute [rw] status
      #   The lifecycle status of the transfer.
      #   @return [Symbol]
      required :status,
               Increase::Enum.new(
                 :pending_approval,
                 :canceled,
                 :pending_reviewing,
                 :pending_submission,
                 :submitted,
                 :returned,
                 :requires_attention,
                 :rejected
               )

      # @!attribute [rw] submission
      #   After the transfer is submitted to FedACH, this will contain supplemental details. Increase batches transfers and submits a file to the Federal Reserve roughly every 30 minutes. The Federal Reserve processes ACH transfers during weekdays according to their [posted schedule](https://www.frbservices.org/resources/resource-centers/same-day-ach/fedach-processing-schedule.html).
      #   @return [Increase::Models::ACHTransfer::Submission]
      required :submission, -> { Increase::Models::ACHTransfer::Submission }

      # @!attribute [rw] transaction_id
      #   The ID for the transaction funding the transfer.
      #   @return [String]
      required :transaction_id, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `ach_transfer`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:ach_transfer)

      class Acknowledgement < BaseModel
        # @!attribute [rw] acknowledged_at
        #   When the Federal Reserve acknowledged the submitted file containing this transfer.
        #   @return [String]
        required :acknowledged_at, String
      end

      class Addenda < BaseModel
        # @!attribute [rw] category
        #   The type of the resource. We may add additional possible values for this enum over time; your application should be able to handle such additions gracefully.
        #   @return [Symbol]
        required :category, Increase::Enum.new(:freeform, :payment_order_remittance_advice, :other)

        # @!attribute [rw] freeform
        #   Unstructured `payment_related_information` passed through with the transfer.
        #   @return [Increase::Models::ACHTransfer::Addenda::Freeform]
        required :freeform, -> { Increase::Models::ACHTransfer::Addenda::Freeform }

        # @!attribute [rw] payment_order_remittance_advice
        #   Structured ASC X12 820 remittance advice records. Please reach out to [support@increase.com](mailto:support@increase.com) for more information.
        #   @return [Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice]
        required :payment_order_remittance_advice,
                 -> { Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice }

        class Freeform < BaseModel
          # @!attribute [rw] entries
          #   Each entry represents an addendum sent with the transfer.
          #   @return [Array<Increase::Models::ACHTransfer::Addenda::Freeform::Entry>]
          required :entries, Increase::ArrayOf.new(-> { Increase::Models::ACHTransfer::Addenda::Freeform::Entry })

          class Entry < BaseModel
            # @!attribute [rw] payment_related_information
            #   The payment related information passed in the addendum.
            #   @return [String]
            required :payment_related_information, String
          end
        end

        class PaymentOrderRemittanceAdvice < BaseModel
          # @!attribute [rw] invoices
          #   ASC X12 RMR records for this specific transfer.
          #   @return [Array<Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice>]
          required :invoices,
                   Increase::ArrayOf.new(-> { Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice })

          class Invoice < BaseModel
            # @!attribute [rw] invoice_number
            #   The invoice number for this reference, determined in advance with the receiver.
            #   @return [String]
            required :invoice_number, String

            # @!attribute [rw] paid_amount
            #   The amount that was paid for this invoice in the minor unit of its currency. For dollars, for example, this is cents.
            #   @return [Integer]
            required :paid_amount, Integer
          end
        end
      end

      class Approval < BaseModel
        # @!attribute [rw] approved_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was approved.
        #   @return [String]
        required :approved_at, String

        # @!attribute [rw] approved_by
        #   If the Transfer was approved by a user in the dashboard, the email address of that user.
        #   @return [String]
        required :approved_by, String
      end

      class Cancellation < BaseModel
        # @!attribute [rw] canceled_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Transfer was canceled.
        #   @return [String]
        required :canceled_at, String

        # @!attribute [rw] canceled_by
        #   If the Transfer was canceled by a user in the dashboard, the email address of that user.
        #   @return [String]
        required :canceled_by, String
      end

      class CreatedBy < BaseModel
        # @!attribute [rw] api_key
        #   If present, details about the API key that created the transfer.
        #   @return [Increase::Models::ACHTransfer::CreatedBy::APIKey]
        required :api_key, -> { Increase::Models::ACHTransfer::CreatedBy::APIKey }

        # @!attribute [rw] category
        #   The type of object that created this transfer.
        #   @return [Symbol]
        required :category, Increase::Enum.new(:api_key, :oauth_application, :user)

        # @!attribute [rw] oauth_application
        #   If present, details about the OAuth Application that created the transfer.
        #   @return [Increase::Models::ACHTransfer::CreatedBy::OAuthApplication]
        required :oauth_application, -> { Increase::Models::ACHTransfer::CreatedBy::OAuthApplication }

        # @!attribute [rw] user
        #   If present, details about the User that created the transfer.
        #   @return [Increase::Models::ACHTransfer::CreatedBy::User]
        required :user, -> { Increase::Models::ACHTransfer::CreatedBy::User }

        class APIKey < BaseModel
          # @!attribute [rw] description
          #   The description set for the API key when it was created.
          #   @return [String]
          required :description, String
        end

        class OAuthApplication < BaseModel
          # @!attribute [rw] name_
          #   The name of the OAuth Application.
          #   @return [String]
          required :name_, String
        end

        class User < BaseModel
          # @!attribute [rw] email
          #   The email address of the User.
          #   @return [String]
          required :email, String
        end
      end

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

      class PreferredEffectiveDate < BaseModel
        # @!attribute [rw] date
        #   A specific date in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format to use as the effective date when submitting this transfer.
        #   @return [String]
        required :date, String

        # @!attribute [rw] settlement_schedule
        #   A schedule by which Increase whill choose an effective date for the transfer.
        #   @return [Symbol]
        required :settlement_schedule, Increase::Enum.new(:same_day, :future_dated)
      end

      class Return < BaseModel
        # @!attribute [rw] created_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was created.
        #   @return [String]
        required :created_at, String

        # @!attribute [rw] raw_return_reason_code
        #   The three character ACH return code, in the range R01 to R85.
        #   @return [String]
        required :raw_return_reason_code, String

        # @!attribute [rw] return_reason_code
        #   Why the ACH Transfer was returned. This reason code is sent by the receiving bank back to Increase.
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

      class Submission < BaseModel
        # @!attribute [rw] effective_date
        #   The ACH transfer's effective date as sent to the Federal Reserve. If a specific date was configured using `preferred_effective_date`, this will match that value. Otherwise, it will be the date selected (following the specified settlement schedule) at the time the transfer was submitted.
        #   @return [String]
        required :effective_date, String

        # @!attribute [rw] expected_funds_settlement_at
        #   When the transfer is expected to settle in the recipient's account. Credits may be available sooner, at the receiving banks discretion. The FedACH schedule is published [here](https://www.frbservices.org/resources/resource-centers/same-day-ach/fedach-processing-schedule.html).
        #   @return [String]
        required :expected_funds_settlement_at, String

        # @!attribute [rw] expected_settlement_schedule
        #   The settlement schedule the transfer is expected to follow. This expectation takes into account the `effective_date`, `submitted_at`, and the amount of the transfer.
        #   @return [Symbol]
        required :expected_settlement_schedule, Increase::Enum.new(:same_day, :future_dated)

        # @!attribute [rw] submitted_at
        #   When the ACH transfer was sent to FedACH.
        #   @return [String]
        required :submitted_at, String

        # @!attribute [rw] trace_number
        #   A 15 digit number recorded in the Nacha file and transmitted to the receiving bank. Along with the amount, date, and originating routing number, this can be used to identify the ACH transfer at the receiving bank. ACH trace numbers are not unique, but are [used to correlate returns](https://increase.com/documentation/ach-returns#ach-returns).
        #   @return [String]
        required :trace_number, String
      end
    end
  end
end
