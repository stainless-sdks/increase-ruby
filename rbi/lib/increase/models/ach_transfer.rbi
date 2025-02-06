# typed: strong

module Increase
  module Models
    class ACHTransfer < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(String) }
      attr_accessor :account_number

      sig { returns(T.nilable(Increase::Models::ACHTransfer::Acknowledgement)) }
      attr_accessor :acknowledgement

      sig { returns(T.nilable(Increase::Models::ACHTransfer::Addenda)) }
      attr_accessor :addenda

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(T.nilable(Increase::Models::ACHTransfer::Approval)) }
      attr_accessor :approval

      sig { returns(T.nilable(Increase::Models::ACHTransfer::Cancellation)) }
      attr_accessor :cancellation

      sig { returns(T.nilable(String)) }
      attr_accessor :company_descriptive_date

      sig { returns(T.nilable(String)) }
      attr_accessor :company_discretionary_data

      sig { returns(T.nilable(String)) }
      attr_accessor :company_entry_description

      sig { returns(T.nilable(String)) }
      attr_accessor :company_name

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Increase::Models::ACHTransfer::CreatedBy)) }
      attr_accessor :created_by

      sig { returns(Symbol) }
      attr_accessor :currency

      sig { returns(Symbol) }
      attr_accessor :destination_account_holder

      sig { returns(T.nilable(String)) }
      attr_accessor :external_account_id

      sig { returns(Symbol) }
      attr_accessor :funding

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(T.nilable(Increase::Models::ACHTransfer::InboundFundsHold)) }
      attr_accessor :inbound_funds_hold

      sig { returns(T.nilable(String)) }
      attr_accessor :individual_id

      sig { returns(T.nilable(String)) }
      attr_accessor :individual_name

      sig { returns(Symbol) }
      attr_accessor :network

      sig { returns(T::Array[Increase::Models::ACHTransfer::NotificationsOfChange]) }
      attr_accessor :notifications_of_change

      sig { returns(T.nilable(String)) }
      attr_accessor :pending_transaction_id

      sig { returns(Increase::Models::ACHTransfer::PreferredEffectiveDate) }
      attr_accessor :preferred_effective_date

      sig { returns(T.nilable(Increase::Models::ACHTransfer::Return)) }
      attr_accessor :return_

      sig { returns(String) }
      attr_accessor :routing_number

      sig { returns(T.nilable(Increase::Models::ACHTransfer::Settlement)) }
      attr_accessor :settlement

      sig { returns(Symbol) }
      attr_accessor :standard_entry_class_code

      sig { returns(String) }
      attr_accessor :statement_descriptor

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(T.nilable(Increase::Models::ACHTransfer::Submission)) }
      attr_accessor :submission

      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_id

      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          id: String,
          account_id: String,
          account_number: String,
          acknowledgement: T.nilable(Increase::Models::ACHTransfer::Acknowledgement),
          addenda: T.nilable(Increase::Models::ACHTransfer::Addenda),
          amount: Integer,
          approval: T.nilable(Increase::Models::ACHTransfer::Approval),
          cancellation: T.nilable(Increase::Models::ACHTransfer::Cancellation),
          company_descriptive_date: T.nilable(String),
          company_discretionary_data: T.nilable(String),
          company_entry_description: T.nilable(String),
          company_name: T.nilable(String),
          created_at: Time,
          created_by: T.nilable(Increase::Models::ACHTransfer::CreatedBy),
          currency: Symbol,
          destination_account_holder: Symbol,
          external_account_id: T.nilable(String),
          funding: Symbol,
          idempotency_key: T.nilable(String),
          inbound_funds_hold: T.nilable(Increase::Models::ACHTransfer::InboundFundsHold),
          individual_id: T.nilable(String),
          individual_name: T.nilable(String),
          network: Symbol,
          notifications_of_change: T::Array[Increase::Models::ACHTransfer::NotificationsOfChange],
          pending_transaction_id: T.nilable(String),
          preferred_effective_date: Increase::Models::ACHTransfer::PreferredEffectiveDate,
          return_: T.nilable(Increase::Models::ACHTransfer::Return),
          routing_number: String,
          settlement: T.nilable(Increase::Models::ACHTransfer::Settlement),
          standard_entry_class_code: Symbol,
          statement_descriptor: String,
          status: Symbol,
          submission: T.nilable(Increase::Models::ACHTransfer::Submission),
          transaction_id: T.nilable(String),
          type: Symbol
        ).void
      end
      def initialize(
        id:,
        account_id:,
        account_number:,
        acknowledgement:,
        addenda:,
        amount:,
        approval:,
        cancellation:,
        company_descriptive_date:,
        company_discretionary_data:,
        company_entry_description:,
        company_name:,
        created_at:,
        created_by:,
        currency:,
        destination_account_holder:,
        external_account_id:,
        funding:,
        idempotency_key:,
        inbound_funds_hold:,
        individual_id:,
        individual_name:,
        network:,
        notifications_of_change:,
        pending_transaction_id:,
        preferred_effective_date:,
        return_:,
        routing_number:,
        settlement:,
        standard_entry_class_code:,
        statement_descriptor:,
        status:,
        submission:,
        transaction_id:,
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            account_number: String,
            acknowledgement: T.nilable(Increase::Models::ACHTransfer::Acknowledgement),
            addenda: T.nilable(Increase::Models::ACHTransfer::Addenda),
            amount: Integer,
            approval: T.nilable(Increase::Models::ACHTransfer::Approval),
            cancellation: T.nilable(Increase::Models::ACHTransfer::Cancellation),
            company_descriptive_date: T.nilable(String),
            company_discretionary_data: T.nilable(String),
            company_entry_description: T.nilable(String),
            company_name: T.nilable(String),
            created_at: Time,
            created_by: T.nilable(Increase::Models::ACHTransfer::CreatedBy),
            currency: Symbol,
            destination_account_holder: Symbol,
            external_account_id: T.nilable(String),
            funding: Symbol,
            idempotency_key: T.nilable(String),
            inbound_funds_hold: T.nilable(Increase::Models::ACHTransfer::InboundFundsHold),
            individual_id: T.nilable(String),
            individual_name: T.nilable(String),
            network: Symbol,
            notifications_of_change: T::Array[Increase::Models::ACHTransfer::NotificationsOfChange],
            pending_transaction_id: T.nilable(String),
            preferred_effective_date: Increase::Models::ACHTransfer::PreferredEffectiveDate,
            return_: T.nilable(Increase::Models::ACHTransfer::Return),
            routing_number: String,
            settlement: T.nilable(Increase::Models::ACHTransfer::Settlement),
            standard_entry_class_code: Symbol,
            statement_descriptor: String,
            status: Symbol,
            submission: T.nilable(Increase::Models::ACHTransfer::Submission),
            transaction_id: T.nilable(String),
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Acknowledgement < Increase::BaseModel
        sig { returns(String) }
        attr_accessor :acknowledged_at

        sig { params(acknowledged_at: String).void }
        def initialize(acknowledged_at:)
        end

        sig { override.returns({acknowledged_at: String}) }
        def to_hash
        end
      end

      class Addenda < Increase::BaseModel
        sig { returns(Symbol) }
        attr_accessor :category

        sig { returns(T.nilable(Increase::Models::ACHTransfer::Addenda::Freeform)) }
        attr_accessor :freeform

        sig { returns(T.nilable(Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice)) }
        attr_accessor :payment_order_remittance_advice

        sig do
          params(
            category: Symbol,
            freeform: T.nilable(Increase::Models::ACHTransfer::Addenda::Freeform),
            payment_order_remittance_advice: T.nilable(Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice)
          ).void
        end
        def initialize(category:, freeform:, payment_order_remittance_advice:)
        end

        sig do
          override.returns(
            {
              category: Symbol,
              freeform: T.nilable(Increase::Models::ACHTransfer::Addenda::Freeform),
              payment_order_remittance_advice: T.nilable(Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice)
            }
          )
        end
        def to_hash
        end

        class Category < Increase::Enum
          abstract!

          # Unstructured `payment_related_information` passed through with the transfer.
          FREEFORM = :freeform

          # Structured ASC X12 820 remittance advice records. Please reach out to [support@increase.com](mailto:support@increase.com) for more information.
          PAYMENT_ORDER_REMITTANCE_ADVICE = :payment_order_remittance_advice

          # Unknown addenda type.
          OTHER = :other

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Freeform < Increase::BaseModel
          sig { returns(T::Array[Increase::Models::ACHTransfer::Addenda::Freeform::Entry]) }
          attr_accessor :entries

          sig { params(entries: T::Array[Increase::Models::ACHTransfer::Addenda::Freeform::Entry]).void }
          def initialize(entries:)
          end

          sig do
            override.returns({entries: T::Array[Increase::Models::ACHTransfer::Addenda::Freeform::Entry]})
          end
          def to_hash
          end

          class Entry < Increase::BaseModel
            sig { returns(String) }
            attr_accessor :payment_related_information

            sig { params(payment_related_information: String).void }
            def initialize(payment_related_information:)
            end

            sig { override.returns({payment_related_information: String}) }
            def to_hash
            end
          end
        end

        class PaymentOrderRemittanceAdvice < Increase::BaseModel
          sig do
            returns(T::Array[Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice])
          end
          attr_accessor :invoices

          sig do
            params(invoices: T::Array[Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice]).void
          end
          def initialize(invoices:)
          end

          sig do
            override.returns({invoices: T::Array[Increase::Models::ACHTransfer::Addenda::PaymentOrderRemittanceAdvice::Invoice]})
          end
          def to_hash
          end

          class Invoice < Increase::BaseModel
            sig { returns(String) }
            attr_accessor :invoice_number

            sig { returns(Integer) }
            attr_accessor :paid_amount

            sig { params(invoice_number: String, paid_amount: Integer).void }
            def initialize(invoice_number:, paid_amount:)
            end

            sig { override.returns({invoice_number: String, paid_amount: Integer}) }
            def to_hash
            end
          end
        end
      end

      class Approval < Increase::BaseModel
        sig { returns(Time) }
        attr_accessor :approved_at

        sig { returns(T.nilable(String)) }
        attr_accessor :approved_by

        sig { params(approved_at: Time, approved_by: T.nilable(String)).void }
        def initialize(approved_at:, approved_by:)
        end

        sig { override.returns({approved_at: Time, approved_by: T.nilable(String)}) }
        def to_hash
        end
      end

      class Cancellation < Increase::BaseModel
        sig { returns(Time) }
        attr_accessor :canceled_at

        sig { returns(T.nilable(String)) }
        attr_accessor :canceled_by

        sig { params(canceled_at: Time, canceled_by: T.nilable(String)).void }
        def initialize(canceled_at:, canceled_by:)
        end

        sig { override.returns({canceled_at: Time, canceled_by: T.nilable(String)}) }
        def to_hash
        end
      end

      class CreatedBy < Increase::BaseModel
        sig { returns(T.nilable(Increase::Models::ACHTransfer::CreatedBy::APIKey)) }
        attr_accessor :api_key

        sig { returns(Symbol) }
        attr_accessor :category

        sig { returns(T.nilable(Increase::Models::ACHTransfer::CreatedBy::OAuthApplication)) }
        attr_accessor :oauth_application

        sig { returns(T.nilable(Increase::Models::ACHTransfer::CreatedBy::User)) }
        attr_accessor :user

        sig do
          params(
            api_key: T.nilable(Increase::Models::ACHTransfer::CreatedBy::APIKey),
            category: Symbol,
            oauth_application: T.nilable(Increase::Models::ACHTransfer::CreatedBy::OAuthApplication),
            user: T.nilable(Increase::Models::ACHTransfer::CreatedBy::User)
          ).void
        end
        def initialize(api_key:, category:, oauth_application:, user:)
        end

        sig do
          override.returns(
            {
              api_key: T.nilable(Increase::Models::ACHTransfer::CreatedBy::APIKey),
              category: Symbol,
              oauth_application: T.nilable(Increase::Models::ACHTransfer::CreatedBy::OAuthApplication),
              user: T.nilable(Increase::Models::ACHTransfer::CreatedBy::User)
            }
          )
        end
        def to_hash
        end

        class APIKey < Increase::BaseModel
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          sig { params(description: T.nilable(String)).void }
          def initialize(description:)
          end

          sig { override.returns({description: T.nilable(String)}) }
          def to_hash
          end
        end

        class Category < Increase::Enum
          abstract!

          # An API key. Details will be under the `api_key` object.
          API_KEY = :api_key

          # An OAuth application you connected to Increase. Details will be under the `oauth_application` object.
          OAUTH_APPLICATION = :oauth_application

          # A User in the Increase dashboard. Details will be under the `user` object.
          USER = :user

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class OAuthApplication < Increase::BaseModel
          sig { returns(String) }
          attr_accessor :name

          sig { params(name: String).void }
          def initialize(name:)
          end

          sig { override.returns({name: String}) }
          def to_hash
          end
        end

        class User < Increase::BaseModel
          sig { returns(String) }
          attr_accessor :email

          sig { params(email: String).void }
          def initialize(email:)
          end

          sig { override.returns({email: String}) }
          def to_hash
          end
        end
      end

      class Currency < Increase::Enum
        abstract!

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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class DestinationAccountHolder < Increase::Enum
        abstract!

        # The External Account is owned by a business.
        BUSINESS = :business

        # The External Account is owned by an individual.
        INDIVIDUAL = :individual

        # It's unknown what kind of entity owns the External Account.
        UNKNOWN = :unknown

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Funding < Increase::Enum
        abstract!

        # A checking account.
        CHECKING = :checking

        # A savings account.
        SAVINGS = :savings

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class InboundFundsHold < Increase::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(Time) }
        attr_accessor :automatically_releases_at

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(Symbol) }
        attr_accessor :currency

        sig { returns(T.nilable(String)) }
        attr_accessor :held_transaction_id

        sig { returns(T.nilable(String)) }
        attr_accessor :pending_transaction_id

        sig { returns(T.nilable(Time)) }
        attr_accessor :released_at

        sig { returns(Symbol) }
        attr_accessor :status

        sig { returns(Symbol) }
        attr_accessor :type

        sig do
          params(
            id: String,
            amount: Integer,
            automatically_releases_at: Time,
            created_at: Time,
            currency: Symbol,
            held_transaction_id: T.nilable(String),
            pending_transaction_id: T.nilable(String),
            released_at: T.nilable(Time),
            status: Symbol,
            type: Symbol
          ).void
        end
        def initialize(
          id:,
          amount:,
          automatically_releases_at:,
          created_at:,
          currency:,
          held_transaction_id:,
          pending_transaction_id:,
          released_at:,
          status:,
          type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              amount: Integer,
              automatically_releases_at: Time,
              created_at: Time,
              currency: Symbol,
              held_transaction_id: T.nilable(String),
              pending_transaction_id: T.nilable(String),
              released_at: T.nilable(Time),
              status: Symbol,
              type: Symbol
            }
          )
        end
        def to_hash
        end

        class Currency < Increase::Enum
          abstract!

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Status < Increase::Enum
          abstract!

          # Funds are still being held.
          HELD = :held

          # Funds have been released.
          COMPLETE = :complete

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Type < Increase::Enum
          abstract!

          INBOUND_FUNDS_HOLD = :inbound_funds_hold

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Network < Increase::Enum
        abstract!

        ACH = :ach

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class NotificationsOfChange < Increase::BaseModel
        sig { returns(Symbol) }
        attr_accessor :change_code

        sig { returns(String) }
        attr_accessor :corrected_data

        sig { returns(Time) }
        attr_accessor :created_at

        sig { params(change_code: Symbol, corrected_data: String, created_at: Time).void }
        def initialize(change_code:, corrected_data:, created_at:)
        end

        sig { override.returns({change_code: Symbol, corrected_data: String, created_at: Time}) }
        def to_hash
        end

        class ChangeCode < Increase::Enum
          abstract!

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
          INCORRECT_ROUTING_NUMBER_ACCOUNT_NUMBER_AND_TRANSACTION_CODE = :incorrect_routing_number_account_number_and_transaction_code

          # The receiving depository financial institution identification was incorrect.
          INCORRECT_RECEIVING_DEPOSITORY_FINANCIAL_INSTITUTION_IDENTIFICATION = :incorrect_receiving_depository_financial_institution_identification

          # The individual identification number was incorrect.
          INCORRECT_INDIVIDUAL_IDENTIFICATION_NUMBER = :incorrect_individual_identification_number

          # The addenda had an incorrect format.
          ADDENDA_FORMAT_ERROR = :addenda_format_error

          # The standard entry class code was incorrect for an outbound international payment.
          INCORRECT_STANDARD_ENTRY_CLASS_CODE_FOR_OUTBOUND_INTERNATIONAL_PAYMENT = :incorrect_standard_entry_class_code_for_outbound_international_payment

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
          ROUTING_NUMBER_NOT_FROM_ORIGINAL_ENTRY_DETAIL_RECORD = :routing_number_not_from_original_entry_detail_record

          # The depository financial institution account number was not from the original entry detail record.
          DEPOSITORY_FINANCIAL_INSTITUTION_ACCOUNT_NUMBER_NOT_FROM_ORIGINAL_ENTRY_DETAIL_RECORD = :depository_financial_institution_account_number_not_from_original_entry_detail_record

          # The transaction code was incorrect, initiated by the originating depository financial institution.
          INCORRECT_TRANSACTION_CODE_BY_ORIGINATING_DEPOSITORY_FINANCIAL_INSTITUTION = :incorrect_transaction_code_by_originating_depository_financial_institution

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class PreferredEffectiveDate < Increase::BaseModel
        sig { returns(T.nilable(Date)) }
        attr_accessor :date

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :settlement_schedule

        sig { params(date: T.nilable(Date), settlement_schedule: T.nilable(Symbol)).void }
        def initialize(date:, settlement_schedule:)
        end

        sig { override.returns({date: T.nilable(Date), settlement_schedule: T.nilable(Symbol)}) }
        def to_hash
        end

        class SettlementSchedule < Increase::Enum
          abstract!

          # The chosen effective date will be the same as the ACH processing date on which the transfer is submitted.
          # This is necessary, but not sufficient for the transfer to be settled same-day:
          # it must also be submitted before the last same-day cutoff
          # and be less than or equal to $1,000.000.00.
          SAME_DAY = T.let(:same_day, T.nilable(Symbol))

          # The chosen effective date will be the business day following the ACH processing date on which the transfer is submitted. The transfer will be settled on that future day.
          FUTURE_DATED = T.let(:future_dated, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Return < Increase::BaseModel
        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :raw_return_reason_code

        sig { returns(Symbol) }
        attr_accessor :return_reason_code

        sig { returns(String) }
        attr_accessor :trace_number

        sig { returns(String) }
        attr_accessor :transaction_id

        sig { returns(String) }
        attr_accessor :transfer_id

        sig do
          params(
            created_at: Time,
            raw_return_reason_code: String,
            return_reason_code: Symbol,
            trace_number: String,
            transaction_id: String,
            transfer_id: String
          ).void
        end
        def initialize(
          created_at:,
          raw_return_reason_code:,
          return_reason_code:,
          trace_number:,
          transaction_id:,
          transfer_id:
        )
        end

        sig do
          override.returns(
            {
              created_at: Time,
              raw_return_reason_code: String,
              return_reason_code: Symbol,
              trace_number: String,
              transaction_id: String,
              transfer_id: String
            }
          )
        end
        def to_hash
        end

        class ReturnReasonCode < Increase::Enum
          abstract!

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Settlement < Increase::BaseModel
        sig { returns(Time) }
        attr_accessor :settled_at

        sig { params(settled_at: Time).void }
        def initialize(settled_at:)
        end

        sig { override.returns({settled_at: Time}) }
        def to_hash
        end
      end

      class StandardEntryClassCode < Increase::Enum
        abstract!

        # Corporate Credit and Debit (CCD).
        CORPORATE_CREDIT_OR_DEBIT = :corporate_credit_or_debit

        # Corporate Trade Exchange (CTX).
        CORPORATE_TRADE_EXCHANGE = :corporate_trade_exchange

        # Prearranged Payments and Deposits (PPD).
        PREARRANGED_PAYMENTS_AND_DEPOSIT = :prearranged_payments_and_deposit

        # Internet Initiated (WEB).
        INTERNET_INITIATED = :internet_initiated

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Status < Increase::Enum
        abstract!

        # The transfer is pending approval.
        PENDING_APPROVAL = :pending_approval

        # The transfer belongs to a Transfer Session that is pending confirmation.
        PENDING_TRANSFER_SESSION_CONFIRMATION = :pending_transfer_session_confirmation

        # The transfer has been canceled.
        CANCELED = :canceled

        # The transfer is pending submission to the Federal Reserve.
        PENDING_SUBMISSION = :pending_submission

        # The transfer is pending review by Increase.
        PENDING_REVIEWING = :pending_reviewing

        # The transfer requires attention from an Increase operator.
        REQUIRES_ATTENTION = :requires_attention

        # The transfer has been rejected.
        REJECTED = :rejected

        # The transfer is complete.
        SUBMITTED = :submitted

        # The transfer has been returned.
        RETURNED = :returned

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Submission < Increase::BaseModel
        sig { returns(Date) }
        attr_accessor :effective_date

        sig { returns(Time) }
        attr_accessor :expected_funds_settlement_at

        sig { returns(Symbol) }
        attr_accessor :expected_settlement_schedule

        sig { returns(Time) }
        attr_accessor :submitted_at

        sig { returns(String) }
        attr_accessor :trace_number

        sig do
          params(
            effective_date: Date,
            expected_funds_settlement_at: Time,
            expected_settlement_schedule: Symbol,
            submitted_at: Time,
            trace_number: String
          ).void
        end
        def initialize(
          effective_date:,
          expected_funds_settlement_at:,
          expected_settlement_schedule:,
          submitted_at:,
          trace_number:
        )
        end

        sig do
          override.returns(
            {
              effective_date: Date,
              expected_funds_settlement_at: Time,
              expected_settlement_schedule: Symbol,
              submitted_at: Time,
              trace_number: String
            }
          )
        end
        def to_hash
        end

        class ExpectedSettlementSchedule < Increase::Enum
          abstract!

          # The transfer is expected to settle same-day.
          SAME_DAY = :same_day

          # The transfer is expected to settle on a future date.
          FUTURE_DATED = :future_dated

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Type < Increase::Enum
        abstract!

        ACH_TRANSFER = :ach_transfer

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
