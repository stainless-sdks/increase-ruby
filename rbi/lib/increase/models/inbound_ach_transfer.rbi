# typed: strong

module Increase
  module Models
    class InboundACHTransfer < Increase::BaseModel
      # The inbound ACH transfer's identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # If your transfer is accepted, this will contain details of the acceptance.
      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::Acceptance)) }
      def acceptance
      end

      sig do
        params(_: T.nilable(Increase::Models::InboundACHTransfer::Acceptance))
          .returns(T.nilable(Increase::Models::InboundACHTransfer::Acceptance))
      end
      def acceptance=(_)
      end

      # The Account to which the transfer belongs.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The identifier of the Account Number to which this transfer was sent.
      sig { returns(String) }
      def account_number_id
      end

      sig { params(_: String).returns(String) }
      def account_number_id=(_)
      end

      # Additional information sent from the originator.
      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::Addenda)) }
      def addenda
      end

      sig do
        params(_: T.nilable(Increase::Models::InboundACHTransfer::Addenda))
          .returns(T.nilable(Increase::Models::InboundACHTransfer::Addenda))
      end
      def addenda=(_)
      end

      # The transfer amount in USD cents.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # The time at which the transfer will be automatically resolved.
      sig { returns(Time) }
      def automatically_resolves_at
      end

      sig { params(_: Time).returns(Time) }
      def automatically_resolves_at=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the inbound ACH transfer was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # If your transfer is declined, this will contain details of the decline.
      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::Decline)) }
      def decline
      end

      sig do
        params(_: T.nilable(Increase::Models::InboundACHTransfer::Decline))
          .returns(T.nilable(Increase::Models::InboundACHTransfer::Decline))
      end
      def decline=(_)
      end

      # The direction of the transfer.
      sig { returns(Symbol) }
      def direction
      end

      sig { params(_: Symbol).returns(Symbol) }
      def direction=(_)
      end

      # The effective date of the transfer. This is sent by the sending bank and is a
      #   factor in determining funds availability.
      sig { returns(Date) }
      def effective_date
      end

      sig { params(_: Date).returns(Date) }
      def effective_date=(_)
      end

      # The settlement schedule the transfer is expected to follow.
      sig { returns(Symbol) }
      def expected_settlement_schedule
      end

      sig { params(_: Symbol).returns(Symbol) }
      def expected_settlement_schedule=(_)
      end

      # If the Inbound ACH Transfer has a Standard Entry Class Code of IAT, this will
      #   contain fields pertaining to the International ACH Transaction.
      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::InternationalAddenda)) }
      def international_addenda
      end

      sig do
        params(_: T.nilable(Increase::Models::InboundACHTransfer::InternationalAddenda))
          .returns(T.nilable(Increase::Models::InboundACHTransfer::InternationalAddenda))
      end
      def international_addenda=(_)
      end

      # If you initiate a notification of change in response to the transfer, this will
      #   contain its details.
      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::NotificationOfChange)) }
      def notification_of_change
      end

      sig do
        params(_: T.nilable(Increase::Models::InboundACHTransfer::NotificationOfChange))
          .returns(T.nilable(Increase::Models::InboundACHTransfer::NotificationOfChange))
      end
      def notification_of_change=(_)
      end

      # The descriptive date of the transfer.
      sig { returns(T.nilable(String)) }
      def originator_company_descriptive_date
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_company_descriptive_date=(_)
      end

      # The additional information included with the transfer.
      sig { returns(T.nilable(String)) }
      def originator_company_discretionary_data
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def originator_company_discretionary_data=(_)
      end

      # The description of the transfer.
      sig { returns(String) }
      def originator_company_entry_description
      end

      sig { params(_: String).returns(String) }
      def originator_company_entry_description=(_)
      end

      # The id of the company that initiated the transfer.
      sig { returns(String) }
      def originator_company_id
      end

      sig { params(_: String).returns(String) }
      def originator_company_id=(_)
      end

      # The name of the company that initiated the transfer.
      sig { returns(String) }
      def originator_company_name
      end

      sig { params(_: String).returns(String) }
      def originator_company_name=(_)
      end

      # The American Banking Association (ABA) routing number of the bank originating
      #   the transfer.
      sig { returns(String) }
      def originator_routing_number
      end

      sig { params(_: String).returns(String) }
      def originator_routing_number=(_)
      end

      # The id of the receiver of the transfer.
      sig { returns(T.nilable(String)) }
      def receiver_id_number
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def receiver_id_number=(_)
      end

      # The name of the receiver of the transfer.
      sig { returns(T.nilable(String)) }
      def receiver_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def receiver_name=(_)
      end

      # The Standard Entry Class (SEC) code of the transfer.
      sig { returns(Symbol) }
      def standard_entry_class_code
      end

      sig { params(_: Symbol).returns(Symbol) }
      def standard_entry_class_code=(_)
      end

      # The status of the transfer.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # A 15 digit number set by the sending bank and transmitted to the receiving bank.
      #   Along with the amount, date, and originating routing number, this can be used to
      #   identify the ACH transfer. ACH trace numbers are not unique, but are
      #   [used to correlate returns](https://increase.com/documentation/ach-returns#ach-returns).
      sig { returns(String) }
      def trace_number
      end

      sig { params(_: String).returns(String) }
      def trace_number=(_)
      end

      # If your transfer is returned, this will contain details of the return.
      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::TransferReturn)) }
      def transfer_return
      end

      sig do
        params(_: T.nilable(Increase::Models::InboundACHTransfer::TransferReturn))
          .returns(T.nilable(Increase::Models::InboundACHTransfer::TransferReturn))
      end
      def transfer_return=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `inbound_ach_transfer`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # An Inbound ACH Transfer is an ACH transfer initiated outside of Increase to your
      #   account.
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
          .returns(T.attached_class)
      end
      def self.new(
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
        # The time at which the transfer was accepted.
        sig { returns(Time) }
        def accepted_at
        end

        sig { params(_: Time).returns(Time) }
        def accepted_at=(_)
        end

        # The id of the transaction for the accepted transfer.
        sig { returns(String) }
        def transaction_id
        end

        sig { params(_: String).returns(String) }
        def transaction_id=(_)
        end

        # If your transfer is accepted, this will contain details of the acceptance.
        sig { params(accepted_at: Time, transaction_id: String).returns(T.attached_class) }
        def self.new(accepted_at:, transaction_id:)
        end

        sig { override.returns({accepted_at: Time, transaction_id: String}) }
        def to_hash
        end
      end

      class Addenda < Increase::BaseModel
        # The type of addendum.
        sig { returns(Symbol) }
        def category
        end

        sig { params(_: Symbol).returns(Symbol) }
        def category=(_)
        end

        # Unstructured `payment_related_information` passed through by the originator.
        sig { returns(T.nilable(Increase::Models::InboundACHTransfer::Addenda::Freeform)) }
        def freeform
        end

        sig do
          params(_: T.nilable(Increase::Models::InboundACHTransfer::Addenda::Freeform))
            .returns(T.nilable(Increase::Models::InboundACHTransfer::Addenda::Freeform))
        end
        def freeform=(_)
        end

        # Additional information sent from the originator.
        sig do
          params(category: Symbol, freeform: T.nilable(Increase::Models::InboundACHTransfer::Addenda::Freeform))
            .returns(T.attached_class)
        end
        def self.new(category:, freeform:)
        end

        sig do
          override
            .returns({category: Symbol, freeform: T.nilable(Increase::Models::InboundACHTransfer::Addenda::Freeform)})
        end
        def to_hash
        end

        # The type of addendum.
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
          # Each entry represents an addendum received from the originator.
          sig { returns(T::Array[Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry]) }
          def entries
          end

          sig do
            params(_: T::Array[Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry])
              .returns(T::Array[Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry])
          end
          def entries=(_)
          end

          # Unstructured `payment_related_information` passed through by the originator.
          sig do
            params(entries: T::Array[Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry])
              .returns(T.attached_class)
          end
          def self.new(entries:)
          end

          sig { override.returns({entries: T::Array[Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry]}) }
          def to_hash
          end

          class Entry < Increase::BaseModel
            # The payment related information passed in the addendum.
            sig { returns(String) }
            def payment_related_information
            end

            sig { params(_: String).returns(String) }
            def payment_related_information=(_)
            end

            sig { params(payment_related_information: String).returns(T.attached_class) }
            def self.new(payment_related_information:)
            end

            sig { override.returns({payment_related_information: String}) }
            def to_hash
            end
          end
        end
      end

      class Decline < Increase::BaseModel
        # The time at which the transfer was declined.
        sig { returns(Time) }
        def declined_at
        end

        sig { params(_: Time).returns(Time) }
        def declined_at=(_)
        end

        # The id of the transaction for the declined transfer.
        sig { returns(String) }
        def declined_transaction_id
        end

        sig { params(_: String).returns(String) }
        def declined_transaction_id=(_)
        end

        # The reason for the transfer decline.
        sig { returns(Symbol) }
        def reason
        end

        sig { params(_: Symbol).returns(Symbol) }
        def reason=(_)
        end

        # If your transfer is declined, this will contain details of the decline.
        sig do
          params(declined_at: Time, declined_transaction_id: String, reason: Symbol).returns(T.attached_class)
        end
        def self.new(declined_at:, declined_transaction_id:, reason:)
        end

        sig { override.returns({declined_at: Time, declined_transaction_id: String, reason: Symbol}) }
        def to_hash
        end

        # The reason for the transfer decline.
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

      # The direction of the transfer.
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

      # The settlement schedule the transfer is expected to follow.
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
        # The [ISO 3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2), Alpha-2
        #   country code of the destination country.
        sig { returns(String) }
        def destination_country_code
        end

        sig { params(_: String).returns(String) }
        def destination_country_code=(_)
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) currency code for the
        #   destination bank account.
        sig { returns(String) }
        def destination_currency_code
        end

        sig { params(_: String).returns(String) }
        def destination_currency_code=(_)
        end

        # A description of how the foreign exchange rate was calculated.
        sig { returns(Symbol) }
        def foreign_exchange_indicator
        end

        sig { params(_: Symbol).returns(Symbol) }
        def foreign_exchange_indicator=(_)
        end

        # Depending on the `foreign_exchange_reference_indicator`, an exchange rate or a
        #   reference to a well-known rate.
        sig { returns(T.nilable(String)) }
        def foreign_exchange_reference
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def foreign_exchange_reference=(_)
        end

        # An instruction of how to interpret the `foreign_exchange_reference` field for
        #   this Transaction.
        sig { returns(Symbol) }
        def foreign_exchange_reference_indicator
        end

        sig { params(_: Symbol).returns(Symbol) }
        def foreign_exchange_reference_indicator=(_)
        end

        # The amount in the minor unit of the foreign payment currency. For dollars, for
        #   example, this is cents.
        sig { returns(Integer) }
        def foreign_payment_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def foreign_payment_amount=(_)
        end

        # A reference number in the foreign banking infrastructure.
        sig { returns(T.nilable(String)) }
        def foreign_trace_number
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def foreign_trace_number=(_)
        end

        # The type of transfer. Set by the originator.
        sig { returns(Symbol) }
        def international_transaction_type_code
        end

        sig { params(_: Symbol).returns(Symbol) }
        def international_transaction_type_code=(_)
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) currency code for the
        #   originating bank account.
        sig { returns(String) }
        def originating_currency_code
        end

        sig { params(_: String).returns(String) }
        def originating_currency_code=(_)
        end

        # The [ISO 3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2), Alpha-2
        #   country code of the originating branch country.
        sig { returns(String) }
        def originating_depository_financial_institution_branch_country
        end

        sig { params(_: String).returns(String) }
        def originating_depository_financial_institution_branch_country=(_)
        end

        # An identifier for the originating bank. One of an International Bank Account
        #   Number (IBAN) bank identifier, SWIFT Bank Identification Code (BIC), or a
        #   domestic identifier like a US Routing Number.
        sig { returns(String) }
        def originating_depository_financial_institution_id
        end

        sig { params(_: String).returns(String) }
        def originating_depository_financial_institution_id=(_)
        end

        # An instruction of how to interpret the
        #   `originating_depository_financial_institution_id` field for this Transaction.
        sig { returns(Symbol) }
        def originating_depository_financial_institution_id_qualifier
        end

        sig { params(_: Symbol).returns(Symbol) }
        def originating_depository_financial_institution_id_qualifier=(_)
        end

        # The name of the originating bank. Sometimes this will refer to an American bank
        #   and obscure the correspondent foreign bank.
        sig { returns(String) }
        def originating_depository_financial_institution_name
        end

        sig { params(_: String).returns(String) }
        def originating_depository_financial_institution_name=(_)
        end

        # A portion of the originator address. This may be incomplete.
        sig { returns(String) }
        def originator_city
        end

        sig { params(_: String).returns(String) }
        def originator_city=(_)
        end

        # A portion of the originator address. The
        #   [ISO 3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2), Alpha-2 country
        #   code of the originator country.
        sig { returns(String) }
        def originator_country
        end

        sig { params(_: String).returns(String) }
        def originator_country=(_)
        end

        # An identifier for the originating company. This is generally stable across
        #   multiple ACH transfers.
        sig { returns(String) }
        def originator_identification
        end

        sig { params(_: String).returns(String) }
        def originator_identification=(_)
        end

        # Either the name of the originator or an intermediary money transmitter.
        sig { returns(String) }
        def originator_name
        end

        sig { params(_: String).returns(String) }
        def originator_name=(_)
        end

        # A portion of the originator address. This may be incomplete.
        sig { returns(T.nilable(String)) }
        def originator_postal_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def originator_postal_code=(_)
        end

        # A portion of the originator address. This may be incomplete.
        sig { returns(T.nilable(String)) }
        def originator_state_or_province
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def originator_state_or_province=(_)
        end

        # A portion of the originator address. This may be incomplete.
        sig { returns(String) }
        def originator_street_address
        end

        sig { params(_: String).returns(String) }
        def originator_street_address=(_)
        end

        # A description field set by the originator.
        sig { returns(T.nilable(String)) }
        def payment_related_information
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def payment_related_information=(_)
        end

        # A description field set by the originator.
        sig { returns(T.nilable(String)) }
        def payment_related_information2
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def payment_related_information2=(_)
        end

        # A portion of the receiver address. This may be incomplete.
        sig { returns(String) }
        def receiver_city
        end

        sig { params(_: String).returns(String) }
        def receiver_city=(_)
        end

        # A portion of the receiver address. The
        #   [ISO 3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2), Alpha-2 country
        #   code of the receiver country.
        sig { returns(String) }
        def receiver_country
        end

        sig { params(_: String).returns(String) }
        def receiver_country=(_)
        end

        # An identification number the originator uses for the receiver.
        sig { returns(T.nilable(String)) }
        def receiver_identification_number
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def receiver_identification_number=(_)
        end

        # A portion of the receiver address. This may be incomplete.
        sig { returns(T.nilable(String)) }
        def receiver_postal_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def receiver_postal_code=(_)
        end

        # A portion of the receiver address. This may be incomplete.
        sig { returns(T.nilable(String)) }
        def receiver_state_or_province
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def receiver_state_or_province=(_)
        end

        # A portion of the receiver address. This may be incomplete.
        sig { returns(String) }
        def receiver_street_address
        end

        sig { params(_: String).returns(String) }
        def receiver_street_address=(_)
        end

        # The name of the receiver of the transfer. This is not verified by Increase.
        sig { returns(String) }
        def receiving_company_or_individual_name
        end

        sig { params(_: String).returns(String) }
        def receiving_company_or_individual_name=(_)
        end

        # The [ISO 3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2), Alpha-2
        #   country code of the receiving bank country.
        sig { returns(String) }
        def receiving_depository_financial_institution_country
        end

        sig { params(_: String).returns(String) }
        def receiving_depository_financial_institution_country=(_)
        end

        # An identifier for the receiving bank. One of an International Bank Account
        #   Number (IBAN) bank identifier, SWIFT Bank Identification Code (BIC), or a
        #   domestic identifier like a US Routing Number.
        sig { returns(String) }
        def receiving_depository_financial_institution_id
        end

        sig { params(_: String).returns(String) }
        def receiving_depository_financial_institution_id=(_)
        end

        # An instruction of how to interpret the
        #   `receiving_depository_financial_institution_id` field for this Transaction.
        sig { returns(Symbol) }
        def receiving_depository_financial_institution_id_qualifier
        end

        sig { params(_: Symbol).returns(Symbol) }
        def receiving_depository_financial_institution_id_qualifier=(_)
        end

        # The name of the receiving bank, as set by the sending financial institution.
        sig { returns(String) }
        def receiving_depository_financial_institution_name
        end

        sig { params(_: String).returns(String) }
        def receiving_depository_financial_institution_name=(_)
        end

        # If the Inbound ACH Transfer has a Standard Entry Class Code of IAT, this will
        #   contain fields pertaining to the International ACH Transaction.
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
            .returns(T.attached_class)
        end
        def self.new(
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

        # A description of how the foreign exchange rate was calculated.
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

        # An instruction of how to interpret the `foreign_exchange_reference` field for
        #   this Transaction.
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

        # The type of transfer. Set by the originator.
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

        # An instruction of how to interpret the
        #   `originating_depository_financial_institution_id` field for this Transaction.
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

        # An instruction of how to interpret the
        #   `receiving_depository_financial_institution_id` field for this Transaction.
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
        # The new account number provided in the notification of change.
        sig { returns(T.nilable(String)) }
        def updated_account_number
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def updated_account_number=(_)
        end

        # The new account number provided in the notification of change.
        sig { returns(T.nilable(String)) }
        def updated_routing_number
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def updated_routing_number=(_)
        end

        # If you initiate a notification of change in response to the transfer, this will
        #   contain its details.
        sig do
          params(updated_account_number: T.nilable(String), updated_routing_number: T.nilable(String))
            .returns(T.attached_class)
        end
        def self.new(updated_account_number:, updated_routing_number:)
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

      # The Standard Entry Class (SEC) code of the transfer.
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

      # The status of the transfer.
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
        # The reason for the transfer return.
        sig { returns(Symbol) }
        def reason
        end

        sig { params(_: Symbol).returns(Symbol) }
        def reason=(_)
        end

        # The time at which the transfer was returned.
        sig { returns(Time) }
        def returned_at
        end

        sig { params(_: Time).returns(Time) }
        def returned_at=(_)
        end

        # The id of the transaction for the returned transfer.
        sig { returns(String) }
        def transaction_id
        end

        sig { params(_: String).returns(String) }
        def transaction_id=(_)
        end

        # If your transfer is returned, this will contain details of the return.
        sig { params(reason: Symbol, returned_at: Time, transaction_id: String).returns(T.attached_class) }
        def self.new(reason:, returned_at:, transaction_id:)
        end

        sig { override.returns({reason: Symbol, returned_at: Time, transaction_id: String}) }
        def to_hash
        end

        # The reason for the transfer return.
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

      # A constant representing the object's type. For this resource it will always be
      #   `inbound_ach_transfer`.
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
