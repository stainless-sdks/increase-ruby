# typed: strong

module Increase
  module Models
    class InboundACHTransfer < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::Acceptance)) }
      def acceptance
      end

      sig do
        params(_: T.nilable(Increase::Models::InboundACHTransfer::Acceptance))
          .returns(T.nilable(Increase::Models::InboundACHTransfer::Acceptance))
      end
      def acceptance=(_)
      end

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(String) }
      def account_number_id
      end

      sig { params(_: String).returns(String) }
      def account_number_id=(_)
      end

      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::Addenda)) }
      def addenda
      end

      sig do
        params(_: T.nilable(Increase::Models::InboundACHTransfer::Addenda))
          .returns(T.nilable(Increase::Models::InboundACHTransfer::Addenda))
      end
      def addenda=(_)
      end

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(Time) }
      def automatically_resolves_at
      end

      sig { params(_: Time).returns(Time) }
      def automatically_resolves_at=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::Decline)) }
      def decline
      end

      sig do
        params(_: T.nilable(Increase::Models::InboundACHTransfer::Decline))
          .returns(T.nilable(Increase::Models::InboundACHTransfer::Decline))
      end
      def decline=(_)
      end

      sig { returns(Symbol) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
      def direction=(_)
      end

      sig { returns(Date) }
      def effective_date
      end

      sig { params(_: Date).returns(Date) }
      def effective_date=(_)
      end

      sig { returns(Symbol) }
      def expected_settlement_schedule
      end

      sig { params(_: Symbol).returns(Symbol) }
      def expected_settlement_schedule=(_)
      end

      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::InternationalAddenda)) }
      def international_addenda
      end

      sig do
        params(_: T.nilable(Increase::Models::InboundACHTransfer::InternationalAddenda))
          .returns(T.nilable(Increase::Models::InboundACHTransfer::InternationalAddenda))
      end
      def international_addenda=(_)
      end

      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::NotificationOfChange)) }
      def notification_of_change
      end

      sig do
        params(_: T.nilable(Increase::Models::InboundACHTransfer::NotificationOfChange))
          .returns(T.nilable(Increase::Models::InboundACHTransfer::NotificationOfChange))
      end
      def notification_of_change=(_)
      end

      sig { returns(T.nilable(String)) }
      def originator_company_descriptive_date
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_company_descriptive_date=(_)
      end

      sig { returns(T.nilable(String)) }
      def originator_company_discretionary_data
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_company_discretionary_data=(_)
      end

      sig { returns(String) }
      def originator_company_entry_description
      end

      sig { params(_: String).returns(String) }
      def originator_company_entry_description=(_)
      end

      sig { returns(String) }
      def originator_company_id
      end

      sig { params(_: String).returns(String) }
      def originator_company_id=(_)
      end

      sig { returns(String) }
      def originator_company_name
      end

      sig { params(_: String).returns(String) }
      def originator_company_name=(_)
      end

      sig { returns(String) }
      def originator_routing_number
      end

      sig { params(_: String).returns(String) }
      def originator_routing_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def receiver_id_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def receiver_id_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def receiver_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def receiver_name=(_)
      end

      sig { returns(Symbol) }
      def standard_entry_class_code
      end

      sig { params(_: Symbol).returns(Symbol) }
      def standard_entry_class_code=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(String) }
      def trace_number
      end

      sig { params(_: String).returns(String) }
      def trace_number=(_)
      end

      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::TransferReturn)) }
      def transfer_return
      end

      sig do
        params(_: T.nilable(Increase::Models::InboundACHTransfer::TransferReturn))
          .returns(T.nilable(Increase::Models::InboundACHTransfer::TransferReturn))
      end
      def transfer_return=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

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
        )
          .void
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
        override
          .returns(
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
        def accepted_at
        end

        sig { params(_: Time).returns(Time) }
        def accepted_at=(_)
        end

        sig { returns(String) }
        def transaction_id
        end

        sig { params(_: String).returns(String) }
        def transaction_id=(_)
        end

        sig { params(accepted_at: Time, transaction_id: String).void }
        def initialize(accepted_at:, transaction_id:)
        end

        sig { override.returns({accepted_at: Time, transaction_id: String}) }
        def to_hash
        end
      end

      class Addenda < Increase::BaseModel
        sig { returns(Symbol) }
        def category
        end

        sig { params(_: Symbol).returns(Symbol) }
        def category=(_)
        end

        sig { returns(T.nilable(Increase::Models::InboundACHTransfer::Addenda::Freeform)) }
        def freeform
        end

        sig do
          params(_: T.nilable(Increase::Models::InboundACHTransfer::Addenda::Freeform))
            .returns(T.nilable(Increase::Models::InboundACHTransfer::Addenda::Freeform))
        end
        def freeform=(_)
        end

        sig do
          params(category: Symbol, freeform: T.nilable(Increase::Models::InboundACHTransfer::Addenda::Freeform)).void
        end
        def initialize(category:, freeform:)
        end

        sig do
          override
            .returns({category: Symbol, freeform: T.nilable(Increase::Models::InboundACHTransfer::Addenda::Freeform)})
        end
        def to_hash
        end

        class Category < Increase::Enum
          abstract!

          # Unstructured addendum.
          FREEFORM = :freeform

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class Freeform < Increase::BaseModel
          sig { returns(T::Array[Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry]) }
          def entries
          end

          sig do
            params(_: T::Array[Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry])
              .returns(T::Array[Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry])
          end
          def entries=(_)
          end

          sig { params(entries: T::Array[Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry]).void }
          def initialize(entries:)
          end

          sig { override.returns({entries: T::Array[Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry]}) }
          def to_hash
          end

          class Entry < Increase::BaseModel
            sig { returns(String) }
            def payment_related_information
            end

            sig { params(_: String).returns(String) }
            def payment_related_information=(_)
            end

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
        def declined_at
        end

        sig { params(_: Time).returns(Time) }
        def declined_at=(_)
        end

        sig { returns(String) }
        def declined_transaction_id
        end

        sig { params(_: String).returns(String) }
        def declined_transaction_id=(_)
        end

        sig { returns(Symbol) }
        def reason
        end

        sig { params(_: Symbol).returns(Symbol) }
        def reason=(_)
        end

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

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      class Direction < Increase::Enum
        abstract!

        # Credit
        CREDIT = :credit

        # Debit
        DEBIT = :debit

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class ExpectedSettlementSchedule < Increase::Enum
        abstract!

        # The transfer is expected to settle same-day.
        SAME_DAY = :same_day

        # The transfer is expected to settle on a future date.
        FUTURE_DATED = :future_dated

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class InternationalAddenda < Increase::BaseModel
        sig { returns(String) }
        def destination_country_code
        end

        sig { params(_: String).returns(String) }
        def destination_country_code=(_)
        end

        sig { returns(String) }
        def destination_currency_code
        end

        sig { params(_: String).returns(String) }
        def destination_currency_code=(_)
        end

        sig { returns(Symbol) }
        def foreign_exchange_indicator
        end

        sig { params(_: Symbol).returns(Symbol) }
        def foreign_exchange_indicator=(_)
        end

        sig { returns(T.nilable(String)) }
        def foreign_exchange_reference
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def foreign_exchange_reference=(_)
        end

        sig { returns(Symbol) }
        def foreign_exchange_reference_indicator
        end

        sig { params(_: Symbol).returns(Symbol) }
        def foreign_exchange_reference_indicator=(_)
        end

        sig { returns(Integer) }
        def foreign_payment_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def foreign_payment_amount=(_)
        end

        sig { returns(T.nilable(String)) }
        def foreign_trace_number
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def foreign_trace_number=(_)
        end

        sig { returns(Symbol) }
        def international_transaction_type_code
        end

        sig { params(_: Symbol).returns(Symbol) }
        def international_transaction_type_code=(_)
        end

        sig { returns(String) }
        def originating_currency_code
        end

        sig { params(_: String).returns(String) }
        def originating_currency_code=(_)
        end

        sig { returns(String) }
        def originating_depository_financial_institution_branch_country
        end

        sig { params(_: String).returns(String) }
        def originating_depository_financial_institution_branch_country=(_)
        end

        sig { returns(String) }
        def originating_depository_financial_institution_id
        end

        sig { params(_: String).returns(String) }
        def originating_depository_financial_institution_id=(_)
        end

        sig { returns(Symbol) }
        def originating_depository_financial_institution_id_qualifier
        end

        sig { params(_: Symbol).returns(Symbol) }
        def originating_depository_financial_institution_id_qualifier=(_)
        end

        sig { returns(String) }
        def originating_depository_financial_institution_name
        end

        sig { params(_: String).returns(String) }
        def originating_depository_financial_institution_name=(_)
        end

        sig { returns(String) }
        def originator_city
        end

        sig { params(_: String).returns(String) }
        def originator_city=(_)
        end

        sig { returns(String) }
        def originator_country
        end

        sig { params(_: String).returns(String) }
        def originator_country=(_)
        end

        sig { returns(String) }
        def originator_identification
        end

        sig { params(_: String).returns(String) }
        def originator_identification=(_)
        end

        sig { returns(String) }
        def originator_name
        end

        sig { params(_: String).returns(String) }
        def originator_name=(_)
        end

        sig { returns(T.nilable(String)) }
        def originator_postal_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def originator_postal_code=(_)
        end

        sig { returns(T.nilable(String)) }
        def originator_state_or_province
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def originator_state_or_province=(_)
        end

        sig { returns(String) }
        def originator_street_address
        end

        sig { params(_: String).returns(String) }
        def originator_street_address=(_)
        end

        sig { returns(T.nilable(String)) }
        def payment_related_information
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def payment_related_information=(_)
        end

        sig { returns(T.nilable(String)) }
        def payment_related_information2
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def payment_related_information2=(_)
        end

        sig { returns(String) }
        def receiver_city
        end

        sig { params(_: String).returns(String) }
        def receiver_city=(_)
        end

        sig { returns(String) }
        def receiver_country
        end

        sig { params(_: String).returns(String) }
        def receiver_country=(_)
        end

        sig { returns(T.nilable(String)) }
        def receiver_identification_number
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def receiver_identification_number=(_)
        end

        sig { returns(T.nilable(String)) }
        def receiver_postal_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def receiver_postal_code=(_)
        end

        sig { returns(T.nilable(String)) }
        def receiver_state_or_province
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def receiver_state_or_province=(_)
        end

        sig { returns(String) }
        def receiver_street_address
        end

        sig { params(_: String).returns(String) }
        def receiver_street_address=(_)
        end

        sig { returns(String) }
        def receiving_company_or_individual_name
        end

        sig { params(_: String).returns(String) }
        def receiving_company_or_individual_name=(_)
        end

        sig { returns(String) }
        def receiving_depository_financial_institution_country
        end

        sig { params(_: String).returns(String) }
        def receiving_depository_financial_institution_country=(_)
        end

        sig { returns(String) }
        def receiving_depository_financial_institution_id
        end

        sig { params(_: String).returns(String) }
        def receiving_depository_financial_institution_id=(_)
        end

        sig { returns(Symbol) }
        def receiving_depository_financial_institution_id_qualifier
        end

        sig { params(_: Symbol).returns(Symbol) }
        def receiving_depository_financial_institution_id_qualifier=(_)
        end

        sig { returns(String) }
        def receiving_depository_financial_institution_name
        end

        sig { params(_: String).returns(String) }
        def receiving_depository_financial_institution_name=(_)
        end

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
          )
            .void
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
          override
            .returns(
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

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
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

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
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

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
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

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
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

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      class NotificationOfChange < Increase::BaseModel
        sig { returns(T.nilable(String)) }
        def updated_account_number
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def updated_account_number=(_)
        end

        sig { returns(T.nilable(String)) }
        def updated_routing_number
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def updated_routing_number=(_)
        end

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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class TransferReturn < Increase::BaseModel
        sig { returns(Symbol) }
        def reason
        end

        sig { params(_: Symbol).returns(Symbol) }
        def reason=(_)
        end

        sig { returns(Time) }
        def returned_at
        end

        sig { params(_: Time).returns(Time) }
        def returned_at=(_)
        end

        sig { returns(String) }
        def transaction_id
        end

        sig { params(_: String).returns(String) }
        def transaction_id=(_)
        end

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

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      class Type < Increase::Enum
        abstract!

        INBOUND_ACH_TRANSFER = :inbound_ach_transfer

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
