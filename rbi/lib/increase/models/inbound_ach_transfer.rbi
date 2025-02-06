# typed: strong

module Increase
  module Models
    class InboundACHTransfer < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::Acceptance)) }
      attr_accessor :acceptance

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(String) }
      attr_accessor :account_number_id

      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::Addenda)) }
      attr_accessor :addenda

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(Time) }
      attr_accessor :automatically_resolves_at

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::Decline)) }
      attr_accessor :decline

      sig { returns(Symbol) }
      attr_accessor :direction

      sig { returns(Date) }
      attr_accessor :effective_date

      sig { returns(Symbol) }
      attr_accessor :expected_settlement_schedule

      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::InternationalAddenda)) }
      attr_accessor :international_addenda

      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::NotificationOfChange)) }
      attr_accessor :notification_of_change

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_company_descriptive_date

      sig { returns(T.nilable(String)) }
      attr_accessor :originator_company_discretionary_data

      sig { returns(String) }
      attr_accessor :originator_company_entry_description

      sig { returns(String) }
      attr_accessor :originator_company_id

      sig { returns(String) }
      attr_accessor :originator_company_name

      sig { returns(String) }
      attr_accessor :originator_routing_number

      sig { returns(T.nilable(String)) }
      attr_accessor :receiver_id_number

      sig { returns(T.nilable(String)) }
      attr_accessor :receiver_name

      sig { returns(Symbol) }
      attr_accessor :standard_entry_class_code

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :trace_number

      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::TransferReturn)) }
      attr_accessor :transfer_return

      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          id: String,
          acceptance: T.nilable(Increase::Models::InboundACHTransfer::Acceptance),
          account_id: String,
          account_number_id: String,
          addenda: T.nilable(Increase::Models::InboundACHTransfer::Addenda),
          amount: Integer,
          automatically_resolves_at: Time,
          created_at: Time,
          decline: T.nilable(Increase::Models::InboundACHTransfer::Decline),
          direction: Symbol,
          effective_date: Date,
          expected_settlement_schedule: Symbol,
          international_addenda: T.nilable(Increase::Models::InboundACHTransfer::InternationalAddenda),
          notification_of_change: T.nilable(Increase::Models::InboundACHTransfer::NotificationOfChange),
          originator_company_descriptive_date: T.nilable(String),
          originator_company_discretionary_data: T.nilable(String),
          originator_company_entry_description: String,
          originator_company_id: String,
          originator_company_name: String,
          originator_routing_number: String,
          receiver_id_number: T.nilable(String),
          receiver_name: T.nilable(String),
          standard_entry_class_code: Symbol,
          status: Symbol,
          trace_number: String,
          transfer_return: T.nilable(Increase::Models::InboundACHTransfer::TransferReturn),
          type: Symbol
        ).void
      end
      def initialize(
        id:,
        acceptance:,
        account_id:,
        account_number_id:,
        addenda:,
        amount:,
        automatically_resolves_at:,
        created_at:,
        decline:,
        direction:,
        effective_date:,
        expected_settlement_schedule:,
        international_addenda:,
        notification_of_change:,
        originator_company_descriptive_date:,
        originator_company_discretionary_data:,
        originator_company_entry_description:,
        originator_company_id:,
        originator_company_name:,
        originator_routing_number:,
        receiver_id_number:,
        receiver_name:,
        standard_entry_class_code:,
        status:,
        trace_number:,
        transfer_return:,
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            acceptance: T.nilable(Increase::Models::InboundACHTransfer::Acceptance),
            account_id: String,
            account_number_id: String,
            addenda: T.nilable(Increase::Models::InboundACHTransfer::Addenda),
            amount: Integer,
            automatically_resolves_at: Time,
            created_at: Time,
            decline: T.nilable(Increase::Models::InboundACHTransfer::Decline),
            direction: Symbol,
            effective_date: Date,
            expected_settlement_schedule: Symbol,
            international_addenda: T.nilable(Increase::Models::InboundACHTransfer::InternationalAddenda),
            notification_of_change: T.nilable(Increase::Models::InboundACHTransfer::NotificationOfChange),
            originator_company_descriptive_date: T.nilable(String),
            originator_company_discretionary_data: T.nilable(String),
            originator_company_entry_description: String,
            originator_company_id: String,
            originator_company_name: String,
            originator_routing_number: String,
            receiver_id_number: T.nilable(String),
            receiver_name: T.nilable(String),
            standard_entry_class_code: Symbol,
            status: Symbol,
            trace_number: String,
            transfer_return: T.nilable(Increase::Models::InboundACHTransfer::TransferReturn),
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Acceptance < Increase::BaseModel
        sig { returns(Time) }
        attr_accessor :accepted_at

        sig { returns(String) }
        attr_accessor :transaction_id

        sig { params(accepted_at: Time, transaction_id: String).void }
        def initialize(accepted_at:, transaction_id:)
        end

        sig { override.returns({accepted_at: Time, transaction_id: String}) }
        def to_hash
        end
      end

      class Addenda < Increase::BaseModel
        sig { returns(Symbol) }
        attr_accessor :category

        sig { returns(T.nilable(Increase::Models::InboundACHTransfer::Addenda::Freeform)) }
        attr_accessor :freeform

        sig do
          params(
            category: Symbol,
            freeform: T.nilable(Increase::Models::InboundACHTransfer::Addenda::Freeform)
          ).void
        end
        def initialize(category:, freeform:)
        end

        sig do
          override.returns(
            {
              category: Symbol,
              freeform: T.nilable(Increase::Models::InboundACHTransfer::Addenda::Freeform)
            }
          )
        end
        def to_hash
        end

        class Category < Increase::Enum
          abstract!

          # Unstructured addendum.
          FREEFORM = :freeform

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Freeform < Increase::BaseModel
          sig { returns(T::Array[Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry]) }
          attr_accessor :entries

          sig do
            params(entries: T::Array[Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry]).void
          end
          def initialize(entries:)
          end

          sig do
            override.returns({entries: T::Array[Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry]})
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
      end

      class Decline < Increase::BaseModel
        sig { returns(Time) }
        attr_accessor :declined_at

        sig { returns(String) }
        attr_accessor :declined_transaction_id

        sig { returns(Symbol) }
        attr_accessor :reason

        sig { params(declined_at: Time, declined_transaction_id: String, reason: Symbol).void }
        def initialize(declined_at:, declined_transaction_id:, reason:)
        end

        sig { override.returns({declined_at: Time, declined_transaction_id: String, reason: Symbol}) }
        def to_hash
        end

        class Reason < Increase::Enum
          abstract!

          # The account number is canceled.
          ACH_ROUTE_CANCELED = :ach_route_canceled

          # The account number is disabled.
          ACH_ROUTE_DISABLED = :ach_route_disabled

          # The transaction would cause an Increase limit to be exceeded.
          BREACHES_LIMIT = :breaches_limit

          # The account's entity is not active.
          ENTITY_NOT_ACTIVE = :entity_not_active

          # Your account is inactive.
          GROUP_LOCKED = :group_locked

          # The transaction is not allowed per Increase's terms.
          TRANSACTION_NOT_ALLOWED = :transaction_not_allowed

          # Your integration declined this transfer via the API.
          USER_INITIATED = :user_initiated

          # Your account contains insufficient funds.
          INSUFFICIENT_FUNDS = :insufficient_funds

          # The originating financial institution asked for this transfer to be returned. The receiving bank is complying with the request.
          RETURNED_PER_ODFI_REQUEST = :returned_per_odfi_request

          # The customer no longer authorizes this transaction.
          AUTHORIZATION_REVOKED_BY_CUSTOMER = :authorization_revoked_by_customer

          # The customer asked for the payment to be stopped.
          PAYMENT_STOPPED = :payment_stopped

          # The customer advises that the debit was unauthorized.
          CUSTOMER_ADVISED_UNAUTHORIZED_IMPROPER_INELIGIBLE_OR_INCOMPLETE = :customer_advised_unauthorized_improper_ineligible_or_incomplete

          # The payee is deceased.
          REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE_IN_THAT_CAPACITY = :representative_payee_deceased_or_unable_to_continue_in_that_capacity

          # The account holder is deceased.
          BENEFICIARY_OR_ACCOUNT_HOLDER_DECEASED = :beneficiary_or_account_holder_deceased

          # The customer refused a credit entry.
          CREDIT_ENTRY_REFUSED_BY_RECEIVER = :credit_entry_refused_by_receiver

          # The account holder identified this transaction as a duplicate.
          DUPLICATE_ENTRY = :duplicate_entry

          # The corporate customer no longer authorizes this transaction.
          CORPORATE_CUSTOMER_ADVISED_NOT_AUTHORIZED = :corporate_customer_advised_not_authorized

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Direction < Increase::Enum
        abstract!

        # Credit
        CREDIT = :credit

        # Debit
        DEBIT = :debit

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
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

      class InternationalAddenda < Increase::BaseModel
        sig { returns(String) }
        attr_accessor :destination_country_code

        sig { returns(String) }
        attr_accessor :destination_currency_code

        sig { returns(Symbol) }
        attr_accessor :foreign_exchange_indicator

        sig { returns(T.nilable(String)) }
        attr_accessor :foreign_exchange_reference

        sig { returns(Symbol) }
        attr_accessor :foreign_exchange_reference_indicator

        sig { returns(Integer) }
        attr_accessor :foreign_payment_amount

        sig { returns(T.nilable(String)) }
        attr_accessor :foreign_trace_number

        sig { returns(Symbol) }
        attr_accessor :international_transaction_type_code

        sig { returns(String) }
        attr_accessor :originating_currency_code

        sig { returns(String) }
        attr_accessor :originating_depository_financial_institution_branch_country

        sig { returns(String) }
        attr_accessor :originating_depository_financial_institution_id

        sig { returns(Symbol) }
        attr_accessor :originating_depository_financial_institution_id_qualifier

        sig { returns(String) }
        attr_accessor :originating_depository_financial_institution_name

        sig { returns(String) }
        attr_accessor :originator_city

        sig { returns(String) }
        attr_accessor :originator_country

        sig { returns(String) }
        attr_accessor :originator_identification

        sig { returns(String) }
        attr_accessor :originator_name

        sig { returns(T.nilable(String)) }
        attr_accessor :originator_postal_code

        sig { returns(T.nilable(String)) }
        attr_accessor :originator_state_or_province

        sig { returns(String) }
        attr_accessor :originator_street_address

        sig { returns(T.nilable(String)) }
        attr_accessor :payment_related_information

        sig { returns(T.nilable(String)) }
        attr_accessor :payment_related_information2

        sig { returns(String) }
        attr_accessor :receiver_city

        sig { returns(String) }
        attr_accessor :receiver_country

        sig { returns(T.nilable(String)) }
        attr_accessor :receiver_identification_number

        sig { returns(T.nilable(String)) }
        attr_accessor :receiver_postal_code

        sig { returns(T.nilable(String)) }
        attr_accessor :receiver_state_or_province

        sig { returns(String) }
        attr_accessor :receiver_street_address

        sig { returns(String) }
        attr_accessor :receiving_company_or_individual_name

        sig { returns(String) }
        attr_accessor :receiving_depository_financial_institution_country

        sig { returns(String) }
        attr_accessor :receiving_depository_financial_institution_id

        sig { returns(Symbol) }
        attr_accessor :receiving_depository_financial_institution_id_qualifier

        sig { returns(String) }
        attr_accessor :receiving_depository_financial_institution_name

        sig do
          params(
            destination_country_code: String,
            destination_currency_code: String,
            foreign_exchange_indicator: Symbol,
            foreign_exchange_reference: T.nilable(String),
            foreign_exchange_reference_indicator: Symbol,
            foreign_payment_amount: Integer,
            foreign_trace_number: T.nilable(String),
            international_transaction_type_code: Symbol,
            originating_currency_code: String,
            originating_depository_financial_institution_branch_country: String,
            originating_depository_financial_institution_id: String,
            originating_depository_financial_institution_id_qualifier: Symbol,
            originating_depository_financial_institution_name: String,
            originator_city: String,
            originator_country: String,
            originator_identification: String,
            originator_name: String,
            originator_postal_code: T.nilable(String),
            originator_state_or_province: T.nilable(String),
            originator_street_address: String,
            payment_related_information: T.nilable(String),
            payment_related_information2: T.nilable(String),
            receiver_city: String,
            receiver_country: String,
            receiver_identification_number: T.nilable(String),
            receiver_postal_code: T.nilable(String),
            receiver_state_or_province: T.nilable(String),
            receiver_street_address: String,
            receiving_company_or_individual_name: String,
            receiving_depository_financial_institution_country: String,
            receiving_depository_financial_institution_id: String,
            receiving_depository_financial_institution_id_qualifier: Symbol,
            receiving_depository_financial_institution_name: String
          ).void
        end
        def initialize(
          destination_country_code:,
          destination_currency_code:,
          foreign_exchange_indicator:,
          foreign_exchange_reference:,
          foreign_exchange_reference_indicator:,
          foreign_payment_amount:,
          foreign_trace_number:,
          international_transaction_type_code:,
          originating_currency_code:,
          originating_depository_financial_institution_branch_country:,
          originating_depository_financial_institution_id:,
          originating_depository_financial_institution_id_qualifier:,
          originating_depository_financial_institution_name:,
          originator_city:,
          originator_country:,
          originator_identification:,
          originator_name:,
          originator_postal_code:,
          originator_state_or_province:,
          originator_street_address:,
          payment_related_information:,
          payment_related_information2:,
          receiver_city:,
          receiver_country:,
          receiver_identification_number:,
          receiver_postal_code:,
          receiver_state_or_province:,
          receiver_street_address:,
          receiving_company_or_individual_name:,
          receiving_depository_financial_institution_country:,
          receiving_depository_financial_institution_id:,
          receiving_depository_financial_institution_id_qualifier:,
          receiving_depository_financial_institution_name:
        )
        end

        sig do
          override.returns(
            {
              destination_country_code: String,
              destination_currency_code: String,
              foreign_exchange_indicator: Symbol,
              foreign_exchange_reference: T.nilable(String),
              foreign_exchange_reference_indicator: Symbol,
              foreign_payment_amount: Integer,
              foreign_trace_number: T.nilable(String),
              international_transaction_type_code: Symbol,
              originating_currency_code: String,
              originating_depository_financial_institution_branch_country: String,
              originating_depository_financial_institution_id: String,
              originating_depository_financial_institution_id_qualifier: Symbol,
              originating_depository_financial_institution_name: String,
              originator_city: String,
              originator_country: String,
              originator_identification: String,
              originator_name: String,
              originator_postal_code: T.nilable(String),
              originator_state_or_province: T.nilable(String),
              originator_street_address: String,
              payment_related_information: T.nilable(String),
              payment_related_information2: T.nilable(String),
              receiver_city: String,
              receiver_country: String,
              receiver_identification_number: T.nilable(String),
              receiver_postal_code: T.nilable(String),
              receiver_state_or_province: T.nilable(String),
              receiver_street_address: String,
              receiving_company_or_individual_name: String,
              receiving_depository_financial_institution_country: String,
              receiving_depository_financial_institution_id: String,
              receiving_depository_financial_institution_id_qualifier: Symbol,
              receiving_depository_financial_institution_name: String
            }
          )
        end
        def to_hash
        end

        class ForeignExchangeIndicator < Increase::Enum
          abstract!

          # The originator chose an amount in their own currency. The settled amount in USD was converted using the exchange rate.
          FIXED_TO_VARIABLE = :fixed_to_variable

          # The originator chose an amount to settle in USD. The originator's amount was variable; known only after the foreign exchange conversion.
          VARIABLE_TO_FIXED = :variable_to_fixed

          # The amount was originated and settled as a fixed amount in USD. There is no foreign exchange conversion.
          FIXED_TO_FIXED = :fixed_to_fixed

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class ForeignExchangeReferenceIndicator < Increase::Enum
          abstract!

          # The ACH file contains a foreign exchange rate.
          FOREIGN_EXCHANGE_RATE = :foreign_exchange_rate

          # The ACH file contains a reference to a well-known foreign exchange rate.
          FOREIGN_EXCHANGE_REFERENCE_NUMBER = :foreign_exchange_reference_number

          # There is no foreign exchange for this transfer, so the `foreign_exchange_reference` field is blank.
          BLANK = :blank

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class InternationalTransactionTypeCode < Increase::Enum
          abstract!

          # Sent as `ANN` in the Nacha file.
          ANNUITY = :annuity

          # Sent as `BUS` in the Nacha file.
          BUSINESS_OR_COMMERCIAL = :business_or_commercial

          # Sent as `DEP` in the Nacha file.
          DEPOSIT = :deposit

          # Sent as `LOA` in the Nacha file.
          LOAN = :loan

          # Sent as `MIS` in the Nacha file.
          MISCELLANEOUS = :miscellaneous

          # Sent as `MOR` in the Nacha file.
          MORTGAGE = :mortgage

          # Sent as `PEN` in the Nacha file.
          PENSION = :pension

          # Sent as `REM` in the Nacha file.
          REMITTANCE = :remittance

          # Sent as `RLS` in the Nacha file.
          RENT_OR_LEASE = :rent_or_lease

          # Sent as `SAL` in the Nacha file.
          SALARY_OR_PAYROLL = :salary_or_payroll

          # Sent as `TAX` in the Nacha file.
          TAX = :tax

          # Sent as `ARC` in the Nacha file.
          ACCOUNTS_RECEIVABLE = :accounts_receivable

          # Sent as `BOC` in the Nacha file.
          BACK_OFFICE_CONVERSION = :back_office_conversion

          # Sent as `MTE` in the Nacha file.
          MACHINE_TRANSFER = :machine_transfer

          # Sent as `POP` in the Nacha file.
          POINT_OF_PURCHASE = :point_of_purchase

          # Sent as `POS` in the Nacha file.
          POINT_OF_SALE = :point_of_sale

          # Sent as `RCK` in the Nacha file.
          REPRESENTED_CHECK = :represented_check

          # Sent as `SHR` in the Nacha file.
          SHARED_NETWORK_TRANSACTION = :shared_network_transaction

          # Sent as `TEL` in the Nacha file.
          TELPHONE_INITIATED = :telphone_initiated

          # Sent as `WEB` in the Nacha file.
          INTERNET_INITIATED = :internet_initiated

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class OriginatingDepositoryFinancialInstitutionIDQualifier < Increase::Enum
          abstract!

          # A domestic clearing system number. In the US, for example, this is the American Banking Association (ABA) routing number.
          NATIONAL_CLEARING_SYSTEM_NUMBER = :national_clearing_system_number

          # The SWIFT Bank Identifier Code (BIC) of the bank.
          BIC_CODE = :bic_code

          # An International Bank Account Number.
          IBAN = :iban

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class ReceivingDepositoryFinancialInstitutionIDQualifier < Increase::Enum
          abstract!

          # A domestic clearing system number. In the US, for example, this is the American Banking Association (ABA) routing number.
          NATIONAL_CLEARING_SYSTEM_NUMBER = :national_clearing_system_number

          # The SWIFT Bank Identifier Code (BIC) of the bank.
          BIC_CODE = :bic_code

          # An International Bank Account Number.
          IBAN = :iban

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class NotificationOfChange < Increase::BaseModel
        sig { returns(T.nilable(String)) }
        attr_accessor :updated_account_number

        sig { returns(T.nilable(String)) }
        attr_accessor :updated_routing_number

        sig do
          params(updated_account_number: T.nilable(String), updated_routing_number: T.nilable(String)).void
        end
        def initialize(updated_account_number:, updated_routing_number:)
        end

        sig do
          override.returns(
            {
              updated_account_number: T.nilable(String),
              updated_routing_number: T.nilable(String)
            }
          )
        end
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

        # Point of Sale (POS).
        POINT_OF_SALE = :point_of_sale

        # Telephone Initiated (TEL).
        TELEPHONE_INITIATED = :telephone_initiated

        # Customer Initiated (CIE).
        CUSTOMER_INITIATED = :customer_initiated

        # Accounts Receivable (ARC).
        ACCOUNTS_RECEIVABLE = :accounts_receivable

        # Machine Transfer (MTE).
        MACHINE_TRANSFER = :machine_transfer

        # Shared Network Transaction (SHR).
        SHARED_NETWORK_TRANSACTION = :shared_network_transaction

        # Represented Check (RCK).
        REPRESENTED_CHECK = :represented_check

        # Back Office Conversion (BOC).
        BACK_OFFICE_CONVERSION = :back_office_conversion

        # Point of Purchase (POP).
        POINT_OF_PURCHASE = :point_of_purchase

        # Check Truncation (TRC).
        CHECK_TRUNCATION = :check_truncation

        # Destroyed Check (XCK).
        DESTROYED_CHECK = :destroyed_check

        # International ACH Transaction (IAT).
        INTERNATIONAL_ACH_TRANSACTION = :international_ach_transaction

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Status < Increase::Enum
        abstract!

        # The Inbound ACH Transfer is awaiting action, will transition automatically if no action is taken.
        PENDING = :pending

        # The Inbound ACH Transfer has been declined.
        DECLINED = :declined

        # The Inbound ACH Transfer is accepted.
        ACCEPTED = :accepted

        # The Inbound ACH Transfer has been returned.
        RETURNED = :returned

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class TransferReturn < Increase::BaseModel
        sig { returns(Symbol) }
        attr_accessor :reason

        sig { returns(Time) }
        attr_accessor :returned_at

        sig { returns(String) }
        attr_accessor :transaction_id

        sig { params(reason: Symbol, returned_at: Time, transaction_id: String).void }
        def initialize(reason:, returned_at:, transaction_id:)
        end

        sig { override.returns({reason: Symbol, returned_at: Time, transaction_id: String}) }
        def to_hash
        end

        class Reason < Increase::Enum
          abstract!

          # The customer's account has insufficient funds. This reason is only allowed for debits. The Nacha return code is R01.
          INSUFFICIENT_FUNDS = :insufficient_funds

          # The originating financial institution asked for this transfer to be returned. The receiving bank is complying with the request. The Nacha return code is R06.
          RETURNED_PER_ODFI_REQUEST = :returned_per_odfi_request

          # The customer no longer authorizes this transaction. The Nacha return code is R07.
          AUTHORIZATION_REVOKED_BY_CUSTOMER = :authorization_revoked_by_customer

          # The customer asked for the payment to be stopped. This reason is only allowed for debits. The Nacha return code is R08.
          PAYMENT_STOPPED = :payment_stopped

          # The customer advises that the debit was unauthorized. The Nacha return code is R10.
          CUSTOMER_ADVISED_UNAUTHORIZED_IMPROPER_INELIGIBLE_OR_INCOMPLETE = :customer_advised_unauthorized_improper_ineligible_or_incomplete

          # The payee is deceased. The Nacha return code is R14.
          REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE_IN_THAT_CAPACITY = :representative_payee_deceased_or_unable_to_continue_in_that_capacity

          # The account holder is deceased. The Nacha return code is R15.
          BENEFICIARY_OR_ACCOUNT_HOLDER_DECEASED = :beneficiary_or_account_holder_deceased

          # The customer refused a credit entry. This reason is only allowed for credits. The Nacha return code is R23.
          CREDIT_ENTRY_REFUSED_BY_RECEIVER = :credit_entry_refused_by_receiver

          # The account holder identified this transaction as a duplicate. The Nacha return code is R24.
          DUPLICATE_ENTRY = :duplicate_entry

          # The corporate customer no longer authorizes this transaction. The Nacha return code is R29.
          CORPORATE_CUSTOMER_ADVISED_NOT_AUTHORIZED = :corporate_customer_advised_not_authorized

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Type < Increase::Enum
        abstract!

        INBOUND_ACH_TRANSFER = :inbound_ach_transfer

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
