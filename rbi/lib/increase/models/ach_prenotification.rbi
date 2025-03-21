# typed: strong

module Increase
  module Models
    class ACHPrenotification < Increase::BaseModel
      # The ACH Prenotification's identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The destination account number.
      sig { returns(String) }
      def account_number
      end

      sig { params(_: String).returns(String) }
      def account_number=(_)
      end

      # Additional information for the recipient.
      sig { returns(T.nilable(String)) }
      def addendum
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def addendum=(_)
      end

      # The description of the date of the notification.
      sig { returns(T.nilable(String)) }
      def company_descriptive_date
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def company_descriptive_date=(_)
      end

      # Optional data associated with the notification.
      sig { returns(T.nilable(String)) }
      def company_discretionary_data
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def company_discretionary_data=(_)
      end

      # The description of the notification.
      sig { returns(T.nilable(String)) }
      def company_entry_description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def company_entry_description=(_)
      end

      # The name by which you know the company.
      sig { returns(T.nilable(String)) }
      def company_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def company_name=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the prenotification was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # If the notification is for a future credit or debit.
      sig { returns(T.nilable(Symbol)) }
      def credit_debit_indicator
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def credit_debit_indicator=(_)
      end

      # The effective date in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
      sig { returns(T.nilable(Time)) }
      def effective_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def effective_date=(_)
      end

      # The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      # If the receiving bank notifies that future transfers should use different
      #   details, this will contain those details.
      sig { returns(T::Array[Increase::Models::ACHPrenotification::NotificationsOfChange]) }
      def notifications_of_change
      end

      sig do
        params(_: T::Array[Increase::Models::ACHPrenotification::NotificationsOfChange])
          .returns(T::Array[Increase::Models::ACHPrenotification::NotificationsOfChange])
      end
      def notifications_of_change=(_)
      end

      # If your prenotification is returned, this will contain details of the return.
      sig { returns(T.nilable(Increase::Models::ACHPrenotification::PrenotificationReturn)) }
      def prenotification_return
      end

      sig do
        params(_: T.nilable(Increase::Models::ACHPrenotification::PrenotificationReturn))
          .returns(T.nilable(Increase::Models::ACHPrenotification::PrenotificationReturn))
      end
      def prenotification_return=(_)
      end

      # The American Bankers' Association (ABA) Routing Transit Number (RTN).
      sig { returns(String) }
      def routing_number
      end

      sig { params(_: String).returns(String) }
      def routing_number=(_)
      end

      # The lifecycle status of the ACH Prenotification.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `ach_prenotification`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # ACH Prenotifications are one way you can verify account and routing numbers by
      #   Automated Clearing House (ACH).
      sig do
        params(
          id: String,
          account_number: String,
          addendum: T.nilable(String),
          company_descriptive_date: T.nilable(String),
          company_discretionary_data: T.nilable(String),
          company_entry_description: T.nilable(String),
          company_name: T.nilable(String),
          created_at: Time,
          credit_debit_indicator: T.nilable(Symbol),
          effective_date: T.nilable(Time),
          idempotency_key: T.nilable(String),
          notifications_of_change: T::Array[Increase::Models::ACHPrenotification::NotificationsOfChange],
          prenotification_return: T.nilable(Increase::Models::ACHPrenotification::PrenotificationReturn),
          routing_number: String,
          status: Symbol,
          type: Symbol
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        account_number:,
        addendum:,
        company_descriptive_date:,
        company_discretionary_data:,
        company_entry_description:,
        company_name:,
        created_at:,
        credit_debit_indicator:,
        effective_date:,
        idempotency_key:,
        notifications_of_change:,
        prenotification_return:,
        routing_number:,
        status:,
        type:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_number: String,
              addendum: T.nilable(String),
              company_descriptive_date: T.nilable(String),
              company_discretionary_data: T.nilable(String),
              company_entry_description: T.nilable(String),
              company_name: T.nilable(String),
              created_at: Time,
              credit_debit_indicator: T.nilable(Symbol),
              effective_date: T.nilable(Time),
              idempotency_key: T.nilable(String),
              notifications_of_change: T::Array[Increase::Models::ACHPrenotification::NotificationsOfChange],
              prenotification_return: T.nilable(Increase::Models::ACHPrenotification::PrenotificationReturn),
              routing_number: String,
              status: Symbol,
              type: Symbol
            }
          )
      end
      def to_hash
      end

      # If the notification is for a future credit or debit.
      class CreditDebitIndicator < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # The Prenotification is for an anticipated credit.
        CREDIT = :credit

        # The Prenotification is for an anticipated debit.
        DEBIT = :debit
      end

      class NotificationsOfChange < Increase::BaseModel
        # The required type of change that is being signaled by the receiving financial
        #   institution.
        sig { returns(Symbol) }
        def change_code
        end

        sig { params(_: Symbol).returns(Symbol) }
        def change_code=(_)
        end

        # The corrected data that should be used in future ACHs to this account. This may
        #   contain the suggested new account number or routing number. When the
        #   `change_code` is `incorrect_transaction_code`, this field contains an integer.
        #   Numbers starting with a 2 encourage changing the `funding` parameter to
        #   checking; numbers starting with a 3 encourage changing to savings.
        sig { returns(String) }
        def corrected_data
        end

        sig { params(_: String).returns(String) }
        def corrected_data=(_)
        end

        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the notification occurred.
        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig do
          params(change_code: Symbol, corrected_data: String, created_at: Time).returns(T.attached_class)
        end
        def self.new(change_code:, corrected_data:, created_at:)
        end

        sig { override.returns({change_code: Symbol, corrected_data: String, created_at: Time}) }
        def to_hash
        end

        # The required type of change that is being signaled by the receiving financial
        #   institution.
        class ChangeCode < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          # The account number was incorrect.
          INCORRECT_ACCOUNT_NUMBER = :incorrect_account_number

          # The routing number was incorrect.
          INCORRECT_ROUTING_NUMBER = :incorrect_routing_number

          # Both the routing number and the account number were incorrect.
          INCORRECT_ROUTING_NUMBER_AND_ACCOUNT_NUMBER = :incorrect_routing_number_and_account_number

          # The transaction code was incorrect. Try changing the `funding` parameter from checking to savings or vice-versa.
          INCORRECT_TRANSACTION_CODE = :incorrect_transaction_code

          # The account number and the transaction code were incorrect.
          INCORRECT_ACCOUNT_NUMBER_AND_TRANSACTION_CODE = :incorrect_account_number_and_transaction_code

          # The routing number, account number, and transaction code were incorrect.
          INCORRECT_ROUTING_NUMBER_ACCOUNT_NUMBER_AND_TRANSACTION_CODE =
            :incorrect_routing_number_account_number_and_transaction_code

          # The receiving depository financial institution identification was incorrect.
          INCORRECT_RECEIVING_DEPOSITORY_FINANCIAL_INSTITUTION_IDENTIFICATION =
            :incorrect_receiving_depository_financial_institution_identification

          # The individual identification number was incorrect.
          INCORRECT_INDIVIDUAL_IDENTIFICATION_NUMBER = :incorrect_individual_identification_number

          # The addenda had an incorrect format.
          ADDENDA_FORMAT_ERROR = :addenda_format_error

          # The standard entry class code was incorrect for an outbound international payment.
          INCORRECT_STANDARD_ENTRY_CLASS_CODE_FOR_OUTBOUND_INTERNATIONAL_PAYMENT =
            :incorrect_standard_entry_class_code_for_outbound_international_payment

          # The notification of change was misrouted.
          MISROUTED_NOTIFICATION_OF_CHANGE = :misrouted_notification_of_change

          # The trace number was incorrect.
          INCORRECT_TRACE_NUMBER = :incorrect_trace_number

          # The company identification number was incorrect.
          INCORRECT_COMPANY_IDENTIFICATION_NUMBER = :incorrect_company_identification_number

          # The individual identification number or identification number was incorrect.
          INCORRECT_IDENTIFICATION_NUMBER = :incorrect_identification_number

          # The corrected data was incorrectly formatted.
          INCORRECTLY_FORMATTED_CORRECTED_DATA = :incorrectly_formatted_corrected_data

          # The discretionary data was incorrect.
          INCORRECT_DISCRETIONARY_DATA = :incorrect_discretionary_data

          # The routing number was not from the original entry detail record.
          ROUTING_NUMBER_NOT_FROM_ORIGINAL_ENTRY_DETAIL_RECORD =
            :routing_number_not_from_original_entry_detail_record

          # The depository financial institution account number was not from the original entry detail record.
          DEPOSITORY_FINANCIAL_INSTITUTION_ACCOUNT_NUMBER_NOT_FROM_ORIGINAL_ENTRY_DETAIL_RECORD =
            :depository_financial_institution_account_number_not_from_original_entry_detail_record

          # The transaction code was incorrect, initiated by the originating depository financial institution.
          INCORRECT_TRANSACTION_CODE_BY_ORIGINATING_DEPOSITORY_FINANCIAL_INSTITUTION =
            :incorrect_transaction_code_by_originating_depository_financial_institution
        end
      end

      class PrenotificationReturn < Increase::BaseModel
        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the Prenotification was returned.
        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        # Why the Prenotification was returned.
        sig { returns(Symbol) }
        def return_reason_code
        end

        sig { params(_: Symbol).returns(Symbol) }
        def return_reason_code=(_)
        end

        # If your prenotification is returned, this will contain details of the return.
        sig { params(created_at: Time, return_reason_code: Symbol).returns(T.attached_class) }
        def self.new(created_at:, return_reason_code:)
        end

        sig { override.returns({created_at: Time, return_reason_code: Symbol}) }
        def to_hash
        end

        # Why the Prenotification was returned.
        class ReturnReasonCode < Increase::Enum
          abstract!

          Value = type_template(:out) { {fixed: Symbol} }

          # Code R01. Insufficient funds in the receiving account. Sometimes abbreviated to NSF.
          INSUFFICIENT_FUND = :insufficient_fund

          # Code R03. The account does not exist or the receiving bank was unable to locate it.
          NO_ACCOUNT = :no_account

          # Code R02. The account is closed at the receiving bank.
          ACCOUNT_CLOSED = :account_closed

          # Code R04. The account number is invalid at the receiving bank.
          INVALID_ACCOUNT_NUMBER_STRUCTURE = :invalid_account_number_structure

          # Code R16. The account at the receiving bank was frozen per the Office of Foreign Assets Control.
          ACCOUNT_FROZEN_ENTRY_RETURNED_PER_OFAC_INSTRUCTION = :account_frozen_entry_returned_per_ofac_instruction

          # Code R23. The receiving bank account refused a credit transfer.
          CREDIT_ENTRY_REFUSED_BY_RECEIVER = :credit_entry_refused_by_receiver

          # Code R05. The receiving bank rejected because of an incorrect Standard Entry Class code.
          UNAUTHORIZED_DEBIT_TO_CONSUMER_ACCOUNT_USING_CORPORATE_SEC_CODE =
            :unauthorized_debit_to_consumer_account_using_corporate_sec_code

          # Code R29. The corporate customer at the receiving bank reversed the transfer.
          CORPORATE_CUSTOMER_ADVISED_NOT_AUTHORIZED = :corporate_customer_advised_not_authorized

          # Code R08. The receiving bank stopped payment on this transfer.
          PAYMENT_STOPPED = :payment_stopped

          # Code R20. The receiving bank account does not perform transfers.
          NON_TRANSACTION_ACCOUNT = :non_transaction_account

          # Code R09. The receiving bank account does not have enough available balance for the transfer.
          UNCOLLECTED_FUNDS = :uncollected_funds

          # Code R28. The routing number is incorrect.
          ROUTING_NUMBER_CHECK_DIGIT_ERROR = :routing_number_check_digit_error

          # Code R10. The customer at the receiving bank reversed the transfer.
          CUSTOMER_ADVISED_UNAUTHORIZED_IMPROPER_INELIGIBLE_OR_INCOMPLETE =
            :customer_advised_unauthorized_improper_ineligible_or_incomplete

          # Code R19. The amount field is incorrect or too large.
          AMOUNT_FIELD_ERROR = :amount_field_error

          # Code R07. The customer at the receiving institution informed their bank that they have revoked authorization for a previously authorized transfer.
          AUTHORIZATION_REVOKED_BY_CUSTOMER = :authorization_revoked_by_customer

          # Code R13. The routing number is invalid.
          INVALID_ACH_ROUTING_NUMBER = :invalid_ach_routing_number

          # Code R17. The receiving bank is unable to process a field in the transfer.
          FILE_RECORD_EDIT_CRITERIA = :file_record_edit_criteria

          # Code R45. The individual name field was invalid.
          ENR_INVALID_INDIVIDUAL_NAME = :enr_invalid_individual_name

          # Code R06. The originating financial institution asked for this transfer to be returned. The receiving bank is complying with the request.
          RETURNED_PER_ODFI_REQUEST = :returned_per_odfi_request

          # Code R34. The receiving bank's regulatory supervisor has limited their participation in the ACH network.
          LIMITED_PARTICIPATION_DFI = :limited_participation_dfi

          # Code R85. The outbound international ACH transfer was incorrect.
          INCORRECTLY_CODED_OUTBOUND_INTERNATIONAL_PAYMENT = :incorrectly_coded_outbound_international_payment

          # Code R12. A rare return reason. The account was sold to another bank.
          ACCOUNT_SOLD_TO_ANOTHER_DFI = :account_sold_to_another_dfi

          # Code R25. The addenda record is incorrect or missing.
          ADDENDA_ERROR = :addenda_error

          # Code R15. A rare return reason. The account holder is deceased.
          BENEFICIARY_OR_ACCOUNT_HOLDER_DECEASED = :beneficiary_or_account_holder_deceased

          # Code R11. A rare return reason. The customer authorized some payment to the sender, but this payment was not in error.
          CUSTOMER_ADVISED_NOT_WITHIN_AUTHORIZATION_TERMS = :customer_advised_not_within_authorization_terms

          # Code R74. A rare return reason. Sent in response to a return that was returned with code `field_error`. The latest return should include the corrected field(s).
          CORRECTED_RETURN = :corrected_return

          # Code R24. A rare return reason. The receiving bank received an exact duplicate entry with the same trace number and amount.
          DUPLICATE_ENTRY = :duplicate_entry

          # Code R67. A rare return reason. The return this message refers to was a duplicate.
          DUPLICATE_RETURN = :duplicate_return

          # Code R47. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_DUPLICATE_ENROLLMENT = :enr_duplicate_enrollment

          # Code R43. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_INVALID_DFI_ACCOUNT_NUMBER = :enr_invalid_dfi_account_number

          # Code R44. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_INVALID_INDIVIDUAL_ID_NUMBER = :enr_invalid_individual_id_number

          # Code R46. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_INVALID_REPRESENTATIVE_PAYEE_INDICATOR = :enr_invalid_representative_payee_indicator

          # Code R41. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_INVALID_TRANSACTION_CODE = :enr_invalid_transaction_code

          # Code R40. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_RETURN_OF_ENR_ENTRY = :enr_return_of_enr_entry

          # Code R42. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_ROUTING_NUMBER_CHECK_DIGIT_ERROR = :enr_routing_number_check_digit_error

          # Code R84. A rare return reason. The International ACH Transfer cannot be processed by the gateway.
          ENTRY_NOT_PROCESSED_BY_GATEWAY = :entry_not_processed_by_gateway

          # Code R69. A rare return reason. One or more of the fields in the ACH were malformed.
          FIELD_ERROR = :field_error

          # Code R83. A rare return reason. The Foreign receiving bank was unable to settle this ACH transfer.
          FOREIGN_RECEIVING_DFI_UNABLE_TO_SETTLE = :foreign_receiving_dfi_unable_to_settle

          # Code R80. A rare return reason. The International ACH Transfer is malformed.
          IAT_ENTRY_CODING_ERROR = :iat_entry_coding_error

          # Code R18. A rare return reason. The ACH has an improper effective entry date field.
          IMPROPER_EFFECTIVE_ENTRY_DATE = :improper_effective_entry_date

          # Code R39. A rare return reason. The source document related to this ACH, usually an ACH check conversion, was presented to the bank.
          IMPROPER_SOURCE_DOCUMENT_SOURCE_DOCUMENT_PRESENTED = :improper_source_document_source_document_presented

          # Code R21. A rare return reason. The Company ID field of the ACH was invalid.
          INVALID_COMPANY_ID = :invalid_company_id

          # Code R82. A rare return reason. The foreign receiving bank identifier for an International ACH Transfer was invalid.
          INVALID_FOREIGN_RECEIVING_DFI_IDENTIFICATION = :invalid_foreign_receiving_dfi_identification

          # Code R22. A rare return reason. The Individual ID number field of the ACH was invalid.
          INVALID_INDIVIDUAL_ID_NUMBER = :invalid_individual_id_number

          # Code R53. A rare return reason. Both the Represented Check ("RCK") entry and the original check were presented to the bank.
          ITEM_AND_RCK_ENTRY_PRESENTED_FOR_PAYMENT = :item_and_rck_entry_presented_for_payment

          # Code R51. A rare return reason. The Represented Check ("RCK") entry is ineligible.
          ITEM_RELATED_TO_RCK_ENTRY_IS_INELIGIBLE = :item_related_to_rck_entry_is_ineligible

          # Code R26. A rare return reason. The ACH is missing a required field.
          MANDATORY_FIELD_ERROR = :mandatory_field_error

          # Code R71. A rare return reason. The receiving bank does not recognize the routing number in a dishonored return entry.
          MISROUTED_DISHONORED_RETURN = :misrouted_dishonored_return

          # Code R61. A rare return reason. The receiving bank does not recognize the routing number in a return entry.
          MISROUTED_RETURN = :misrouted_return

          # Code R76. A rare return reason. Sent in response to a return, the bank does not find the errors alleged by the returning bank.
          NO_ERRORS_FOUND = :no_errors_found

          # Code R77. A rare return reason. The receiving bank does not accept the return of the erroneous debit. The funds are not available at the receiving bank.
          NON_ACCEPTANCE_OF_R62_DISHONORED_RETURN = :non_acceptance_of_r62_dishonored_return

          # Code R81. A rare return reason. The receiving bank does not accept International ACH Transfers.
          NON_PARTICIPANT_IN_IAT_PROGRAM = :non_participant_in_iat_program

          # Code R31. A rare return reason. A return that has been agreed to be accepted by the receiving bank, despite falling outside of the usual return timeframe.
          PERMISSIBLE_RETURN_ENTRY = :permissible_return_entry

          # Code R70. A rare return reason. The receiving bank had not approved this return.
          PERMISSIBLE_RETURN_ENTRY_NOT_ACCEPTED = :permissible_return_entry_not_accepted

          # Code R32. A rare return reason. The receiving bank could not settle this transaction.
          RDFI_NON_SETTLEMENT = :rdfi_non_settlement

          # Code R30. A rare return reason. The receiving bank does not accept Check Truncation ACH transfers.
          RDFI_PARTICIPANT_IN_CHECK_TRUNCATION_PROGRAM = :rdfi_participant_in_check_truncation_program

          # Code R14. A rare return reason. The payee is deceased.
          REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE_IN_THAT_CAPACITY =
            :representative_payee_deceased_or_unable_to_continue_in_that_capacity

          # Code R75. A rare return reason. The originating bank disputes that an earlier `duplicate_entry` return was actually a duplicate.
          RETURN_NOT_A_DUPLICATE = :return_not_a_duplicate

          # Code R62. A rare return reason. The originating financial institution made a mistake and this return corrects it.
          RETURN_OF_ERRONEOUS_OR_REVERSING_DEBIT = :return_of_erroneous_or_reversing_debit

          # Code R36. A rare return reason. Return of a malformed credit entry.
          RETURN_OF_IMPROPER_CREDIT_ENTRY = :return_of_improper_credit_entry

          # Code R35. A rare return reason. Return of a malformed debit entry.
          RETURN_OF_IMPROPER_DEBIT_ENTRY = :return_of_improper_debit_entry

          # Code R33. A rare return reason. Return of a Destroyed Check ("XKC") entry.
          RETURN_OF_XCK_ENTRY = :return_of_xck_entry

          # Code R37. A rare return reason. The source document related to this ACH, usually an ACH check conversion, was presented to the bank.
          SOURCE_DOCUMENT_PRESENTED_FOR_PAYMENT = :source_document_presented_for_payment

          # Code R50. A rare return reason. State law prevents the bank from accepting the Represented Check ("RCK") entry.
          STATE_LAW_AFFECTING_RCK_ACCEPTANCE = :state_law_affecting_rck_acceptance

          # Code R52. A rare return reason. A stop payment was issued on a Represented Check ("RCK") entry.
          STOP_PAYMENT_ON_ITEM_RELATED_TO_RCK_ENTRY = :stop_payment_on_item_related_to_rck_entry

          # Code R38. A rare return reason. The source attached to the ACH, usually an ACH check conversion, includes a stop payment.
          STOP_PAYMENT_ON_SOURCE_DOCUMENT = :stop_payment_on_source_document

          # Code R73. A rare return reason. The bank receiving an `untimely_return` believes it was on time.
          TIMELY_ORIGINAL_RETURN = :timely_original_return

          # Code R27. A rare return reason. An ACH return's trace number does not match an originated ACH.
          TRACE_NUMBER_ERROR = :trace_number_error

          # Code R72. A rare return reason. The dishonored return was sent too late.
          UNTIMELY_DISHONORED_RETURN = :untimely_dishonored_return

          # Code R68. A rare return reason. The return was sent too late.
          UNTIMELY_RETURN = :untimely_return
        end
      end

      # The lifecycle status of the ACH Prenotification.
      class Status < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        # The Prenotification is pending submission.
        PENDING_SUBMITTING = :pending_submitting

        # The Prenotification requires attention.
        REQUIRES_ATTENTION = :requires_attention

        # The Prenotification has been returned.
        RETURNED = :returned

        # The Prenotification is complete.
        SUBMITTED = :submitted
      end

      # A constant representing the object's type. For this resource it will always be
      #   `ach_prenotification`.
      class Type < Increase::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        ACH_PRENOTIFICATION = :ach_prenotification
      end
    end
  end
end
