# typed: strong

module Increase
  module Models
    class ACHPrenotification < Increase::Internal::Type::BaseModel
      # The ACH Prenotification's identifier.
      sig { returns(String) }
      attr_accessor :id

      # The destination account number.
      sig { returns(String) }
      attr_accessor :account_number

      # Additional information for the recipient.
      sig { returns(T.nilable(String)) }
      attr_accessor :addendum

      # The description of the date of the notification.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_descriptive_date

      # Optional data associated with the notification.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_discretionary_data

      # The description of the notification.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_entry_description

      # The name by which you know the company.
      sig { returns(T.nilable(String)) }
      attr_accessor :company_name

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      # the prenotification was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # If the notification is for a future credit or debit.
      sig do
        returns(
          T.nilable(
            Increase::Models::ACHPrenotification::CreditDebitIndicator::TaggedSymbol
          )
        )
      end
      attr_accessor :credit_debit_indicator

      # The effective date in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
      sig { returns(T.nilable(Time)) }
      attr_accessor :effective_date

      # The idempotency key you chose for this object. This value is unique across
      # Increase and is used to ensure that a request is only processed once. Learn more
      # about [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # If the receiving bank notifies that future transfers should use different
      # details, this will contain those details.
      sig do
        returns(
          T::Array[Increase::Models::ACHPrenotification::NotificationsOfChange]
        )
      end
      attr_accessor :notifications_of_change

      # If your prenotification is returned, this will contain details of the return.
      sig do
        returns(
          T.nilable(Increase::Models::ACHPrenotification::PrenotificationReturn)
        )
      end
      attr_reader :prenotification_return

      sig do
        params(
          prenotification_return:
            T.nilable(
              T.any(
                Increase::Models::ACHPrenotification::PrenotificationReturn,
                Increase::Internal::AnyHash
              )
            )
        ).void
      end
      attr_writer :prenotification_return

      # The American Bankers' Association (ABA) Routing Transit Number (RTN).
      sig { returns(String) }
      attr_accessor :routing_number

      # The lifecycle status of the ACH Prenotification.
      sig do
        returns(Increase::Models::ACHPrenotification::Status::TaggedSymbol)
      end
      attr_accessor :status

      # A constant representing the object's type. For this resource it will always be
      # `ach_prenotification`.
      sig { returns(Increase::Models::ACHPrenotification::Type::TaggedSymbol) }
      attr_accessor :type

      # ACH Prenotifications are one way you can verify account and routing numbers by
      # Automated Clearing House (ACH).
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
          credit_debit_indicator:
            T.nilable(
              Increase::Models::ACHPrenotification::CreditDebitIndicator::OrSymbol
            ),
          effective_date: T.nilable(Time),
          idempotency_key: T.nilable(String),
          notifications_of_change:
            T::Array[
              T.any(
                Increase::Models::ACHPrenotification::NotificationsOfChange,
                Increase::Internal::AnyHash
              )
            ],
          prenotification_return:
            T.nilable(
              T.any(
                Increase::Models::ACHPrenotification::PrenotificationReturn,
                Increase::Internal::AnyHash
              )
            ),
          routing_number: String,
          status: Increase::Models::ACHPrenotification::Status::OrSymbol,
          type: Increase::Models::ACHPrenotification::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ACH Prenotification's identifier.
        id:,
        # The destination account number.
        account_number:,
        # Additional information for the recipient.
        addendum:,
        # The description of the date of the notification.
        company_descriptive_date:,
        # Optional data associated with the notification.
        company_discretionary_data:,
        # The description of the notification.
        company_entry_description:,
        # The name by which you know the company.
        company_name:,
        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        # the prenotification was created.
        created_at:,
        # If the notification is for a future credit or debit.
        credit_debit_indicator:,
        # The effective date in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
        effective_date:,
        # The idempotency key you chose for this object. This value is unique across
        # Increase and is used to ensure that a request is only processed once. Learn more
        # about [idempotency](https://increase.com/documentation/idempotency-keys).
        idempotency_key:,
        # If the receiving bank notifies that future transfers should use different
        # details, this will contain those details.
        notifications_of_change:,
        # If your prenotification is returned, this will contain details of the return.
        prenotification_return:,
        # The American Bankers' Association (ABA) Routing Transit Number (RTN).
        routing_number:,
        # The lifecycle status of the ACH Prenotification.
        status:,
        # A constant representing the object's type. For this resource it will always be
        # `ach_prenotification`.
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_number: String,
            addendum: T.nilable(String),
            company_descriptive_date: T.nilable(String),
            company_discretionary_data: T.nilable(String),
            company_entry_description: T.nilable(String),
            company_name: T.nilable(String),
            created_at: Time,
            credit_debit_indicator:
              T.nilable(
                Increase::Models::ACHPrenotification::CreditDebitIndicator::TaggedSymbol
              ),
            effective_date: T.nilable(Time),
            idempotency_key: T.nilable(String),
            notifications_of_change:
              T::Array[
                Increase::Models::ACHPrenotification::NotificationsOfChange
              ],
            prenotification_return:
              T.nilable(
                Increase::Models::ACHPrenotification::PrenotificationReturn
              ),
            routing_number: String,
            status: Increase::Models::ACHPrenotification::Status::TaggedSymbol,
            type: Increase::Models::ACHPrenotification::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # If the notification is for a future credit or debit.
      module CreditDebitIndicator
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Increase::Models::ACHPrenotification::CreditDebitIndicator
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        # The Prenotification is for an anticipated credit.
        CREDIT =
          T.let(
            :credit,
            Increase::Models::ACHPrenotification::CreditDebitIndicator::TaggedSymbol
          )

        # The Prenotification is for an anticipated debit.
        DEBIT =
          T.let(
            :debit,
            Increase::Models::ACHPrenotification::CreditDebitIndicator::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Increase::Models::ACHPrenotification::CreditDebitIndicator::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class NotificationsOfChange < Increase::Internal::Type::BaseModel
        # The required type of change that is being signaled by the receiving financial
        # institution.
        sig do
          returns(
            Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol
          )
        end
        attr_accessor :change_code

        # The corrected data that should be used in future ACHs to this account. This may
        # contain the suggested new account number or routing number. When the
        # `change_code` is `incorrect_transaction_code`, this field contains an integer.
        # Numbers starting with a 2 encourage changing the `funding` parameter to
        # checking; numbers starting with a 3 encourage changing to savings.
        sig { returns(String) }
        attr_accessor :corrected_data

        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        # the notification occurred.
        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          params(
            change_code:
              Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::OrSymbol,
            corrected_data: String,
            created_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The required type of change that is being signaled by the receiving financial
          # institution.
          change_code:,
          # The corrected data that should be used in future ACHs to this account. This may
          # contain the suggested new account number or routing number. When the
          # `change_code` is `incorrect_transaction_code`, this field contains an integer.
          # Numbers starting with a 2 encourage changing the `funding` parameter to
          # checking; numbers starting with a 3 encourage changing to savings.
          corrected_data:,
          # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          # the notification occurred.
          created_at:
        )
        end

        sig do
          override.returns(
            {
              change_code:
                Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol,
              corrected_data: String,
              created_at: Time
            }
          )
        end
        def to_hash
        end

        # The required type of change that is being signaled by the receiving financial
        # institution.
        module ChangeCode
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          # The account number was incorrect.
          INCORRECT_ACCOUNT_NUMBER =
            T.let(
              :incorrect_account_number,
              Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The routing number was incorrect.
          INCORRECT_ROUTING_NUMBER =
            T.let(
              :incorrect_routing_number,
              Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # Both the routing number and the account number were incorrect.
          INCORRECT_ROUTING_NUMBER_AND_ACCOUNT_NUMBER =
            T.let(
              :incorrect_routing_number_and_account_number,
              Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The transaction code was incorrect. Try changing the `funding` parameter from checking to savings or vice-versa.
          INCORRECT_TRANSACTION_CODE =
            T.let(
              :incorrect_transaction_code,
              Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The account number and the transaction code were incorrect.
          INCORRECT_ACCOUNT_NUMBER_AND_TRANSACTION_CODE =
            T.let(
              :incorrect_account_number_and_transaction_code,
              Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The routing number, account number, and transaction code were incorrect.
          INCORRECT_ROUTING_NUMBER_ACCOUNT_NUMBER_AND_TRANSACTION_CODE =
            T.let(
              :incorrect_routing_number_account_number_and_transaction_code,
              Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The receiving depository financial institution identification was incorrect.
          INCORRECT_RECEIVING_DEPOSITORY_FINANCIAL_INSTITUTION_IDENTIFICATION =
            T.let(
              :incorrect_receiving_depository_financial_institution_identification,
              Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The individual identification number was incorrect.
          INCORRECT_INDIVIDUAL_IDENTIFICATION_NUMBER =
            T.let(
              :incorrect_individual_identification_number,
              Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The addenda had an incorrect format.
          ADDENDA_FORMAT_ERROR =
            T.let(
              :addenda_format_error,
              Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The standard entry class code was incorrect for an outbound international payment.
          INCORRECT_STANDARD_ENTRY_CLASS_CODE_FOR_OUTBOUND_INTERNATIONAL_PAYMENT =
            T.let(
              :incorrect_standard_entry_class_code_for_outbound_international_payment,
              Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The notification of change was misrouted.
          MISROUTED_NOTIFICATION_OF_CHANGE =
            T.let(
              :misrouted_notification_of_change,
              Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The trace number was incorrect.
          INCORRECT_TRACE_NUMBER =
            T.let(
              :incorrect_trace_number,
              Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The company identification number was incorrect.
          INCORRECT_COMPANY_IDENTIFICATION_NUMBER =
            T.let(
              :incorrect_company_identification_number,
              Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The individual identification number or identification number was incorrect.
          INCORRECT_IDENTIFICATION_NUMBER =
            T.let(
              :incorrect_identification_number,
              Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The corrected data was incorrectly formatted.
          INCORRECTLY_FORMATTED_CORRECTED_DATA =
            T.let(
              :incorrectly_formatted_corrected_data,
              Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The discretionary data was incorrect.
          INCORRECT_DISCRETIONARY_DATA =
            T.let(
              :incorrect_discretionary_data,
              Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The routing number was not from the original entry detail record.
          ROUTING_NUMBER_NOT_FROM_ORIGINAL_ENTRY_DETAIL_RECORD =
            T.let(
              :routing_number_not_from_original_entry_detail_record,
              Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The depository financial institution account number was not from the original entry detail record.
          DEPOSITORY_FINANCIAL_INSTITUTION_ACCOUNT_NUMBER_NOT_FROM_ORIGINAL_ENTRY_DETAIL_RECORD =
            T.let(
              :depository_financial_institution_account_number_not_from_original_entry_detail_record,
              Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          # The transaction code was incorrect, initiated by the originating depository financial institution.
          INCORRECT_TRANSACTION_CODE_BY_ORIGINATING_DEPOSITORY_FINANCIAL_INSTITUTION =
            T.let(
              :incorrect_transaction_code_by_originating_depository_financial_institution,
              Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Increase::Models::ACHPrenotification::NotificationsOfChange::ChangeCode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class PrenotificationReturn < Increase::Internal::Type::BaseModel
        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        # the Prenotification was returned.
        sig { returns(Time) }
        attr_accessor :created_at

        # Why the Prenotification was returned.
        sig do
          returns(
            Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
          )
        end
        attr_accessor :return_reason_code

        # If your prenotification is returned, this will contain details of the return.
        sig do
          params(
            created_at: Time,
            return_reason_code:
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
          # the Prenotification was returned.
          created_at:,
          # Why the Prenotification was returned.
          return_reason_code:
        )
        end

        sig do
          override.returns(
            {
              created_at: Time,
              return_reason_code:
                Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Why the Prenotification was returned.
        module ReturnReasonCode
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          # Code R01. Insufficient funds in the receiving account. Sometimes abbreviated to NSF.
          INSUFFICIENT_FUND =
            T.let(
              :insufficient_fund,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R03. The account does not exist or the receiving bank was unable to locate it.
          NO_ACCOUNT =
            T.let(
              :no_account,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R02. The account is closed at the receiving bank.
          ACCOUNT_CLOSED =
            T.let(
              :account_closed,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R04. The account number is invalid at the receiving bank.
          INVALID_ACCOUNT_NUMBER_STRUCTURE =
            T.let(
              :invalid_account_number_structure,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R16. The account at the receiving bank was frozen per the Office of Foreign Assets Control.
          ACCOUNT_FROZEN_ENTRY_RETURNED_PER_OFAC_INSTRUCTION =
            T.let(
              :account_frozen_entry_returned_per_ofac_instruction,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R23. The receiving bank account refused a credit transfer.
          CREDIT_ENTRY_REFUSED_BY_RECEIVER =
            T.let(
              :credit_entry_refused_by_receiver,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R05. The receiving bank rejected because of an incorrect Standard Entry Class code.
          UNAUTHORIZED_DEBIT_TO_CONSUMER_ACCOUNT_USING_CORPORATE_SEC_CODE =
            T.let(
              :unauthorized_debit_to_consumer_account_using_corporate_sec_code,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R29. The corporate customer at the receiving bank reversed the transfer.
          CORPORATE_CUSTOMER_ADVISED_NOT_AUTHORIZED =
            T.let(
              :corporate_customer_advised_not_authorized,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R08. The receiving bank stopped payment on this transfer.
          PAYMENT_STOPPED =
            T.let(
              :payment_stopped,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R20. The receiving bank account does not perform transfers.
          NON_TRANSACTION_ACCOUNT =
            T.let(
              :non_transaction_account,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R09. The receiving bank account does not have enough available balance for the transfer.
          UNCOLLECTED_FUNDS =
            T.let(
              :uncollected_funds,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R28. The routing number is incorrect.
          ROUTING_NUMBER_CHECK_DIGIT_ERROR =
            T.let(
              :routing_number_check_digit_error,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R10. The customer at the receiving bank reversed the transfer.
          CUSTOMER_ADVISED_UNAUTHORIZED_IMPROPER_INELIGIBLE_OR_INCOMPLETE =
            T.let(
              :customer_advised_unauthorized_improper_ineligible_or_incomplete,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R19. The amount field is incorrect or too large.
          AMOUNT_FIELD_ERROR =
            T.let(
              :amount_field_error,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R07. The customer at the receiving institution informed their bank that they have revoked authorization for a previously authorized transfer.
          AUTHORIZATION_REVOKED_BY_CUSTOMER =
            T.let(
              :authorization_revoked_by_customer,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R13. The routing number is invalid.
          INVALID_ACH_ROUTING_NUMBER =
            T.let(
              :invalid_ach_routing_number,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R17. The receiving bank is unable to process a field in the transfer.
          FILE_RECORD_EDIT_CRITERIA =
            T.let(
              :file_record_edit_criteria,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R45. The individual name field was invalid.
          ENR_INVALID_INDIVIDUAL_NAME =
            T.let(
              :enr_invalid_individual_name,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R06. The originating financial institution asked for this transfer to be returned. The receiving bank is complying with the request.
          RETURNED_PER_ODFI_REQUEST =
            T.let(
              :returned_per_odfi_request,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R34. The receiving bank's regulatory supervisor has limited their participation in the ACH network.
          LIMITED_PARTICIPATION_DFI =
            T.let(
              :limited_participation_dfi,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R85. The outbound international ACH transfer was incorrect.
          INCORRECTLY_CODED_OUTBOUND_INTERNATIONAL_PAYMENT =
            T.let(
              :incorrectly_coded_outbound_international_payment,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R12. A rare return reason. The account was sold to another bank.
          ACCOUNT_SOLD_TO_ANOTHER_DFI =
            T.let(
              :account_sold_to_another_dfi,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R25. The addenda record is incorrect or missing.
          ADDENDA_ERROR =
            T.let(
              :addenda_error,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R15. A rare return reason. The account holder is deceased.
          BENEFICIARY_OR_ACCOUNT_HOLDER_DECEASED =
            T.let(
              :beneficiary_or_account_holder_deceased,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R11. A rare return reason. The customer authorized some payment to the sender, but this payment was not in error.
          CUSTOMER_ADVISED_NOT_WITHIN_AUTHORIZATION_TERMS =
            T.let(
              :customer_advised_not_within_authorization_terms,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R74. A rare return reason. Sent in response to a return that was returned with code `field_error`. The latest return should include the corrected field(s).
          CORRECTED_RETURN =
            T.let(
              :corrected_return,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R24. A rare return reason. The receiving bank received an exact duplicate entry with the same trace number and amount.
          DUPLICATE_ENTRY =
            T.let(
              :duplicate_entry,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R67. A rare return reason. The return this message refers to was a duplicate.
          DUPLICATE_RETURN =
            T.let(
              :duplicate_return,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R47. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_DUPLICATE_ENROLLMENT =
            T.let(
              :enr_duplicate_enrollment,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R43. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_INVALID_DFI_ACCOUNT_NUMBER =
            T.let(
              :enr_invalid_dfi_account_number,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R44. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_INVALID_INDIVIDUAL_ID_NUMBER =
            T.let(
              :enr_invalid_individual_id_number,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R46. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_INVALID_REPRESENTATIVE_PAYEE_INDICATOR =
            T.let(
              :enr_invalid_representative_payee_indicator,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R41. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_INVALID_TRANSACTION_CODE =
            T.let(
              :enr_invalid_transaction_code,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R40. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_RETURN_OF_ENR_ENTRY =
            T.let(
              :enr_return_of_enr_entry,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R42. A rare return reason. Only used for US Government agency non-monetary automatic enrollment messages.
          ENR_ROUTING_NUMBER_CHECK_DIGIT_ERROR =
            T.let(
              :enr_routing_number_check_digit_error,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R84. A rare return reason. The International ACH Transfer cannot be processed by the gateway.
          ENTRY_NOT_PROCESSED_BY_GATEWAY =
            T.let(
              :entry_not_processed_by_gateway,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R69. A rare return reason. One or more of the fields in the ACH were malformed.
          FIELD_ERROR =
            T.let(
              :field_error,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R83. A rare return reason. The Foreign receiving bank was unable to settle this ACH transfer.
          FOREIGN_RECEIVING_DFI_UNABLE_TO_SETTLE =
            T.let(
              :foreign_receiving_dfi_unable_to_settle,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R80. A rare return reason. The International ACH Transfer is malformed.
          IAT_ENTRY_CODING_ERROR =
            T.let(
              :iat_entry_coding_error,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R18. A rare return reason. The ACH has an improper effective entry date field.
          IMPROPER_EFFECTIVE_ENTRY_DATE =
            T.let(
              :improper_effective_entry_date,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R39. A rare return reason. The source document related to this ACH, usually an ACH check conversion, was presented to the bank.
          IMPROPER_SOURCE_DOCUMENT_SOURCE_DOCUMENT_PRESENTED =
            T.let(
              :improper_source_document_source_document_presented,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R21. A rare return reason. The Company ID field of the ACH was invalid.
          INVALID_COMPANY_ID =
            T.let(
              :invalid_company_id,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R82. A rare return reason. The foreign receiving bank identifier for an International ACH Transfer was invalid.
          INVALID_FOREIGN_RECEIVING_DFI_IDENTIFICATION =
            T.let(
              :invalid_foreign_receiving_dfi_identification,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R22. A rare return reason. The Individual ID number field of the ACH was invalid.
          INVALID_INDIVIDUAL_ID_NUMBER =
            T.let(
              :invalid_individual_id_number,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R53. A rare return reason. Both the Represented Check ("RCK") entry and the original check were presented to the bank.
          ITEM_AND_RCK_ENTRY_PRESENTED_FOR_PAYMENT =
            T.let(
              :item_and_rck_entry_presented_for_payment,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R51. A rare return reason. The Represented Check ("RCK") entry is ineligible.
          ITEM_RELATED_TO_RCK_ENTRY_IS_INELIGIBLE =
            T.let(
              :item_related_to_rck_entry_is_ineligible,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R26. A rare return reason. The ACH is missing a required field.
          MANDATORY_FIELD_ERROR =
            T.let(
              :mandatory_field_error,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R71. A rare return reason. The receiving bank does not recognize the routing number in a dishonored return entry.
          MISROUTED_DISHONORED_RETURN =
            T.let(
              :misrouted_dishonored_return,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R61. A rare return reason. The receiving bank does not recognize the routing number in a return entry.
          MISROUTED_RETURN =
            T.let(
              :misrouted_return,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R76. A rare return reason. Sent in response to a return, the bank does not find the errors alleged by the returning bank.
          NO_ERRORS_FOUND =
            T.let(
              :no_errors_found,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R77. A rare return reason. The receiving bank does not accept the return of the erroneous debit. The funds are not available at the receiving bank.
          NON_ACCEPTANCE_OF_R62_DISHONORED_RETURN =
            T.let(
              :non_acceptance_of_r62_dishonored_return,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R81. A rare return reason. The receiving bank does not accept International ACH Transfers.
          NON_PARTICIPANT_IN_IAT_PROGRAM =
            T.let(
              :non_participant_in_iat_program,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R31. A rare return reason. A return that has been agreed to be accepted by the receiving bank, despite falling outside of the usual return timeframe.
          PERMISSIBLE_RETURN_ENTRY =
            T.let(
              :permissible_return_entry,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R70. A rare return reason. The receiving bank had not approved this return.
          PERMISSIBLE_RETURN_ENTRY_NOT_ACCEPTED =
            T.let(
              :permissible_return_entry_not_accepted,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R32. A rare return reason. The receiving bank could not settle this transaction.
          RDFI_NON_SETTLEMENT =
            T.let(
              :rdfi_non_settlement,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R30. A rare return reason. The receiving bank does not accept Check Truncation ACH transfers.
          RDFI_PARTICIPANT_IN_CHECK_TRUNCATION_PROGRAM =
            T.let(
              :rdfi_participant_in_check_truncation_program,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R14. A rare return reason. The payee is deceased.
          REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE_IN_THAT_CAPACITY =
            T.let(
              :representative_payee_deceased_or_unable_to_continue_in_that_capacity,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R75. A rare return reason. The originating bank disputes that an earlier `duplicate_entry` return was actually a duplicate.
          RETURN_NOT_A_DUPLICATE =
            T.let(
              :return_not_a_duplicate,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R62. A rare return reason. The originating financial institution made a mistake and this return corrects it.
          RETURN_OF_ERRONEOUS_OR_REVERSING_DEBIT =
            T.let(
              :return_of_erroneous_or_reversing_debit,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R36. A rare return reason. Return of a malformed credit entry.
          RETURN_OF_IMPROPER_CREDIT_ENTRY =
            T.let(
              :return_of_improper_credit_entry,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R35. A rare return reason. Return of a malformed debit entry.
          RETURN_OF_IMPROPER_DEBIT_ENTRY =
            T.let(
              :return_of_improper_debit_entry,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R33. A rare return reason. Return of a Destroyed Check ("XKC") entry.
          RETURN_OF_XCK_ENTRY =
            T.let(
              :return_of_xck_entry,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R37. A rare return reason. The source document related to this ACH, usually an ACH check conversion, was presented to the bank.
          SOURCE_DOCUMENT_PRESENTED_FOR_PAYMENT =
            T.let(
              :source_document_presented_for_payment,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R50. A rare return reason. State law prevents the bank from accepting the Represented Check ("RCK") entry.
          STATE_LAW_AFFECTING_RCK_ACCEPTANCE =
            T.let(
              :state_law_affecting_rck_acceptance,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R52. A rare return reason. A stop payment was issued on a Represented Check ("RCK") entry.
          STOP_PAYMENT_ON_ITEM_RELATED_TO_RCK_ENTRY =
            T.let(
              :stop_payment_on_item_related_to_rck_entry,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R38. A rare return reason. The source attached to the ACH, usually an ACH check conversion, includes a stop payment.
          STOP_PAYMENT_ON_SOURCE_DOCUMENT =
            T.let(
              :stop_payment_on_source_document,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R73. A rare return reason. The bank receiving an `untimely_return` believes it was on time.
          TIMELY_ORIGINAL_RETURN =
            T.let(
              :timely_original_return,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R27. A rare return reason. An ACH return's trace number does not match an originated ACH.
          TRACE_NUMBER_ERROR =
            T.let(
              :trace_number_error,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R72. A rare return reason. The dishonored return was sent too late.
          UNTIMELY_DISHONORED_RETURN =
            T.let(
              :untimely_dishonored_return,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          # Code R68. A rare return reason. The return was sent too late.
          UNTIMELY_RETURN =
            T.let(
              :untimely_return,
              Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Increase::Models::ACHPrenotification::PrenotificationReturn::ReturnReasonCode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The lifecycle status of the ACH Prenotification.
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Increase::Models::ACHPrenotification::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        # The Prenotification is pending submission.
        PENDING_SUBMITTING =
          T.let(
            :pending_submitting,
            Increase::Models::ACHPrenotification::Status::TaggedSymbol
          )

        # The Prenotification requires attention.
        REQUIRES_ATTENTION =
          T.let(
            :requires_attention,
            Increase::Models::ACHPrenotification::Status::TaggedSymbol
          )

        # The Prenotification has been returned.
        RETURNED =
          T.let(
            :returned,
            Increase::Models::ACHPrenotification::Status::TaggedSymbol
          )

        # The Prenotification is complete.
        SUBMITTED =
          T.let(
            :submitted,
            Increase::Models::ACHPrenotification::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Increase::Models::ACHPrenotification::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # A constant representing the object's type. For this resource it will always be
      # `ach_prenotification`.
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Increase::Models::ACHPrenotification::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACH_PRENOTIFICATION =
          T.let(
            :ach_prenotification,
            Increase::Models::ACHPrenotification::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Increase::Models::ACHPrenotification::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
