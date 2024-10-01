# frozen_string_literal: true

module Increase
  module Models
    class Transaction < BaseModel
      # @!attribute [rw] id
      #   The Transaction identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The identifier for the Account the Transaction belongs to.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] amount
      #   The Transaction amount in the minor unit of its currency. For dollars, for example, this is cents.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which the Transaction occurred.
      #   @return [DateTime]
      required :created_at, DateTime

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Transaction's currency. This will match the currency on the Transaction's Account.
      #   @return [Symbol, Increase::Models::Transaction::Currency]
      required :currency, enum: -> { Increase::Models::Transaction::Currency }

      # @!attribute [rw] description
      #   An informational message describing this transaction. Use the fields in `source` to get more detailed information. This field appears as the line-item on the statement.
      #   @return [String]
      required :description, String

      # @!attribute [rw] route_id
      #   The identifier for the route this Transaction came through. Routes are things like cards and ACH details.
      #   @return [String]
      required :route_id, String

      # @!attribute [rw] route_type
      #   The type of the route this Transaction came through.
      #   @return [Symbol, Increase::Models::Transaction::RouteType]
      required :route_type, enum: -> { Increase::Models::Transaction::RouteType }

      # @!attribute [rw] source
      #   This is an object giving more details on the network-level event that caused the Transaction. Note that for backwards compatibility reasons, additional undocumented keys may appear in this object. These should be treated as deprecated and will be removed in the future.
      #   @return [Increase::Models::Transaction::Source]
      required :source, -> { Increase::Models::Transaction::Source }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `transaction`.
      #   @return [Symbol, Increase::Models::Transaction::Type]
      required :type, enum: -> { Increase::Models::Transaction::Type }

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Transaction's currency. This will match the currency on the Transaction's Account.
      class Currency < Increase::Enum
        # Canadian Dollar (CAD)
        CAD = :CAD

        # Swiss Franc (CHF)
        CHF = :CHF

        # Euro (EUR)
        EUR = :EUR

        # British Pound (GBP)
        GBP = :GBP

        # Japanese Yen (JPY)
        JPY = :JPY

        # US Dollar (USD)
        USD = :USD
      end

      # The type of the route this Transaction came through.
      class RouteType < Increase::Enum
        # An Account Number.
        ACCOUNT_NUMBER = :account_number

        # A Card.
        CARD = :card

        # A Lockbox.
        LOCKBOX = :lockbox
      end

      class Source < BaseModel
        # @!attribute [rw] account_transfer_intention
        #   An Account Transfer Intention object. This field will be present in the JSON response if and only if `category` is equal to `account_transfer_intention`.
        #   @return [Increase::Models::Transaction::Source::AccountTransferIntention]
        required :account_transfer_intention,
                 -> { Increase::Models::Transaction::Source::AccountTransferIntention }

        # @!attribute [rw] ach_transfer_intention
        #   An ACH Transfer Intention object. This field will be present in the JSON response if and only if `category` is equal to `ach_transfer_intention`.
        #   @return [Increase::Models::Transaction::Source::ACHTransferIntention]
        required :ach_transfer_intention, -> { Increase::Models::Transaction::Source::ACHTransferIntention }

        # @!attribute [rw] ach_transfer_rejection
        #   An ACH Transfer Rejection object. This field will be present in the JSON response if and only if `category` is equal to `ach_transfer_rejection`.
        #   @return [Increase::Models::Transaction::Source::ACHTransferRejection]
        required :ach_transfer_rejection, -> { Increase::Models::Transaction::Source::ACHTransferRejection }

        # @!attribute [rw] ach_transfer_return
        #   An ACH Transfer Return object. This field will be present in the JSON response if and only if `category` is equal to `ach_transfer_return`.
        #   @return [Increase::Models::Transaction::Source::ACHTransferReturn]
        required :ach_transfer_return, -> { Increase::Models::Transaction::Source::ACHTransferReturn }

        # @!attribute [rw] card_dispute_acceptance
        #   A Card Dispute Acceptance object. This field will be present in the JSON response if and only if `category` is equal to `card_dispute_acceptance`.
        #   @return [Increase::Models::Transaction::Source::CardDisputeAcceptance]
        required :card_dispute_acceptance, -> { Increase::Models::Transaction::Source::CardDisputeAcceptance }

        # @!attribute [rw] card_dispute_loss
        #   A Card Dispute Loss object. This field will be present in the JSON response if and only if `category` is equal to `card_dispute_loss`.
        #   @return [Increase::Models::Transaction::Source::CardDisputeLoss]
        required :card_dispute_loss, -> { Increase::Models::Transaction::Source::CardDisputeLoss }

        # @!attribute [rw] card_refund
        #   A Card Refund object. This field will be present in the JSON response if and only if `category` is equal to `card_refund`.
        #   @return [Increase::Models::Transaction::Source::CardRefund]
        required :card_refund, -> { Increase::Models::Transaction::Source::CardRefund }

        # @!attribute [rw] card_revenue_payment
        #   A Card Revenue Payment object. This field will be present in the JSON response if and only if `category` is equal to `card_revenue_payment`.
        #   @return [Increase::Models::Transaction::Source::CardRevenuePayment]
        required :card_revenue_payment, -> { Increase::Models::Transaction::Source::CardRevenuePayment }

        # @!attribute [rw] card_settlement
        #   A Card Settlement object. This field will be present in the JSON response if and only if `category` is equal to `card_settlement`.
        #   @return [Increase::Models::Transaction::Source::CardSettlement]
        required :card_settlement, -> { Increase::Models::Transaction::Source::CardSettlement }

        # @!attribute [rw] cashback_payment
        #   A Cashback Payment object. This field will be present in the JSON response if and only if `category` is equal to `cashback_payment`.
        #   @return [Increase::Models::Transaction::Source::CashbackPayment]
        required :cashback_payment, -> { Increase::Models::Transaction::Source::CashbackPayment }

        # @!attribute [rw] category
        #   The type of the resource. We may add additional possible values for this enum over time; your application should be able to handle such additions gracefully.
        #   @return [Symbol, Increase::Models::Transaction::Source::Category]
        required :category, enum: -> { Increase::Models::Transaction::Source::Category }

        # @!attribute [rw] check_deposit_acceptance
        #   A Check Deposit Acceptance object. This field will be present in the JSON response if and only if `category` is equal to `check_deposit_acceptance`.
        #   @return [Increase::Models::Transaction::Source::CheckDepositAcceptance]
        required :check_deposit_acceptance,
                 lambda {
                   Increase::Models::Transaction::Source::CheckDepositAcceptance
                 }

        # @!attribute [rw] check_deposit_return
        #   A Check Deposit Return object. This field will be present in the JSON response if and only if `category` is equal to `check_deposit_return`.
        #   @return [Increase::Models::Transaction::Source::CheckDepositReturn]
        required :check_deposit_return, -> { Increase::Models::Transaction::Source::CheckDepositReturn }

        # @!attribute [rw] check_transfer_deposit
        #   A Check Transfer Deposit object. This field will be present in the JSON response if and only if `category` is equal to `check_transfer_deposit`.
        #   @return [Increase::Models::Transaction::Source::CheckTransferDeposit]
        required :check_transfer_deposit, -> { Increase::Models::Transaction::Source::CheckTransferDeposit }

        # @!attribute [rw] fee_payment
        #   A Fee Payment object. This field will be present in the JSON response if and only if `category` is equal to `fee_payment`.
        #   @return [Increase::Models::Transaction::Source::FeePayment]
        required :fee_payment, -> { Increase::Models::Transaction::Source::FeePayment }

        # @!attribute [rw] inbound_ach_transfer
        #   An Inbound ACH Transfer Intention object. This field will be present in the JSON response if and only if `category` is equal to `inbound_ach_transfer`.
        #   @return [Increase::Models::Transaction::Source::InboundACHTransfer]
        required :inbound_ach_transfer, -> { Increase::Models::Transaction::Source::InboundACHTransfer }

        # @!attribute [rw] inbound_real_time_payments_transfer_confirmation
        #   An Inbound Real-Time Payments Transfer Confirmation object. This field will be present in the JSON response if and only if `category` is equal to `inbound_real_time_payments_transfer_confirmation`.
        #   @return [Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation]
        required :inbound_real_time_payments_transfer_confirmation,
                 -> { Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation }

        # @!attribute [rw] inbound_real_time_payments_transfer_decline
        #   An Inbound Real-Time Payments Transfer Decline object. This field will be present in the JSON response if and only if `category` is equal to `inbound_real_time_payments_transfer_decline`.
        #   @return [Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline]
        required :inbound_real_time_payments_transfer_decline,
                 -> { Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline }

        # @!attribute [rw] inbound_wire_reversal
        #   An Inbound Wire Reversal object. This field will be present in the JSON response if and only if `category` is equal to `inbound_wire_reversal`.
        #   @return [Increase::Models::Transaction::Source::InboundWireReversal]
        required :inbound_wire_reversal, -> { Increase::Models::Transaction::Source::InboundWireReversal }

        # @!attribute [rw] inbound_wire_transfer
        #   An Inbound Wire Transfer Intention object. This field will be present in the JSON response if and only if `category` is equal to `inbound_wire_transfer`.
        #   @return [Increase::Models::Transaction::Source::InboundWireTransfer]
        required :inbound_wire_transfer, -> { Increase::Models::Transaction::Source::InboundWireTransfer }

        # @!attribute [rw] interest_payment
        #   An Interest Payment object. This field will be present in the JSON response if and only if `category` is equal to `interest_payment`.
        #   @return [Increase::Models::Transaction::Source::InterestPayment]
        required :interest_payment, -> { Increase::Models::Transaction::Source::InterestPayment }

        # @!attribute [rw] internal_source
        #   An Internal Source object. This field will be present in the JSON response if and only if `category` is equal to `internal_source`.
        #   @return [Increase::Models::Transaction::Source::InternalSource]
        required :internal_source, -> { Increase::Models::Transaction::Source::InternalSource }

        # @!attribute [rw] other
        #   If the category of this Transaction source is equal to `other`, this field will contain an empty object, otherwise it will contain null.
        #   @return [Object]
        required :other, Increase::Unknown

        # @!attribute [rw] real_time_payments_transfer_acknowledgement
        #   A Real-Time Payments Transfer Acknowledgement object. This field will be present in the JSON response if and only if `category` is equal to `real_time_payments_transfer_acknowledgement`.
        #   @return [Increase::Models::Transaction::Source::RealTimePaymentsTransferAcknowledgement]
        required :real_time_payments_transfer_acknowledgement,
                 -> { Increase::Models::Transaction::Source::RealTimePaymentsTransferAcknowledgement }

        # @!attribute [rw] sample_funds
        #   A Sample Funds object. This field will be present in the JSON response if and only if `category` is equal to `sample_funds`.
        #   @return [Increase::Models::Transaction::Source::SampleFunds]
        required :sample_funds, -> { Increase::Models::Transaction::Source::SampleFunds }

        # @!attribute [rw] wire_transfer_intention
        #   A Wire Transfer Intention object. This field will be present in the JSON response if and only if `category` is equal to `wire_transfer_intention`.
        #   @return [Increase::Models::Transaction::Source::WireTransferIntention]
        required :wire_transfer_intention, -> { Increase::Models::Transaction::Source::WireTransferIntention }

        class AccountTransferIntention < BaseModel
          # @!attribute [rw] amount
          #   The pending amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination account currency.
          #   @return [Symbol, Increase::Models::Transaction::Source::AccountTransferIntention::Currency]
          required :currency,
                   enum: lambda {
                     Increase::Models::Transaction::Source::AccountTransferIntention::Currency
                   }

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

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination account currency.
          class Currency < Increase::Enum
            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD
          end
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
          #   @return [DateTime]
          required :created_at, DateTime

          # @!attribute [rw] raw_return_reason_code
          #   The three character ACH return code, in the range R01 to R85.
          #   @return [String]
          required :raw_return_reason_code, String

          # @!attribute [rw] return_reason_code
          #   Why the ACH Transfer was returned. This reason code is sent by the receiving bank back to Increase.
          #   @return [Symbol, Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode]
          required :return_reason_code,
                   enum: -> { Increase::Models::Transaction::Source::ACHTransferReturn::ReturnReasonCode }

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

          # Why the ACH Transfer was returned. This reason code is sent by the receiving bank back to Increase.
          class ReturnReasonCode < Increase::Enum
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
            UNAUTHORIZED_DEBIT_TO_CONSUMER_ACCOUNT_USING_CORPORATE_SEC_CODE = :unauthorized_debit_to_consumer_account_using_corporate_sec_code

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
            CUSTOMER_ADVISED_UNAUTHORIZED_IMPROPER_INELIGIBLE_OR_INCOMPLETE = :customer_advised_unauthorized_improper_ineligible_or_incomplete

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
            REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE_IN_THAT_CAPACITY = :representative_payee_deceased_or_unable_to_continue_in_that_capacity

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

        class CardDisputeAcceptance < BaseModel
          # @!attribute [rw] accepted_at
          #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Card Dispute was accepted.
          #   @return [DateTime]
          required :accepted_at, DateTime

          # @!attribute [rw] card_dispute_id
          #   The identifier of the Card Dispute that was accepted.
          #   @return [String]
          required :card_dispute_id, String

          # @!attribute [rw] transaction_id
          #   The identifier of the Transaction that was created to return the disputed funds to your account.
          #   @return [String]
          required :transaction_id, String
        end

        class CardDisputeLoss < BaseModel
          # @!attribute [rw] card_dispute_id
          #   The identifier of the Card Dispute that was lost.
          #   @return [String]
          required :card_dispute_id, String

          # @!attribute [rw] explanation
          #   Why the Card Dispute was lost.
          #   @return [String]
          required :explanation, String

          # @!attribute [rw] lost_at
          #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Card Dispute was lost.
          #   @return [DateTime]
          required :lost_at, DateTime

          # @!attribute [rw] transaction_id
          #   The identifier of the Transaction that was created to debit the disputed funds from your account.
          #   @return [String]
          required :transaction_id, String
        end

        class CardRefund < BaseModel
          # @!attribute [rw] id
          #   The Card Refund identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] amount
          #   The amount in the minor unit of the transaction's settlement currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] card_payment_id
          #   The ID of the Card Payment this transaction belongs to.
          #   @return [String]
          required :card_payment_id, String

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's settlement currency.
          #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::CardRefund::Currency }

          # @!attribute [rw] interchange
          #   Interchange assessed as a part of this transaciton.
          #   @return [Increase::Models::Transaction::Source::CardRefund::Interchange]
          required :interchange, -> { Increase::Models::Transaction::Source::CardRefund::Interchange }

          # @!attribute [rw] merchant_acceptor_id
          #   The merchant identifier (commonly abbreviated as MID) of the merchant the card is transacting with.
          #   @return [String]
          required :merchant_acceptor_id, String

          # @!attribute [rw] merchant_category_code
          #   The 4-digit MCC describing the merchant's business.
          #   @return [String]
          required :merchant_category_code, String

          # @!attribute [rw] merchant_city
          #   The city the merchant resides in.
          #   @return [String]
          required :merchant_city, String

          # @!attribute [rw] merchant_country
          #   The country the merchant resides in.
          #   @return [String]
          required :merchant_country, String

          # @!attribute [rw] merchant_name
          #   The name of the merchant.
          #   @return [String]
          required :merchant_name, String

          # @!attribute [rw] merchant_state
          #   The state the merchant resides in.
          #   @return [String]
          required :merchant_state, String

          # @!attribute [rw] network_identifiers
          #   Network-specific identifiers for this refund.
          #   @return [Increase::Models::Transaction::Source::CardRefund::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::Transaction::Source::CardRefund::NetworkIdentifiers }

          # @!attribute [rw] presentment_amount
          #   The amount in the minor unit of the transaction's presentment currency.
          #   @return [Integer]
          required :presentment_amount, Integer

          # @!attribute [rw] presentment_currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's presentment currency.
          #   @return [String]
          required :presentment_currency, String

          # @!attribute [rw] purchase_details
          #   Additional details about the card purchase, such as tax and industry-specific fields.
          #   @return [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails]
          required :purchase_details,
                   lambda {
                     Increase::Models::Transaction::Source::CardRefund::PurchaseDetails
                   }

          # @!attribute [rw] transaction_id
          #   The identifier of the Transaction associated with this Transaction.
          #   @return [String]
          required :transaction_id, String

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `card_refund`.
          #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::Type]
          required :type, enum: -> { Increase::Models::Transaction::Source::CardRefund::Type }

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's settlement currency.
          class Currency < Increase::Enum
            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD
          end

          class Interchange < BaseModel
            # @!attribute [rw] amount
            #   The interchange amount given as a string containing a decimal number. The amount is a positive number if it is credited to Increase (e.g., settlements) and a negative number if it is debited (e.g., refunds).
            #   @return [String]
            required :amount, String

            # @!attribute [rw] code
            #   The card network specific interchange code.
            #   @return [String]
            required :code, String

            # @!attribute [rw] currency
            #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange reimbursement.
            #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::Interchange::Currency]
            required :currency,
                     enum: lambda {
                       Increase::Models::Transaction::Source::CardRefund::Interchange::Currency
                     }

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange reimbursement.
            class Currency < Increase::Enum
              # Canadian Dollar (CAD)
              CAD = :CAD

              # Swiss Franc (CHF)
              CHF = :CHF

              # Euro (EUR)
              EUR = :EUR

              # British Pound (GBP)
              GBP = :GBP

              # Japanese Yen (JPY)
              JPY = :JPY

              # US Dollar (USD)
              USD = :USD
            end
          end

          class NetworkIdentifiers < BaseModel
            # @!attribute [rw] acquirer_business_id
            #   A network assigned business ID that identifies the acquirer that processed this transaction.
            #   @return [String]
            required :acquirer_business_id, String

            # @!attribute [rw] acquirer_reference_number
            #   A globally unique identifier for this settlement.
            #   @return [String]
            required :acquirer_reference_number, String

            # @!attribute [rw] transaction_id
            #   A globally unique transaction identifier provided by the card network, used across multiple life-cycle requests.
            #   @return [String]
            required :transaction_id, String
          end

          class PurchaseDetails < BaseModel
            # @!attribute [rw] car_rental
            #   Fields specific to car rentals.
            #   @return [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental]
            required :car_rental,
                     lambda {
                       Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental
                     }

            # @!attribute [rw] customer_reference_identifier
            #   An identifier from the merchant for the customer or consumer.
            #   @return [String]
            required :customer_reference_identifier, String

            # @!attribute [rw] local_tax_amount
            #   The state or provincial tax amount in minor units.
            #   @return [Integer]
            required :local_tax_amount, Integer

            # @!attribute [rw] local_tax_currency
            #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax assessed.
            #   @return [String]
            required :local_tax_currency, String

            # @!attribute [rw] lodging
            #   Fields specific to lodging.
            #   @return [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging]
            required :lodging,
                     lambda {
                       Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging
                     }

            # @!attribute [rw] national_tax_amount
            #   The national tax amount in minor units.
            #   @return [Integer]
            required :national_tax_amount, Integer

            # @!attribute [rw] national_tax_currency
            #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax assessed.
            #   @return [String]
            required :national_tax_currency, String

            # @!attribute [rw] purchase_identifier
            #   An identifier from the merchant for the purchase to the issuer and cardholder.
            #   @return [String]
            required :purchase_identifier, String

            # @!attribute [rw] purchase_identifier_format
            #   The format of the purchase identifier.
            #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::PurchaseIdentifierFormat]
            required :purchase_identifier_format,
                     enum: lambda {
                       Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::PurchaseIdentifierFormat
                     }

            # @!attribute [rw] travel
            #   Fields specific to travel.
            #   @return [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel]
            required :travel,
                     lambda {
                       Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel
                     }

            class CarRental < BaseModel
              # @!attribute [rw] car_class_code
              #   Code indicating the vehicle's class.
              #   @return [String]
              required :car_class_code, String

              # @!attribute [rw] checkout_date
              #   Date the customer picked up the car or, in the case of a no-show or pre-pay transaction, the scheduled pick up date.
              #   @return [Date]
              required :checkout_date, Date

              # @!attribute [rw] daily_rental_rate_amount
              #   Daily rate being charged for the vehicle.
              #   @return [Integer]
              required :daily_rental_rate_amount, Integer

              # @!attribute [rw] daily_rental_rate_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily rental rate.
              #   @return [String]
              required :daily_rental_rate_currency, String

              # @!attribute [rw] days_rented
              #   Number of days the vehicle was rented.
              #   @return [Integer]
              required :days_rented, Integer

              # @!attribute [rw] extra_charges
              #   Additional charges (gas, late fee, etc.) being billed.
              #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::ExtraCharges]
              required :extra_charges,
                       enum: lambda {
                         Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::ExtraCharges
                       }

              # @!attribute [rw] fuel_charges_amount
              #   Fuel charges for the vehicle.
              #   @return [Integer]
              required :fuel_charges_amount, Integer

              # @!attribute [rw] fuel_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the fuel charges assessed.
              #   @return [String]
              required :fuel_charges_currency, String

              # @!attribute [rw] insurance_charges_amount
              #   Any insurance being charged for the vehicle.
              #   @return [Integer]
              required :insurance_charges_amount, Integer

              # @!attribute [rw] insurance_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the insurance charges assessed.
              #   @return [String]
              required :insurance_charges_currency, String

              # @!attribute [rw] no_show_indicator
              #   An indicator that the cardholder is being billed for a reserved vehicle that was not actually rented (that is, a "no-show" charge).
              #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::NoShowIndicator]
              required :no_show_indicator,
                       enum: lambda {
                         Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::CarRental::NoShowIndicator
                       }

              # @!attribute [rw] one_way_drop_off_charges_amount
              #   Charges for returning the vehicle at a different location than where it was picked up.
              #   @return [Integer]
              required :one_way_drop_off_charges_amount, Integer

              # @!attribute [rw] one_way_drop_off_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the one-way drop-off charges assessed.
              #   @return [String]
              required :one_way_drop_off_charges_currency, String

              # @!attribute [rw] renter_name
              #   Name of the person renting the vehicle.
              #   @return [String]
              required :renter_name, String

              # @!attribute [rw] weekly_rental_rate_amount
              #   Weekly rate being charged for the vehicle.
              #   @return [Integer]
              required :weekly_rental_rate_amount, Integer

              # @!attribute [rw] weekly_rental_rate_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the weekly rental rate.
              #   @return [String]
              required :weekly_rental_rate_currency, String

              # Additional charges (gas, late fee, etc.) being billed.
              class ExtraCharges < Increase::Enum
                # No extra charge
                NO_EXTRA_CHARGE = :no_extra_charge

                # Gas
                GAS = :gas

                # Extra mileage
                EXTRA_MILEAGE = :extra_mileage

                # Late return
                LATE_RETURN = :late_return

                # One way service fee
                ONE_WAY_SERVICE_FEE = :one_way_service_fee

                # Parking violation
                PARKING_VIOLATION = :parking_violation
              end

              # An indicator that the cardholder is being billed for a reserved vehicle that was not actually rented (that is, a "no-show" charge).
              class NoShowIndicator < Increase::Enum
                # Not applicable
                NOT_APPLICABLE = :not_applicable

                # No show for specialized vehicle
                NO_SHOW_FOR_SPECIALIZED_VEHICLE = :no_show_for_specialized_vehicle
              end
            end

            class Lodging < BaseModel
              # @!attribute [rw] check_in_date
              #   Date the customer checked in.
              #   @return [Date]
              required :check_in_date, Date

              # @!attribute [rw] daily_room_rate_amount
              #   Daily rate being charged for the room.
              #   @return [Integer]
              required :daily_room_rate_amount, Integer

              # @!attribute [rw] daily_room_rate_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily room rate.
              #   @return [String]
              required :daily_room_rate_currency, String

              # @!attribute [rw] extra_charges
              #   Additional charges (phone, late check-out, etc.) being billed.
              #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges]
              required :extra_charges,
                       enum: lambda {
                         Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::ExtraCharges
                       }

              # @!attribute [rw] folio_cash_advances_amount
              #   Folio cash advances for the room.
              #   @return [Integer]
              required :folio_cash_advances_amount, Integer

              # @!attribute [rw] folio_cash_advances_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the folio cash advances.
              #   @return [String]
              required :folio_cash_advances_currency, String

              # @!attribute [rw] food_beverage_charges_amount
              #   Food and beverage charges for the room.
              #   @return [Integer]
              required :food_beverage_charges_amount, Integer

              # @!attribute [rw] food_beverage_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the food and beverage charges.
              #   @return [String]
              required :food_beverage_charges_currency, String

              # @!attribute [rw] no_show_indicator
              #   Indicator that the cardholder is being billed for a reserved room that was not actually used.
              #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::NoShowIndicator]
              required :no_show_indicator,
                       enum: lambda {
                         Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Lodging::NoShowIndicator
                       }

              # @!attribute [rw] prepaid_expenses_amount
              #   Prepaid expenses being charged for the room.
              #   @return [Integer]
              required :prepaid_expenses_amount, Integer

              # @!attribute [rw] prepaid_expenses_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the prepaid expenses.
              #   @return [String]
              required :prepaid_expenses_currency, String

              # @!attribute [rw] room_nights
              #   Number of nights the room was rented.
              #   @return [Integer]
              required :room_nights, Integer

              # @!attribute [rw] total_room_tax_amount
              #   Total room tax being charged.
              #   @return [Integer]
              required :total_room_tax_amount, Integer

              # @!attribute [rw] total_room_tax_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total room tax.
              #   @return [String]
              required :total_room_tax_currency, String

              # @!attribute [rw] total_tax_amount
              #   Total tax being charged for the room.
              #   @return [Integer]
              required :total_tax_amount, Integer

              # @!attribute [rw] total_tax_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total tax assessed.
              #   @return [String]
              required :total_tax_currency, String

              # Additional charges (phone, late check-out, etc.) being billed.
              class ExtraCharges < Increase::Enum
                # No extra charge
                NO_EXTRA_CHARGE = :no_extra_charge

                # Restaurant
                RESTAURANT = :restaurant

                # Gift shop
                GIFT_SHOP = :gift_shop

                # Mini bar
                MINI_BAR = :mini_bar

                # Telephone
                TELEPHONE = :telephone

                # Other
                OTHER = :other

                # Laundry
                LAUNDRY = :laundry
              end

              # Indicator that the cardholder is being billed for a reserved room that was not actually used.
              class NoShowIndicator < Increase::Enum
                # Not applicable
                NOT_APPLICABLE = :not_applicable

                # No show
                NO_SHOW = :no_show
              end
            end

            # The format of the purchase identifier.
            class PurchaseIdentifierFormat < Increase::Enum
              # Free text
              FREE_TEXT = :free_text

              # Order number
              ORDER_NUMBER = :order_number

              # Rental agreement number
              RENTAL_AGREEMENT_NUMBER = :rental_agreement_number

              # Hotel folio number
              HOTEL_FOLIO_NUMBER = :hotel_folio_number

              # Invoice number
              INVOICE_NUMBER = :invoice_number
            end

            class Travel < BaseModel
              # @!attribute [rw] ancillary
              #   Ancillary purchases in addition to the airfare.
              #   @return [Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary]
              required :ancillary,
                       -> { Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary }

              # @!attribute [rw] computerized_reservation_system
              #   Indicates the computerized reservation system used to book the ticket.
              #   @return [String]
              required :computerized_reservation_system, String

              # @!attribute [rw] credit_reason_indicator
              #   Indicates the reason for a credit to the cardholder.
              #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator]
              required :credit_reason_indicator,
                       enum: lambda {
                         Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator
                       }

              # @!attribute [rw] departure_date
              #   Date of departure.
              #   @return [Date]
              required :departure_date, Date

              # @!attribute [rw] origination_city_airport_code
              #   Code for the originating city or airport.
              #   @return [String]
              required :origination_city_airport_code, String

              # @!attribute [rw] passenger_name
              #   Name of the passenger.
              #   @return [String]
              required :passenger_name, String

              # @!attribute [rw] restricted_ticket_indicator
              #   Indicates whether this ticket is non-refundable.
              #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator]
              required :restricted_ticket_indicator,
                       enum: lambda {
                         Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator
                       }

              # @!attribute [rw] ticket_change_indicator
              #   Indicates why a ticket was changed.
              #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator]
              required :ticket_change_indicator,
                       enum: lambda {
                         Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator
                       }

              # @!attribute [rw] ticket_number
              #   Ticket number.
              #   @return [String]
              required :ticket_number, String

              # @!attribute [rw] travel_agency_code
              #   Code for the travel agency if the ticket was issued by a travel agency.
              #   @return [String]
              required :travel_agency_code, String

              # @!attribute [rw] travel_agency_name
              #   Name of the travel agency if the ticket was issued by a travel agency.
              #   @return [String]
              required :travel_agency_name, String

              # @!attribute [rw] trip_legs
              #   Fields specific to each leg of the journey.
              #   @return [Array<Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg>]
              required :trip_legs,
                       Increase::ArrayOf.new(
                         lambda {
                           Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg
                         }
                       )

              class Ancillary < BaseModel
                # @!attribute [rw] connected_ticket_document_number
                #   If this purchase has a connection or relationship to another purchase, such as a baggage fee for a passenger transport ticket, this field should contain the ticket document number for the other purchase.
                #   @return [String]
                required :connected_ticket_document_number, String

                # @!attribute [rw] credit_reason_indicator
                #   Indicates the reason for a credit to the cardholder.
                #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator]
                required :credit_reason_indicator,
                         enum: lambda {
                           Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator
                         }

                # @!attribute [rw] passenger_name_or_description
                #   Name of the passenger or description of the ancillary purchase.
                #   @return [String]
                required :passenger_name_or_description, String

                # @!attribute [rw] services
                #   Additional travel charges, such as baggage fees.
                #   @return [Array<Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service>]
                required :services,
                         Increase::ArrayOf.new(
                           lambda {
                             Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service
                           }
                         )

                # @!attribute [rw] ticket_document_number
                #   Ticket document number.
                #   @return [String]
                required :ticket_document_number, String

                # Indicates the reason for a credit to the cardholder.
                class CreditReasonIndicator < Increase::Enum
                  # No credit
                  NO_CREDIT = :no_credit

                  # Passenger transport ancillary purchase cancellation
                  PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :passenger_transport_ancillary_purchase_cancellation

                  # Airline ticket and passenger transport ancillary purchase cancellation
                  AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation

                  # Other
                  OTHER = :other
                end

                class Service < BaseModel
                  # @!attribute [rw] category
                  #   Category of the ancillary service.
                  #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category]
                  required :category,
                           enum: lambda {
                             Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category
                           }

                  # @!attribute [rw] sub_category
                  #   Sub-category of the ancillary service, free-form.
                  #   @return [String]
                  required :sub_category, String

                  # Category of the ancillary service.
                  class Category < Increase::Enum
                    # None
                    NONE = :none

                    # Bundled service
                    BUNDLED_SERVICE = :bundled_service

                    # Baggage fee
                    BAGGAGE_FEE = :baggage_fee

                    # Change fee
                    CHANGE_FEE = :change_fee

                    # Cargo
                    CARGO = :cargo

                    # Carbon offset
                    CARBON_OFFSET = :carbon_offset

                    # Frequent flyer
                    FREQUENT_FLYER = :frequent_flyer

                    # Gift card
                    GIFT_CARD = :gift_card

                    # Ground transport
                    GROUND_TRANSPORT = :ground_transport

                    # In-flight entertainment
                    IN_FLIGHT_ENTERTAINMENT = :in_flight_entertainment

                    # Lounge
                    LOUNGE = :lounge

                    # Medical
                    MEDICAL = :medical

                    # Meal beverage
                    MEAL_BEVERAGE = :meal_beverage

                    # Other
                    OTHER = :other

                    # Passenger assist fee
                    PASSENGER_ASSIST_FEE = :passenger_assist_fee

                    # Pets
                    PETS = :pets

                    # Seat fees
                    SEAT_FEES = :seat_fees

                    # Standby
                    STANDBY = :standby

                    # Service fee
                    SERVICE_FEE = :service_fee

                    # Store
                    STORE = :store

                    # Travel service
                    TRAVEL_SERVICE = :travel_service

                    # Unaccompanied travel
                    UNACCOMPANIED_TRAVEL = :unaccompanied_travel

                    # Upgrades
                    UPGRADES = :upgrades

                    # Wi-fi
                    WIFI = :wifi
                  end
                end
              end

              # Indicates the reason for a credit to the cardholder.
              class CreditReasonIndicator < Increase::Enum
                # No credit
                NO_CREDIT = :no_credit

                # Passenger transport ancillary purchase cancellation
                PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :passenger_transport_ancillary_purchase_cancellation

                # Airline ticket and passenger transport ancillary purchase cancellation
                AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation

                # Airline ticket cancellation
                AIRLINE_TICKET_CANCELLATION = :airline_ticket_cancellation

                # Other
                OTHER = :other

                # Partial refund of airline ticket
                PARTIAL_REFUND_OF_AIRLINE_TICKET = :partial_refund_of_airline_ticket
              end

              # Indicates whether this ticket is non-refundable.
              class RestrictedTicketIndicator < Increase::Enum
                # No restrictions
                NO_RESTRICTIONS = :no_restrictions

                # Restricted non-refundable ticket
                RESTRICTED_NON_REFUNDABLE_TICKET = :restricted_non_refundable_ticket
              end

              # Indicates why a ticket was changed.
              class TicketChangeIndicator < Increase::Enum
                # None
                NONE = :none

                # Change to existing ticket
                CHANGE_TO_EXISTING_TICKET = :change_to_existing_ticket

                # New ticket
                NEW_TICKET = :new_ticket
              end

              class TripLeg < BaseModel
                # @!attribute [rw] carrier_code
                #   Carrier code (e.g., United Airlines, Jet Blue, etc.).
                #   @return [String]
                required :carrier_code, String

                # @!attribute [rw] destination_city_airport_code
                #   Code for the destination city or airport.
                #   @return [String]
                required :destination_city_airport_code, String

                # @!attribute [rw] fare_basis_code
                #   Fare basis code.
                #   @return [String]
                required :fare_basis_code, String

                # @!attribute [rw] flight_number
                #   Flight number.
                #   @return [String]
                required :flight_number, String

                # @!attribute [rw] service_class
                #   Service class (e.g., first class, business class, etc.).
                #   @return [String]
                required :service_class, String

                # @!attribute [rw] stop_over_code
                #   Indicates whether a stopover is allowed on this ticket.
                #   @return [Symbol, Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode]
                required :stop_over_code,
                         enum: lambda {
                           Increase::Models::Transaction::Source::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode
                         }

                # Indicates whether a stopover is allowed on this ticket.
                class StopOverCode < Increase::Enum
                  # None
                  NONE = :none

                  # Stop over allowed
                  STOP_OVER_ALLOWED = :stop_over_allowed

                  # Stop over not allowed
                  STOP_OVER_NOT_ALLOWED = :stop_over_not_allowed
                end
              end
            end
          end

          # A constant representing the object's type. For this resource it will always be `card_refund`.
          class Type < Increase::Enum
            CARD_REFUND = :card_refund
          end
        end

        class CardRevenuePayment < BaseModel
          # @!attribute [rw] amount
          #   The amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction currency.
          #   @return [Symbol, Increase::Models::Transaction::Source::CardRevenuePayment::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::CardRevenuePayment::Currency }

          # @!attribute [rw] period_end
          #   The end of the period for which this transaction paid interest.
          #   @return [DateTime]
          required :period_end, DateTime

          # @!attribute [rw] period_start
          #   The start of the period for which this transaction paid interest.
          #   @return [DateTime]
          required :period_start, DateTime

          # @!attribute [rw] transacted_on_account_id
          #   The account the card belonged to.
          #   @return [String]
          required :transacted_on_account_id, String

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction currency.
          class Currency < Increase::Enum
            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD
          end
        end

        class CardSettlement < BaseModel
          # @!attribute [rw] id
          #   The Card Settlement identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] amount
          #   The amount in the minor unit of the transaction's settlement currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] card_authorization
          #   The Card Authorization that was created prior to this Card Settlement, if one exists.
          #   @return [String]
          required :card_authorization, String

          # @!attribute [rw] card_payment_id
          #   The ID of the Card Payment this transaction belongs to.
          #   @return [String]
          required :card_payment_id, String

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's settlement currency.
          #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::CardSettlement::Currency }

          # @!attribute [rw] interchange
          #   Interchange assessed as a part of this transaciton.
          #   @return [Increase::Models::Transaction::Source::CardSettlement::Interchange]
          required :interchange, -> { Increase::Models::Transaction::Source::CardSettlement::Interchange }

          # @!attribute [rw] merchant_acceptor_id
          #   The merchant identifier (commonly abbreviated as MID) of the merchant the card is transacting with.
          #   @return [String]
          required :merchant_acceptor_id, String

          # @!attribute [rw] merchant_category_code
          #   The 4-digit MCC describing the merchant's business.
          #   @return [String]
          required :merchant_category_code, String

          # @!attribute [rw] merchant_city
          #   The city the merchant resides in.
          #   @return [String]
          required :merchant_city, String

          # @!attribute [rw] merchant_country
          #   The country the merchant resides in.
          #   @return [String]
          required :merchant_country, String

          # @!attribute [rw] merchant_name
          #   The name of the merchant.
          #   @return [String]
          required :merchant_name, String

          # @!attribute [rw] merchant_state
          #   The state the merchant resides in.
          #   @return [String]
          required :merchant_state, String

          # @!attribute [rw] network_identifiers
          #   Network-specific identifiers for this refund.
          #   @return [Increase::Models::Transaction::Source::CardSettlement::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::Transaction::Source::CardSettlement::NetworkIdentifiers }

          # @!attribute [rw] pending_transaction_id
          #   The identifier of the Pending Transaction associated with this Transaction.
          #   @return [String]
          required :pending_transaction_id, String

          # @!attribute [rw] presentment_amount
          #   The amount in the minor unit of the transaction's presentment currency.
          #   @return [Integer]
          required :presentment_amount, Integer

          # @!attribute [rw] presentment_currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's presentment currency.
          #   @return [String]
          required :presentment_currency, String

          # @!attribute [rw] purchase_details
          #   Additional details about the card purchase, such as tax and industry-specific fields.
          #   @return [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails]
          required :purchase_details,
                   lambda {
                     Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails
                   }

          # @!attribute [rw] transaction_id
          #   The identifier of the Transaction associated with this Transaction.
          #   @return [String]
          required :transaction_id, String

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `card_settlement`.
          #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::Type]
          required :type, enum: -> { Increase::Models::Transaction::Source::CardSettlement::Type }

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's settlement currency.
          class Currency < Increase::Enum
            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD
          end

          class Interchange < BaseModel
            # @!attribute [rw] amount
            #   The interchange amount given as a string containing a decimal number. The amount is a positive number if it is credited to Increase (e.g., settlements) and a negative number if it is debited (e.g., refunds).
            #   @return [String]
            required :amount, String

            # @!attribute [rw] code
            #   The card network specific interchange code.
            #   @return [String]
            required :code, String

            # @!attribute [rw] currency
            #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange reimbursement.
            #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::Interchange::Currency]
            required :currency,
                     enum: -> { Increase::Models::Transaction::Source::CardSettlement::Interchange::Currency }

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange reimbursement.
            class Currency < Increase::Enum
              # Canadian Dollar (CAD)
              CAD = :CAD

              # Swiss Franc (CHF)
              CHF = :CHF

              # Euro (EUR)
              EUR = :EUR

              # British Pound (GBP)
              GBP = :GBP

              # Japanese Yen (JPY)
              JPY = :JPY

              # US Dollar (USD)
              USD = :USD
            end
          end

          class NetworkIdentifiers < BaseModel
            # @!attribute [rw] acquirer_business_id
            #   A network assigned business ID that identifies the acquirer that processed this transaction.
            #   @return [String]
            required :acquirer_business_id, String

            # @!attribute [rw] acquirer_reference_number
            #   A globally unique identifier for this settlement.
            #   @return [String]
            required :acquirer_reference_number, String

            # @!attribute [rw] transaction_id
            #   A globally unique transaction identifier provided by the card network, used across multiple life-cycle requests.
            #   @return [String]
            required :transaction_id, String
          end

          class PurchaseDetails < BaseModel
            # @!attribute [rw] car_rental
            #   Fields specific to car rentals.
            #   @return [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental]
            required :car_rental,
                     -> { Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental }

            # @!attribute [rw] customer_reference_identifier
            #   An identifier from the merchant for the customer or consumer.
            #   @return [String]
            required :customer_reference_identifier, String

            # @!attribute [rw] local_tax_amount
            #   The state or provincial tax amount in minor units.
            #   @return [Integer]
            required :local_tax_amount, Integer

            # @!attribute [rw] local_tax_currency
            #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax assessed.
            #   @return [String]
            required :local_tax_currency, String

            # @!attribute [rw] lodging
            #   Fields specific to lodging.
            #   @return [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging]
            required :lodging,
                     lambda {
                       Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging
                     }

            # @!attribute [rw] national_tax_amount
            #   The national tax amount in minor units.
            #   @return [Integer]
            required :national_tax_amount, Integer

            # @!attribute [rw] national_tax_currency
            #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax assessed.
            #   @return [String]
            required :national_tax_currency, String

            # @!attribute [rw] purchase_identifier
            #   An identifier from the merchant for the purchase to the issuer and cardholder.
            #   @return [String]
            required :purchase_identifier, String

            # @!attribute [rw] purchase_identifier_format
            #   The format of the purchase identifier.
            #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat]
            required :purchase_identifier_format,
                     enum: lambda {
                       Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat
                     }

            # @!attribute [rw] travel
            #   Fields specific to travel.
            #   @return [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel]
            required :travel,
                     lambda {
                       Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel
                     }

            class CarRental < BaseModel
              # @!attribute [rw] car_class_code
              #   Code indicating the vehicle's class.
              #   @return [String]
              required :car_class_code, String

              # @!attribute [rw] checkout_date
              #   Date the customer picked up the car or, in the case of a no-show or pre-pay transaction, the scheduled pick up date.
              #   @return [Date]
              required :checkout_date, Date

              # @!attribute [rw] daily_rental_rate_amount
              #   Daily rate being charged for the vehicle.
              #   @return [Integer]
              required :daily_rental_rate_amount, Integer

              # @!attribute [rw] daily_rental_rate_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily rental rate.
              #   @return [String]
              required :daily_rental_rate_currency, String

              # @!attribute [rw] days_rented
              #   Number of days the vehicle was rented.
              #   @return [Integer]
              required :days_rented, Integer

              # @!attribute [rw] extra_charges
              #   Additional charges (gas, late fee, etc.) being billed.
              #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::ExtraCharges]
              required :extra_charges,
                       enum: lambda {
                         Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::ExtraCharges
                       }

              # @!attribute [rw] fuel_charges_amount
              #   Fuel charges for the vehicle.
              #   @return [Integer]
              required :fuel_charges_amount, Integer

              # @!attribute [rw] fuel_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the fuel charges assessed.
              #   @return [String]
              required :fuel_charges_currency, String

              # @!attribute [rw] insurance_charges_amount
              #   Any insurance being charged for the vehicle.
              #   @return [Integer]
              required :insurance_charges_amount, Integer

              # @!attribute [rw] insurance_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the insurance charges assessed.
              #   @return [String]
              required :insurance_charges_currency, String

              # @!attribute [rw] no_show_indicator
              #   An indicator that the cardholder is being billed for a reserved vehicle that was not actually rented (that is, a "no-show" charge).
              #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator]
              required :no_show_indicator,
                       enum: lambda {
                         Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator
                       }

              # @!attribute [rw] one_way_drop_off_charges_amount
              #   Charges for returning the vehicle at a different location than where it was picked up.
              #   @return [Integer]
              required :one_way_drop_off_charges_amount, Integer

              # @!attribute [rw] one_way_drop_off_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the one-way drop-off charges assessed.
              #   @return [String]
              required :one_way_drop_off_charges_currency, String

              # @!attribute [rw] renter_name
              #   Name of the person renting the vehicle.
              #   @return [String]
              required :renter_name, String

              # @!attribute [rw] weekly_rental_rate_amount
              #   Weekly rate being charged for the vehicle.
              #   @return [Integer]
              required :weekly_rental_rate_amount, Integer

              # @!attribute [rw] weekly_rental_rate_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the weekly rental rate.
              #   @return [String]
              required :weekly_rental_rate_currency, String

              # Additional charges (gas, late fee, etc.) being billed.
              class ExtraCharges < Increase::Enum
                # No extra charge
                NO_EXTRA_CHARGE = :no_extra_charge

                # Gas
                GAS = :gas

                # Extra mileage
                EXTRA_MILEAGE = :extra_mileage

                # Late return
                LATE_RETURN = :late_return

                # One way service fee
                ONE_WAY_SERVICE_FEE = :one_way_service_fee

                # Parking violation
                PARKING_VIOLATION = :parking_violation
              end

              # An indicator that the cardholder is being billed for a reserved vehicle that was not actually rented (that is, a "no-show" charge).
              class NoShowIndicator < Increase::Enum
                # Not applicable
                NOT_APPLICABLE = :not_applicable

                # No show for specialized vehicle
                NO_SHOW_FOR_SPECIALIZED_VEHICLE = :no_show_for_specialized_vehicle
              end
            end

            class Lodging < BaseModel
              # @!attribute [rw] check_in_date
              #   Date the customer checked in.
              #   @return [Date]
              required :check_in_date, Date

              # @!attribute [rw] daily_room_rate_amount
              #   Daily rate being charged for the room.
              #   @return [Integer]
              required :daily_room_rate_amount, Integer

              # @!attribute [rw] daily_room_rate_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily room rate.
              #   @return [String]
              required :daily_room_rate_currency, String

              # @!attribute [rw] extra_charges
              #   Additional charges (phone, late check-out, etc.) being billed.
              #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges]
              required :extra_charges,
                       enum: lambda {
                         Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::ExtraCharges
                       }

              # @!attribute [rw] folio_cash_advances_amount
              #   Folio cash advances for the room.
              #   @return [Integer]
              required :folio_cash_advances_amount, Integer

              # @!attribute [rw] folio_cash_advances_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the folio cash advances.
              #   @return [String]
              required :folio_cash_advances_currency, String

              # @!attribute [rw] food_beverage_charges_amount
              #   Food and beverage charges for the room.
              #   @return [Integer]
              required :food_beverage_charges_amount, Integer

              # @!attribute [rw] food_beverage_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the food and beverage charges.
              #   @return [String]
              required :food_beverage_charges_currency, String

              # @!attribute [rw] no_show_indicator
              #   Indicator that the cardholder is being billed for a reserved room that was not actually used.
              #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator]
              required :no_show_indicator,
                       enum: lambda {
                         Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator
                       }

              # @!attribute [rw] prepaid_expenses_amount
              #   Prepaid expenses being charged for the room.
              #   @return [Integer]
              required :prepaid_expenses_amount, Integer

              # @!attribute [rw] prepaid_expenses_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the prepaid expenses.
              #   @return [String]
              required :prepaid_expenses_currency, String

              # @!attribute [rw] room_nights
              #   Number of nights the room was rented.
              #   @return [Integer]
              required :room_nights, Integer

              # @!attribute [rw] total_room_tax_amount
              #   Total room tax being charged.
              #   @return [Integer]
              required :total_room_tax_amount, Integer

              # @!attribute [rw] total_room_tax_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total room tax.
              #   @return [String]
              required :total_room_tax_currency, String

              # @!attribute [rw] total_tax_amount
              #   Total tax being charged for the room.
              #   @return [Integer]
              required :total_tax_amount, Integer

              # @!attribute [rw] total_tax_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total tax assessed.
              #   @return [String]
              required :total_tax_currency, String

              # Additional charges (phone, late check-out, etc.) being billed.
              class ExtraCharges < Increase::Enum
                # No extra charge
                NO_EXTRA_CHARGE = :no_extra_charge

                # Restaurant
                RESTAURANT = :restaurant

                # Gift shop
                GIFT_SHOP = :gift_shop

                # Mini bar
                MINI_BAR = :mini_bar

                # Telephone
                TELEPHONE = :telephone

                # Other
                OTHER = :other

                # Laundry
                LAUNDRY = :laundry
              end

              # Indicator that the cardholder is being billed for a reserved room that was not actually used.
              class NoShowIndicator < Increase::Enum
                # Not applicable
                NOT_APPLICABLE = :not_applicable

                # No show
                NO_SHOW = :no_show
              end
            end

            # The format of the purchase identifier.
            class PurchaseIdentifierFormat < Increase::Enum
              # Free text
              FREE_TEXT = :free_text

              # Order number
              ORDER_NUMBER = :order_number

              # Rental agreement number
              RENTAL_AGREEMENT_NUMBER = :rental_agreement_number

              # Hotel folio number
              HOTEL_FOLIO_NUMBER = :hotel_folio_number

              # Invoice number
              INVOICE_NUMBER = :invoice_number
            end

            class Travel < BaseModel
              # @!attribute [rw] ancillary
              #   Ancillary purchases in addition to the airfare.
              #   @return [Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary]
              required :ancillary,
                       -> { Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary }

              # @!attribute [rw] computerized_reservation_system
              #   Indicates the computerized reservation system used to book the ticket.
              #   @return [String]
              required :computerized_reservation_system, String

              # @!attribute [rw] credit_reason_indicator
              #   Indicates the reason for a credit to the cardholder.
              #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator]
              required :credit_reason_indicator,
                       enum: lambda {
                         Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator
                       }

              # @!attribute [rw] departure_date
              #   Date of departure.
              #   @return [Date]
              required :departure_date, Date

              # @!attribute [rw] origination_city_airport_code
              #   Code for the originating city or airport.
              #   @return [String]
              required :origination_city_airport_code, String

              # @!attribute [rw] passenger_name
              #   Name of the passenger.
              #   @return [String]
              required :passenger_name, String

              # @!attribute [rw] restricted_ticket_indicator
              #   Indicates whether this ticket is non-refundable.
              #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator]
              required :restricted_ticket_indicator,
                       enum: lambda {
                         Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator
                       }

              # @!attribute [rw] ticket_change_indicator
              #   Indicates why a ticket was changed.
              #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator]
              required :ticket_change_indicator,
                       enum: lambda {
                         Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator
                       }

              # @!attribute [rw] ticket_number
              #   Ticket number.
              #   @return [String]
              required :ticket_number, String

              # @!attribute [rw] travel_agency_code
              #   Code for the travel agency if the ticket was issued by a travel agency.
              #   @return [String]
              required :travel_agency_code, String

              # @!attribute [rw] travel_agency_name
              #   Name of the travel agency if the ticket was issued by a travel agency.
              #   @return [String]
              required :travel_agency_name, String

              # @!attribute [rw] trip_legs
              #   Fields specific to each leg of the journey.
              #   @return [Array<Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg>]
              required :trip_legs,
                       Increase::ArrayOf.new(
                         lambda {
                           Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg
                         }
                       )

              class Ancillary < BaseModel
                # @!attribute [rw] connected_ticket_document_number
                #   If this purchase has a connection or relationship to another purchase, such as a baggage fee for a passenger transport ticket, this field should contain the ticket document number for the other purchase.
                #   @return [String]
                required :connected_ticket_document_number, String

                # @!attribute [rw] credit_reason_indicator
                #   Indicates the reason for a credit to the cardholder.
                #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator]
                required :credit_reason_indicator,
                         enum: lambda {
                           Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator
                         }

                # @!attribute [rw] passenger_name_or_description
                #   Name of the passenger or description of the ancillary purchase.
                #   @return [String]
                required :passenger_name_or_description, String

                # @!attribute [rw] services
                #   Additional travel charges, such as baggage fees.
                #   @return [Array<Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service>]
                required :services,
                         Increase::ArrayOf.new(
                           lambda {
                             Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service
                           }
                         )

                # @!attribute [rw] ticket_document_number
                #   Ticket document number.
                #   @return [String]
                required :ticket_document_number, String

                # Indicates the reason for a credit to the cardholder.
                class CreditReasonIndicator < Increase::Enum
                  # No credit
                  NO_CREDIT = :no_credit

                  # Passenger transport ancillary purchase cancellation
                  PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :passenger_transport_ancillary_purchase_cancellation

                  # Airline ticket and passenger transport ancillary purchase cancellation
                  AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation

                  # Other
                  OTHER = :other
                end

                class Service < BaseModel
                  # @!attribute [rw] category
                  #   Category of the ancillary service.
                  #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category]
                  required :category,
                           enum: lambda {
                             Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category
                           }

                  # @!attribute [rw] sub_category
                  #   Sub-category of the ancillary service, free-form.
                  #   @return [String]
                  required :sub_category, String

                  # Category of the ancillary service.
                  class Category < Increase::Enum
                    # None
                    NONE = :none

                    # Bundled service
                    BUNDLED_SERVICE = :bundled_service

                    # Baggage fee
                    BAGGAGE_FEE = :baggage_fee

                    # Change fee
                    CHANGE_FEE = :change_fee

                    # Cargo
                    CARGO = :cargo

                    # Carbon offset
                    CARBON_OFFSET = :carbon_offset

                    # Frequent flyer
                    FREQUENT_FLYER = :frequent_flyer

                    # Gift card
                    GIFT_CARD = :gift_card

                    # Ground transport
                    GROUND_TRANSPORT = :ground_transport

                    # In-flight entertainment
                    IN_FLIGHT_ENTERTAINMENT = :in_flight_entertainment

                    # Lounge
                    LOUNGE = :lounge

                    # Medical
                    MEDICAL = :medical

                    # Meal beverage
                    MEAL_BEVERAGE = :meal_beverage

                    # Other
                    OTHER = :other

                    # Passenger assist fee
                    PASSENGER_ASSIST_FEE = :passenger_assist_fee

                    # Pets
                    PETS = :pets

                    # Seat fees
                    SEAT_FEES = :seat_fees

                    # Standby
                    STANDBY = :standby

                    # Service fee
                    SERVICE_FEE = :service_fee

                    # Store
                    STORE = :store

                    # Travel service
                    TRAVEL_SERVICE = :travel_service

                    # Unaccompanied travel
                    UNACCOMPANIED_TRAVEL = :unaccompanied_travel

                    # Upgrades
                    UPGRADES = :upgrades

                    # Wi-fi
                    WIFI = :wifi
                  end
                end
              end

              # Indicates the reason for a credit to the cardholder.
              class CreditReasonIndicator < Increase::Enum
                # No credit
                NO_CREDIT = :no_credit

                # Passenger transport ancillary purchase cancellation
                PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :passenger_transport_ancillary_purchase_cancellation

                # Airline ticket and passenger transport ancillary purchase cancellation
                AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation

                # Airline ticket cancellation
                AIRLINE_TICKET_CANCELLATION = :airline_ticket_cancellation

                # Other
                OTHER = :other

                # Partial refund of airline ticket
                PARTIAL_REFUND_OF_AIRLINE_TICKET = :partial_refund_of_airline_ticket
              end

              # Indicates whether this ticket is non-refundable.
              class RestrictedTicketIndicator < Increase::Enum
                # No restrictions
                NO_RESTRICTIONS = :no_restrictions

                # Restricted non-refundable ticket
                RESTRICTED_NON_REFUNDABLE_TICKET = :restricted_non_refundable_ticket
              end

              # Indicates why a ticket was changed.
              class TicketChangeIndicator < Increase::Enum
                # None
                NONE = :none

                # Change to existing ticket
                CHANGE_TO_EXISTING_TICKET = :change_to_existing_ticket

                # New ticket
                NEW_TICKET = :new_ticket
              end

              class TripLeg < BaseModel
                # @!attribute [rw] carrier_code
                #   Carrier code (e.g., United Airlines, Jet Blue, etc.).
                #   @return [String]
                required :carrier_code, String

                # @!attribute [rw] destination_city_airport_code
                #   Code for the destination city or airport.
                #   @return [String]
                required :destination_city_airport_code, String

                # @!attribute [rw] fare_basis_code
                #   Fare basis code.
                #   @return [String]
                required :fare_basis_code, String

                # @!attribute [rw] flight_number
                #   Flight number.
                #   @return [String]
                required :flight_number, String

                # @!attribute [rw] service_class
                #   Service class (e.g., first class, business class, etc.).
                #   @return [String]
                required :service_class, String

                # @!attribute [rw] stop_over_code
                #   Indicates whether a stopover is allowed on this ticket.
                #   @return [Symbol, Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode]
                required :stop_over_code,
                         enum: lambda {
                           Increase::Models::Transaction::Source::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode
                         }

                # Indicates whether a stopover is allowed on this ticket.
                class StopOverCode < Increase::Enum
                  # None
                  NONE = :none

                  # Stop over allowed
                  STOP_OVER_ALLOWED = :stop_over_allowed

                  # Stop over not allowed
                  STOP_OVER_NOT_ALLOWED = :stop_over_not_allowed
                end
              end
            end
          end

          # A constant representing the object's type. For this resource it will always be `card_settlement`.
          class Type < Increase::Enum
            CARD_SETTLEMENT = :card_settlement
          end
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
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction currency.
          #   @return [Symbol, Increase::Models::Transaction::Source::CashbackPayment::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::CashbackPayment::Currency }

          # @!attribute [rw] period_end
          #   The end of the period for which this transaction paid cashback.
          #   @return [DateTime]
          required :period_end, DateTime

          # @!attribute [rw] period_start
          #   The start of the period for which this transaction paid cashback.
          #   @return [DateTime]
          required :period_start, DateTime

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction currency.
          class Currency < Increase::Enum
            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD
          end
        end

        # The type of the resource. We may add additional possible values for this enum over time; your application should be able to handle such additions gracefully.
        class Category < Increase::Enum
          # Account Transfer Intention: details will be under the `account_transfer_intention` object.
          ACCOUNT_TRANSFER_INTENTION = :account_transfer_intention

          # ACH Transfer Intention: details will be under the `ach_transfer_intention` object.
          ACH_TRANSFER_INTENTION = :ach_transfer_intention

          # ACH Transfer Rejection: details will be under the `ach_transfer_rejection` object.
          ACH_TRANSFER_REJECTION = :ach_transfer_rejection

          # ACH Transfer Return: details will be under the `ach_transfer_return` object.
          ACH_TRANSFER_RETURN = :ach_transfer_return

          # Cashback Payment: details will be under the `cashback_payment` object.
          CASHBACK_PAYMENT = :cashback_payment

          # Card Dispute Acceptance: details will be under the `card_dispute_acceptance` object.
          CARD_DISPUTE_ACCEPTANCE = :card_dispute_acceptance

          # Card Dispute Loss: details will be under the `card_dispute_loss` object.
          CARD_DISPUTE_LOSS = :card_dispute_loss

          # Card Refund: details will be under the `card_refund` object.
          CARD_REFUND = :card_refund

          # Card Settlement: details will be under the `card_settlement` object.
          CARD_SETTLEMENT = :card_settlement

          # Card Revenue Payment: details will be under the `card_revenue_payment` object.
          CARD_REVENUE_PAYMENT = :card_revenue_payment

          # Check Deposit Acceptance: details will be under the `check_deposit_acceptance` object.
          CHECK_DEPOSIT_ACCEPTANCE = :check_deposit_acceptance

          # Check Deposit Return: details will be under the `check_deposit_return` object.
          CHECK_DEPOSIT_RETURN = :check_deposit_return

          # Check Transfer Deposit: details will be under the `check_transfer_deposit` object.
          CHECK_TRANSFER_DEPOSIT = :check_transfer_deposit

          # Fee Payment: details will be under the `fee_payment` object.
          FEE_PAYMENT = :fee_payment

          # Inbound ACH Transfer Intention: details will be under the `inbound_ach_transfer` object.
          INBOUND_ACH_TRANSFER = :inbound_ach_transfer

          # Inbound ACH Transfer Return Intention: details will be under the `inbound_ach_transfer_return_intention` object.
          INBOUND_ACH_TRANSFER_RETURN_INTENTION = :inbound_ach_transfer_return_intention

          # Inbound Check Deposit Return Intention: details will be under the `inbound_check_deposit_return_intention` object.
          INBOUND_CHECK_DEPOSIT_RETURN_INTENTION = :inbound_check_deposit_return_intention

          # Inbound Real-Time Payments Transfer Confirmation: details will be under the `inbound_real_time_payments_transfer_confirmation` object.
          INBOUND_REAL_TIME_PAYMENTS_TRANSFER_CONFIRMATION = :inbound_real_time_payments_transfer_confirmation

          # Inbound Real-Time Payments Transfer Decline: details will be under the `inbound_real_time_payments_transfer_decline` object.
          INBOUND_REAL_TIME_PAYMENTS_TRANSFER_DECLINE = :inbound_real_time_payments_transfer_decline

          # Inbound Wire Reversal: details will be under the `inbound_wire_reversal` object.
          INBOUND_WIRE_REVERSAL = :inbound_wire_reversal

          # Inbound Wire Transfer Intention: details will be under the `inbound_wire_transfer` object.
          INBOUND_WIRE_TRANSFER = :inbound_wire_transfer

          # Inbound Wire Transfer Reversal Intention: details will be under the `inbound_wire_transfer_reversal` object.
          INBOUND_WIRE_TRANSFER_REVERSAL = :inbound_wire_transfer_reversal

          # Interest Payment: details will be under the `interest_payment` object.
          INTEREST_PAYMENT = :interest_payment

          # Internal Source: details will be under the `internal_source` object.
          INTERNAL_SOURCE = :internal_source

          # Real-Time Payments Transfer Acknowledgement: details will be under the `real_time_payments_transfer_acknowledgement` object.
          REAL_TIME_PAYMENTS_TRANSFER_ACKNOWLEDGEMENT = :real_time_payments_transfer_acknowledgement

          # Sample Funds: details will be under the `sample_funds` object.
          SAMPLE_FUNDS = :sample_funds

          # Wire Transfer Intention: details will be under the `wire_transfer_intention` object.
          WIRE_TRANSFER_INTENTION = :wire_transfer_intention

          # The Transaction was made for an undocumented or deprecated reason.
          OTHER = :other
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
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's currency.
          #   @return [Symbol, Increase::Models::Transaction::Source::CheckDepositAcceptance::Currency]
          required :currency,
                   enum: lambda {
                     Increase::Models::Transaction::Source::CheckDepositAcceptance::Currency
                   }

          # @!attribute [rw] routing_number
          #   The routing number printed on the check.
          #   @return [String]
          required :routing_number, String

          # @!attribute [rw] serial_number
          #   The check serial number, if present, for consumer checks. For business checks, the serial number is usually in the `auxiliary_on_us` field.
          #   @return [String]
          required :serial_number, String

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's currency.
          class Currency < Increase::Enum
            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD
          end
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
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's currency.
          #   @return [Symbol, Increase::Models::Transaction::Source::CheckDepositReturn::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::CheckDepositReturn::Currency }

          # @!attribute [rw] return_reason
          #   Why this check was returned by the bank holding the account it was drawn against.
          #   @return [Symbol, Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason]
          required :return_reason,
                   enum: -> { Increase::Models::Transaction::Source::CheckDepositReturn::ReturnReason }

          # @!attribute [rw] returned_at
          #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the check deposit was returned.
          #   @return [DateTime]
          required :returned_at, DateTime

          # @!attribute [rw] transaction_id
          #   The identifier of the transaction that reversed the original check deposit transaction.
          #   @return [String]
          required :transaction_id, String

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's currency.
          class Currency < Increase::Enum
            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD
          end

          # Why this check was returned by the bank holding the account it was drawn against.
          class ReturnReason < Increase::Enum
            # The check doesn't allow ACH conversion.
            ACH_CONVERSION_NOT_SUPPORTED = :ach_conversion_not_supported

            # The account is closed.
            CLOSED_ACCOUNT = :closed_account

            # The check has already been deposited.
            DUPLICATE_SUBMISSION = :duplicate_submission

            # Insufficient funds
            INSUFFICIENT_FUNDS = :insufficient_funds

            # No account was found matching the check details.
            NO_ACCOUNT = :no_account

            # The check was not authorized.
            NOT_AUTHORIZED = :not_authorized

            # The check is too old.
            STALE_DATED = :stale_dated

            # The payment has been stopped by the account holder.
            STOP_PAYMENT = :stop_payment

            # The reason for the return is unknown.
            UNKNOWN_REASON = :unknown_reason

            # The image doesn't match the details submitted.
            UNMATCHED_DETAILS = :unmatched_details

            # The image could not be read.
            UNREADABLE_IMAGE = :unreadable_image

            # The check endorsement was irregular.
            ENDORSEMENT_IRREGULAR = :endorsement_irregular

            # The check present was either altered or fake.
            ALTERED_OR_FICTITIOUS_ITEM = :altered_or_fictitious_item

            # The account this check is drawn on is frozen.
            FROZEN_OR_BLOCKED_ACCOUNT = :frozen_or_blocked_account

            # The check is post dated.
            POST_DATED = :post_dated

            # The endorsement was missing.
            ENDORSEMENT_MISSING = :endorsement_missing

            # The check signature was missing.
            SIGNATURE_MISSING = :signature_missing

            # The bank suspects a stop payment will be placed.
            STOP_PAYMENT_SUSPECT = :stop_payment_suspect

            # The bank cannot read the image.
            UNUSABLE_IMAGE = :unusable_image

            # The check image fails the bank's security check.
            IMAGE_FAILS_SECURITY_CHECK = :image_fails_security_check

            # The bank cannot determine the amount.
            CANNOT_DETERMINE_AMOUNT = :cannot_determine_amount

            # The signature is inconsistent with prior signatures.
            SIGNATURE_IRREGULAR = :signature_irregular

            # The check is a non-cash item and cannot be drawn against the account.
            NON_CASH_ITEM = :non_cash_item

            # The bank is unable to process this check.
            UNABLE_TO_PROCESS = :unable_to_process

            # The check exceeds the bank or customer's limit.
            ITEM_EXCEEDS_DOLLAR_LIMIT = :item_exceeds_dollar_limit

            # The bank sold this account and no longer services this customer.
            BRANCH_OR_ACCOUNT_SOLD = :branch_or_account_sold
          end
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
          #   @return [DateTime]
          required :deposited_at, DateTime

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
          #   @return [Symbol, Increase::Models::Transaction::Source::CheckTransferDeposit::Type]
          required :type, enum: -> { Increase::Models::Transaction::Source::CheckTransferDeposit::Type }

          # A constant representing the object's type. For this resource it will always be `check_transfer_deposit`.
          class Type < Increase::Enum
            CHECK_TRANSFER_DEPOSIT = :check_transfer_deposit
          end
        end

        class FeePayment < BaseModel
          # @!attribute [rw] amount
          #   The amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction currency.
          #   @return [Symbol, Increase::Models::Transaction::Source::FeePayment::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::FeePayment::Currency }

          # @!attribute [rw] fee_period_start
          #   The start of this payment's fee period, usually the first day of a month.
          #   @return [Date]
          required :fee_period_start, Date

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction currency.
          class Currency < Increase::Enum
            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD
          end
        end

        class InboundACHTransfer < BaseModel
          # @!attribute [rw] addenda
          #   Additional information sent from the originator.
          #   @return [Increase::Models::Transaction::Source::InboundACHTransfer::Addenda]
          required :addenda, -> { Increase::Models::Transaction::Source::InboundACHTransfer::Addenda }

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
          #   The originator's identifier for the transfer recipient.
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

          class Addenda < BaseModel
            # @!attribute [rw] category
            #   The type of addendum.
            #   @return [Symbol, Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Category]
            required :category,
                     enum: -> { Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Category }

            # @!attribute [rw] freeform
            #   Unstructured `payment_related_information` passed through by the originator.
            #   @return [Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform]
            required :freeform,
                     lambda {
                       Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform
                     }

            # The type of addendum.
            class Category < Increase::Enum
              # Unstructured addendum.
              FREEFORM = :freeform
            end

            class Freeform < BaseModel
              # @!attribute [rw] entries
              #   Each entry represents an addendum received from the originator.
              #   @return [Array<Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform::Entry>]
              required :entries,
                       Increase::ArrayOf.new(
                         lambda {
                           Increase::Models::Transaction::Source::InboundACHTransfer::Addenda::Freeform::Entry
                         }
                       )

              class Entry < BaseModel
                # @!attribute [rw] payment_related_information
                #   The payment related information passed in the addendum.
                #   @return [String]
                required :payment_related_information, String
              end
            end
          end
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
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the transfer's currency. This will always be "USD" for a Real-Time Payments transfer.
          #   @return [Symbol, Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation::Currency]
          required :currency,
                   enum: lambda {
                     Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferConfirmation::Currency
                   }

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

          # @!attribute [rw] transfer_id
          #   The identifier of the Real-Time Payments Transfer that led to this Transaction.
          #   @return [String]
          required :transfer_id, String

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the transfer's currency. This will always be "USD" for a Real-Time Payments transfer.
          class Currency < Increase::Enum
            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD
          end
        end

        class InboundRealTimePaymentsTransferDecline < BaseModel
          # @!attribute [rw] amount
          #   The declined amount in the minor unit of the destination account currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] creditor_name
          #   The name the sender of the transfer specified as the recipient of the transfer.
          #   @return [String]
          required :creditor_name, String

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the declined transfer's currency. This will always be "USD" for a Real-Time Payments transfer.
          #   @return [Symbol, Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Currency]
          required :currency,
                   enum: lambda {
                     Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Currency
                   }

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

          # @!attribute [rw] reason
          #   Why the transfer was declined.
          #   @return [Symbol, Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Reason]
          required :reason,
                   enum: lambda {
                     Increase::Models::Transaction::Source::InboundRealTimePaymentsTransferDecline::Reason
                   }

          # @!attribute [rw] remittance_information
          #   Additional information included with the transfer.
          #   @return [String]
          required :remittance_information, String

          # @!attribute [rw] transaction_identification
          #   The Real-Time Payments network identification of the declined transfer.
          #   @return [String]
          required :transaction_identification, String

          # @!attribute [rw] transfer_id
          #   The identifier of the Real-Time Payments Transfer that led to this Transaction.
          #   @return [String]
          required :transfer_id, String

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the declined transfer's currency. This will always be "USD" for a Real-Time Payments transfer.
          class Currency < Increase::Enum
            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD
          end

          # Why the transfer was declined.
          class Reason < Increase::Enum
            # The account number is canceled.
            ACCOUNT_NUMBER_CANCELED = :account_number_canceled

            # The account number is disabled.
            ACCOUNT_NUMBER_DISABLED = :account_number_disabled

            # Your account is restricted.
            ACCOUNT_RESTRICTED = :account_restricted

            # Your account is inactive.
            GROUP_LOCKED = :group_locked

            # The account's entity is not active.
            ENTITY_NOT_ACTIVE = :entity_not_active

            # Your account is not enabled to receive Real-Time Payments transfers.
            REAL_TIME_PAYMENTS_NOT_ENABLED = :real_time_payments_not_enabled
          end
        end

        class InboundWireReversal < BaseModel
          # @!attribute [rw] amount
          #   The amount that was reversed in USD cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] created_at
          #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the reversal was created.
          #   @return [DateTime]
          required :created_at, DateTime

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
          #   @return [Date]
          required :input_cycle_date, Date

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
          #   @return [Date]
          required :previous_message_input_cycle_date, Date

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

          # @!attribute [rw] sender_reference
          #   The sending bank's reference number for the wire reversal.
          #   @return [String]
          required :sender_reference, String

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
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction currency.
          #   @return [Symbol, Increase::Models::Transaction::Source::InterestPayment::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::InterestPayment::Currency }

          # @!attribute [rw] period_end
          #   The end of the period for which this transaction paid interest.
          #   @return [DateTime]
          required :period_end, DateTime

          # @!attribute [rw] period_start
          #   The start of the period for which this transaction paid interest.
          #   @return [DateTime]
          required :period_start, DateTime

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction currency.
          class Currency < Increase::Enum
            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD
          end
        end

        class InternalSource < BaseModel
          # @!attribute [rw] amount
          #   The amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction currency.
          #   @return [Symbol, Increase::Models::Transaction::Source::InternalSource::Currency]
          required :currency, enum: -> { Increase::Models::Transaction::Source::InternalSource::Currency }

          # @!attribute [rw] reason
          #   An Internal Source is a transaction between you and Increase. This describes the reason for the transaction.
          #   @return [Symbol, Increase::Models::Transaction::Source::InternalSource::Reason]
          required :reason, enum: -> { Increase::Models::Transaction::Source::InternalSource::Reason }

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction currency.
          class Currency < Increase::Enum
            # Canadian Dollar (CAD)
            CAD = :CAD

            # Swiss Franc (CHF)
            CHF = :CHF

            # Euro (EUR)
            EUR = :EUR

            # British Pound (GBP)
            GBP = :GBP

            # Japanese Yen (JPY)
            JPY = :JPY

            # US Dollar (USD)
            USD = :USD
          end

          # An Internal Source is a transaction between you and Increase. This describes the reason for the transaction.
          class Reason < Increase::Enum
            # Account closure
            ACCOUNT_CLOSURE = :account_closure

            # Bank-drawn check
            BANK_DRAWN_CHECK = :bank_drawn_check

            # Bank-drawn check credit
            BANK_DRAWN_CHECK_CREDIT = :bank_drawn_check_credit

            # Bank migration
            BANK_MIGRATION = :bank_migration

            # Check adjustment
            CHECK_ADJUSTMENT = :check_adjustment

            # Collection payment
            COLLECTION_PAYMENT = :collection_payment

            # Collection receivable
            COLLECTION_RECEIVABLE = :collection_receivable

            # Empyreal adjustment
            EMPYREAL_ADJUSTMENT = :empyreal_adjustment

            # Error
            ERROR = :error

            # Error correction
            ERROR_CORRECTION = :error_correction

            # Fees
            FEES = :fees

            # Interest
            INTEREST = :interest

            # Negative balance forgiveness
            NEGATIVE_BALANCE_FORGIVENESS = :negative_balance_forgiveness

            # Sample funds
            SAMPLE_FUNDS = :sample_funds

            # Sample funds return
            SAMPLE_FUNDS_RETURN = :sample_funds_return
          end
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
      end

      # A constant representing the object's type. For this resource it will always be `transaction`.
      class Type < Increase::Enum
        TRANSACTION = :transaction
      end
    end
  end
end
