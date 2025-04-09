# typed: strong

module Increase
  module Models
    class InboundACHTransfer < Increase::Internal::Type::BaseModel
      # #/components/schemas/inbound_ach_transfer/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/inbound_ach_transfer/properties/acceptance
      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::Acceptance)) }
      attr_reader :acceptance

      sig do
        params(
          acceptance: T.nilable(T.any(Increase::Models::InboundACHTransfer::Acceptance, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :acceptance

      # #/components/schemas/inbound_ach_transfer/properties/account_id
      sig { returns(String) }
      attr_accessor :account_id

      # #/components/schemas/inbound_ach_transfer/properties/account_number_id
      sig { returns(String) }
      attr_accessor :account_number_id

      # #/components/schemas/inbound_ach_transfer/properties/addenda
      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::Addenda)) }
      attr_reader :addenda

      sig do
        params(
          addenda: T.nilable(T.any(Increase::Models::InboundACHTransfer::Addenda, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :addenda

      # #/components/schemas/inbound_ach_transfer/properties/amount
      sig { returns(Integer) }
      attr_accessor :amount

      # #/components/schemas/inbound_ach_transfer/properties/automatically_resolves_at
      sig { returns(Time) }
      attr_accessor :automatically_resolves_at

      # #/components/schemas/inbound_ach_transfer/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/inbound_ach_transfer/properties/decline
      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::Decline)) }
      attr_reader :decline

      sig do
        params(
          decline: T.nilable(T.any(Increase::Models::InboundACHTransfer::Decline, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :decline

      # #/components/schemas/inbound_ach_transfer/properties/direction
      sig { returns(Increase::Models::InboundACHTransfer::Direction::TaggedSymbol) }
      attr_accessor :direction

      # #/components/schemas/inbound_ach_transfer/properties/effective_date
      sig { returns(Date) }
      attr_accessor :effective_date

      # #/components/schemas/inbound_ach_transfer/properties/expected_settlement_schedule
      sig { returns(Increase::Models::InboundACHTransfer::ExpectedSettlementSchedule::TaggedSymbol) }
      attr_accessor :expected_settlement_schedule

      # #/components/schemas/inbound_ach_transfer/properties/international_addenda
      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::InternationalAddenda)) }
      attr_reader :international_addenda

      sig do
        params(
          international_addenda: T.nilable(T.any(Increase::Models::InboundACHTransfer::InternationalAddenda, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :international_addenda

      # #/components/schemas/inbound_ach_transfer/properties/notification_of_change
      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::NotificationOfChange)) }
      attr_reader :notification_of_change

      sig do
        params(
          notification_of_change: T.nilable(T.any(Increase::Models::InboundACHTransfer::NotificationOfChange, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :notification_of_change

      # #/components/schemas/inbound_ach_transfer/properties/originator_company_descriptive_date
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_company_descriptive_date

      # #/components/schemas/inbound_ach_transfer/properties/originator_company_discretionary_data
      sig { returns(T.nilable(String)) }
      attr_accessor :originator_company_discretionary_data

      # #/components/schemas/inbound_ach_transfer/properties/originator_company_entry_description
      sig { returns(String) }
      attr_accessor :originator_company_entry_description

      # #/components/schemas/inbound_ach_transfer/properties/originator_company_id
      sig { returns(String) }
      attr_accessor :originator_company_id

      # #/components/schemas/inbound_ach_transfer/properties/originator_company_name
      sig { returns(String) }
      attr_accessor :originator_company_name

      # #/components/schemas/inbound_ach_transfer/properties/originator_routing_number
      sig { returns(String) }
      attr_accessor :originator_routing_number

      # #/components/schemas/inbound_ach_transfer/properties/receiver_id_number
      sig { returns(T.nilable(String)) }
      attr_accessor :receiver_id_number

      # #/components/schemas/inbound_ach_transfer/properties/receiver_name
      sig { returns(T.nilable(String)) }
      attr_accessor :receiver_name

      # #/components/schemas/inbound_ach_transfer/properties/standard_entry_class_code
      sig { returns(Increase::Models::InboundACHTransfer::StandardEntryClassCode::TaggedSymbol) }
      attr_accessor :standard_entry_class_code

      # #/components/schemas/inbound_ach_transfer/properties/status
      sig { returns(Increase::Models::InboundACHTransfer::Status::TaggedSymbol) }
      attr_accessor :status

      # #/components/schemas/inbound_ach_transfer/properties/trace_number
      sig { returns(String) }
      attr_accessor :trace_number

      # #/components/schemas/inbound_ach_transfer/properties/transfer_return
      sig { returns(T.nilable(Increase::Models::InboundACHTransfer::TransferReturn)) }
      attr_reader :transfer_return

      sig do
        params(
          transfer_return: T.nilable(T.any(Increase::Models::InboundACHTransfer::TransferReturn, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :transfer_return

      # #/components/schemas/inbound_ach_transfer/properties/type
      sig { returns(Increase::Models::InboundACHTransfer::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/inbound_ach_transfer
      sig do
        params(
          id: String,
          acceptance: T.nilable(T.any(Increase::Models::InboundACHTransfer::Acceptance, Increase::Internal::AnyHash)),
          account_id: String,
          account_number_id: String,
          addenda: T.nilable(T.any(Increase::Models::InboundACHTransfer::Addenda, Increase::Internal::AnyHash)),
          amount: Integer,
          automatically_resolves_at: Time,
          created_at: Time,
          decline: T.nilable(T.any(Increase::Models::InboundACHTransfer::Decline, Increase::Internal::AnyHash)),
          direction: Increase::Models::InboundACHTransfer::Direction::OrSymbol,
          effective_date: Date,
          expected_settlement_schedule: Increase::Models::InboundACHTransfer::ExpectedSettlementSchedule::OrSymbol,
          international_addenda: T.nilable(T.any(Increase::Models::InboundACHTransfer::InternationalAddenda, Increase::Internal::AnyHash)),
          notification_of_change: T.nilable(T.any(Increase::Models::InboundACHTransfer::NotificationOfChange, Increase::Internal::AnyHash)),
          originator_company_descriptive_date: T.nilable(String),
          originator_company_discretionary_data: T.nilable(String),
          originator_company_entry_description: String,
          originator_company_id: String,
          originator_company_name: String,
          originator_routing_number: String,
          receiver_id_number: T.nilable(String),
          receiver_name: T.nilable(String),
          standard_entry_class_code: Increase::Models::InboundACHTransfer::StandardEntryClassCode::OrSymbol,
          status: Increase::Models::InboundACHTransfer::Status::OrSymbol,
          trace_number: String,
          transfer_return: T.nilable(T.any(Increase::Models::InboundACHTransfer::TransferReturn, Increase::Internal::AnyHash)),
          type: Increase::Models::InboundACHTransfer::Type::OrSymbol
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
      ); end
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
              direction: Increase::Models::InboundACHTransfer::Direction::TaggedSymbol,
              effective_date: Date,
              expected_settlement_schedule: Increase::Models::InboundACHTransfer::ExpectedSettlementSchedule::TaggedSymbol,
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
              standard_entry_class_code: Increase::Models::InboundACHTransfer::StandardEntryClassCode::TaggedSymbol,
              status: Increase::Models::InboundACHTransfer::Status::TaggedSymbol,
              trace_number: String,
              transfer_return: T.nilable(Increase::Models::InboundACHTransfer::TransferReturn),
              type: Increase::Models::InboundACHTransfer::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      class Acceptance < Increase::Internal::Type::BaseModel
        # #/components/schemas/inbound_ach_transfer/properties/acceptance/anyOf/0/properties/accepted_at
        sig { returns(Time) }
        attr_accessor :accepted_at

        # #/components/schemas/inbound_ach_transfer/properties/acceptance/anyOf/0/properties/transaction_id
        sig { returns(String) }
        attr_accessor :transaction_id

        # #/components/schemas/inbound_ach_transfer/properties/acceptance
        sig { params(accepted_at: Time, transaction_id: String).returns(T.attached_class) }
        def self.new(accepted_at:, transaction_id:); end

        sig { override.returns({accepted_at: Time, transaction_id: String}) }
        def to_hash; end
      end

      class Addenda < Increase::Internal::Type::BaseModel
        # #/components/schemas/inbound_ach_transfer/properties/addenda/anyOf/0/properties/category
        sig { returns(Increase::Models::InboundACHTransfer::Addenda::Category::TaggedSymbol) }
        attr_accessor :category

        # #/components/schemas/inbound_ach_transfer/properties/addenda/anyOf/0/properties/freeform
        sig { returns(T.nilable(Increase::Models::InboundACHTransfer::Addenda::Freeform)) }
        attr_reader :freeform

        sig do
          params(
            freeform: T.nilable(T.any(Increase::Models::InboundACHTransfer::Addenda::Freeform, Increase::Internal::AnyHash))
          )
            .void
        end
        attr_writer :freeform

        # #/components/schemas/inbound_ach_transfer/properties/addenda
        sig do
          params(
            category: Increase::Models::InboundACHTransfer::Addenda::Category::OrSymbol,
            freeform: T.nilable(T.any(Increase::Models::InboundACHTransfer::Addenda::Freeform, Increase::Internal::AnyHash))
          )
            .returns(T.attached_class)
        end
        def self.new(category:, freeform:); end

        sig do
          override
            .returns(
              {
                category: Increase::Models::InboundACHTransfer::Addenda::Category::TaggedSymbol,
                freeform: T.nilable(Increase::Models::InboundACHTransfer::Addenda::Freeform)
              }
            )
        end
        def to_hash; end

        # #/components/schemas/inbound_ach_transfer/properties/addenda/anyOf/0/properties/category
        module Category
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundACHTransfer::Addenda::Category) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::InboundACHTransfer::Addenda::Category::TaggedSymbol) }

          # Unstructured addendum.
          FREEFORM = T.let(:freeform, Increase::Models::InboundACHTransfer::Addenda::Category::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::InboundACHTransfer::Addenda::Category::TaggedSymbol]) }
          def self.values; end
        end

        class Freeform < Increase::Internal::Type::BaseModel
          # #/components/schemas/inbound_ach_transfer/properties/addenda/anyOf/0/properties/freeform/anyOf/0/properties/entries
          sig { returns(T::Array[Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry]) }
          attr_accessor :entries

          # #/components/schemas/inbound_ach_transfer/properties/addenda/anyOf/0/properties/freeform
          sig do
            params(
              entries: T::Array[T.any(Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry, Increase::Internal::AnyHash)]
            )
              .returns(T.attached_class)
          end
          def self.new(entries:); end

          sig { override.returns({entries: T::Array[Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry]}) }
          def to_hash; end

          class Entry < Increase::Internal::Type::BaseModel
            # #/components/schemas/inbound_ach_transfer/properties/addenda/anyOf/0/properties/freeform/anyOf/0/properties/entries/items/properties/payment_related_information
            sig { returns(String) }
            attr_accessor :payment_related_information

            # #/components/schemas/inbound_ach_transfer/properties/addenda/anyOf/0/properties/freeform/anyOf/0/properties/entries/items
            sig { params(payment_related_information: String).returns(T.attached_class) }
            def self.new(payment_related_information:); end

            sig { override.returns({payment_related_information: String}) }
            def to_hash; end
          end
        end
      end

      class Decline < Increase::Internal::Type::BaseModel
        # #/components/schemas/inbound_ach_transfer/properties/decline/anyOf/0/properties/declined_at
        sig { returns(Time) }
        attr_accessor :declined_at

        # #/components/schemas/inbound_ach_transfer/properties/decline/anyOf/0/properties/declined_transaction_id
        sig { returns(String) }
        attr_accessor :declined_transaction_id

        # #/components/schemas/inbound_ach_transfer/properties/decline/anyOf/0/properties/reason
        sig { returns(Increase::Models::InboundACHTransfer::Decline::Reason::TaggedSymbol) }
        attr_accessor :reason

        # #/components/schemas/inbound_ach_transfer/properties/decline
        sig do
          params(
            declined_at: Time,
            declined_transaction_id: String,
            reason: Increase::Models::InboundACHTransfer::Decline::Reason::OrSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(declined_at:, declined_transaction_id:, reason:); end

        sig do
          override
            .returns(
              {
                declined_at: Time,
                declined_transaction_id: String,
                reason: Increase::Models::InboundACHTransfer::Decline::Reason::TaggedSymbol
              }
            )
        end
        def to_hash; end

        # #/components/schemas/inbound_ach_transfer/properties/decline/anyOf/0/properties/reason
        module Reason
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundACHTransfer::Decline::Reason) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::InboundACHTransfer::Decline::Reason::TaggedSymbol) }

          # The account number is canceled.
          ACH_ROUTE_CANCELED =
            T.let(:ach_route_canceled, Increase::Models::InboundACHTransfer::Decline::Reason::TaggedSymbol)

          # The account number is disabled.
          ACH_ROUTE_DISABLED =
            T.let(:ach_route_disabled, Increase::Models::InboundACHTransfer::Decline::Reason::TaggedSymbol)

          # The transaction would cause an Increase limit to be exceeded.
          BREACHES_LIMIT =
            T.let(:breaches_limit, Increase::Models::InboundACHTransfer::Decline::Reason::TaggedSymbol)

          # The account's entity is not active.
          ENTITY_NOT_ACTIVE =
            T.let(:entity_not_active, Increase::Models::InboundACHTransfer::Decline::Reason::TaggedSymbol)

          # Your account is inactive.
          GROUP_LOCKED = T.let(:group_locked, Increase::Models::InboundACHTransfer::Decline::Reason::TaggedSymbol)

          # The transaction is not allowed per Increase's terms.
          TRANSACTION_NOT_ALLOWED =
            T.let(:transaction_not_allowed, Increase::Models::InboundACHTransfer::Decline::Reason::TaggedSymbol)

          # Your integration declined this transfer via the API.
          USER_INITIATED =
            T.let(:user_initiated, Increase::Models::InboundACHTransfer::Decline::Reason::TaggedSymbol)

          # Your account contains insufficient funds.
          INSUFFICIENT_FUNDS =
            T.let(:insufficient_funds, Increase::Models::InboundACHTransfer::Decline::Reason::TaggedSymbol)

          # The originating financial institution asked for this transfer to be returned. The receiving bank is complying with the request.
          RETURNED_PER_ODFI_REQUEST =
            T.let(:returned_per_odfi_request, Increase::Models::InboundACHTransfer::Decline::Reason::TaggedSymbol)

          # The customer no longer authorizes this transaction.
          AUTHORIZATION_REVOKED_BY_CUSTOMER =
            T.let(
              :authorization_revoked_by_customer,
              Increase::Models::InboundACHTransfer::Decline::Reason::TaggedSymbol
            )

          # The customer asked for the payment to be stopped.
          PAYMENT_STOPPED =
            T.let(:payment_stopped, Increase::Models::InboundACHTransfer::Decline::Reason::TaggedSymbol)

          # The customer advises that the debit was unauthorized.
          CUSTOMER_ADVISED_UNAUTHORIZED_IMPROPER_INELIGIBLE_OR_INCOMPLETE =
            T.let(
              :customer_advised_unauthorized_improper_ineligible_or_incomplete,
              Increase::Models::InboundACHTransfer::Decline::Reason::TaggedSymbol
            )

          # The payee is deceased.
          REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE_IN_THAT_CAPACITY =
            T.let(
              :representative_payee_deceased_or_unable_to_continue_in_that_capacity,
              Increase::Models::InboundACHTransfer::Decline::Reason::TaggedSymbol
            )

          # The account holder is deceased.
          BENEFICIARY_OR_ACCOUNT_HOLDER_DECEASED =
            T.let(
              :beneficiary_or_account_holder_deceased,
              Increase::Models::InboundACHTransfer::Decline::Reason::TaggedSymbol
            )

          # The customer refused a credit entry.
          CREDIT_ENTRY_REFUSED_BY_RECEIVER =
            T.let(
              :credit_entry_refused_by_receiver,
              Increase::Models::InboundACHTransfer::Decline::Reason::TaggedSymbol
            )

          # The account holder identified this transaction as a duplicate.
          DUPLICATE_ENTRY =
            T.let(:duplicate_entry, Increase::Models::InboundACHTransfer::Decline::Reason::TaggedSymbol)

          # The corporate customer no longer authorizes this transaction.
          CORPORATE_CUSTOMER_ADVISED_NOT_AUTHORIZED =
            T.let(
              :corporate_customer_advised_not_authorized,
              Increase::Models::InboundACHTransfer::Decline::Reason::TaggedSymbol
            )

          sig { override.returns(T::Array[Increase::Models::InboundACHTransfer::Decline::Reason::TaggedSymbol]) }
          def self.values; end
        end
      end

      # #/components/schemas/inbound_ach_transfer/properties/direction
      module Direction
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundACHTransfer::Direction) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::InboundACHTransfer::Direction::TaggedSymbol) }

        # Credit
        CREDIT = T.let(:credit, Increase::Models::InboundACHTransfer::Direction::TaggedSymbol)

        # Debit
        DEBIT = T.let(:debit, Increase::Models::InboundACHTransfer::Direction::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::InboundACHTransfer::Direction::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/inbound_ach_transfer/properties/expected_settlement_schedule
      module ExpectedSettlementSchedule
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::InboundACHTransfer::ExpectedSettlementSchedule) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::InboundACHTransfer::ExpectedSettlementSchedule::TaggedSymbol) }

        # The transfer is expected to settle same-day.
        SAME_DAY =
          T.let(:same_day, Increase::Models::InboundACHTransfer::ExpectedSettlementSchedule::TaggedSymbol)

        # The transfer is expected to settle on a future date.
        FUTURE_DATED =
          T.let(:future_dated, Increase::Models::InboundACHTransfer::ExpectedSettlementSchedule::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::InboundACHTransfer::ExpectedSettlementSchedule::TaggedSymbol]) }
        def self.values; end
      end

      class InternationalAddenda < Increase::Internal::Type::BaseModel
        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/destination_country_code
        sig { returns(String) }
        attr_accessor :destination_country_code

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/destination_currency_code
        sig { returns(String) }
        attr_accessor :destination_currency_code

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/foreign_exchange_indicator
        sig do
          returns(
            Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeIndicator::TaggedSymbol
          )
        end
        attr_accessor :foreign_exchange_indicator

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/foreign_exchange_reference
        sig { returns(T.nilable(String)) }
        attr_accessor :foreign_exchange_reference

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/foreign_exchange_reference_indicator
        sig do
          returns(
            Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeReferenceIndicator::TaggedSymbol
          )
        end
        attr_accessor :foreign_exchange_reference_indicator

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/foreign_payment_amount
        sig { returns(Integer) }
        attr_accessor :foreign_payment_amount

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/foreign_trace_number
        sig { returns(T.nilable(String)) }
        attr_accessor :foreign_trace_number

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/international_transaction_type_code
        sig do
          returns(
            Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
          )
        end
        attr_accessor :international_transaction_type_code

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originating_currency_code
        sig { returns(String) }
        attr_accessor :originating_currency_code

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originating_depository_financial_institution_branch_country
        sig { returns(String) }
        attr_accessor :originating_depository_financial_institution_branch_country

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originating_depository_financial_institution_id
        sig { returns(String) }
        attr_accessor :originating_depository_financial_institution_id

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originating_depository_financial_institution_id_qualifier
        sig do
          returns(
            Increase::Models::InboundACHTransfer::InternationalAddenda::OriginatingDepositoryFinancialInstitutionIDQualifier::TaggedSymbol
          )
        end
        attr_accessor :originating_depository_financial_institution_id_qualifier

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originating_depository_financial_institution_name
        sig { returns(String) }
        attr_accessor :originating_depository_financial_institution_name

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originator_city
        sig { returns(String) }
        attr_accessor :originator_city

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originator_country
        sig { returns(String) }
        attr_accessor :originator_country

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originator_identification
        sig { returns(String) }
        attr_accessor :originator_identification

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originator_name
        sig { returns(String) }
        attr_accessor :originator_name

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originator_postal_code
        sig { returns(T.nilable(String)) }
        attr_accessor :originator_postal_code

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originator_state_or_province
        sig { returns(T.nilable(String)) }
        attr_accessor :originator_state_or_province

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originator_street_address
        sig { returns(String) }
        attr_accessor :originator_street_address

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/payment_related_information
        sig { returns(T.nilable(String)) }
        attr_accessor :payment_related_information

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/payment_related_information2
        sig { returns(T.nilable(String)) }
        attr_accessor :payment_related_information2

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiver_city
        sig { returns(String) }
        attr_accessor :receiver_city

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiver_country
        sig { returns(String) }
        attr_accessor :receiver_country

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiver_identification_number
        sig { returns(T.nilable(String)) }
        attr_accessor :receiver_identification_number

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiver_postal_code
        sig { returns(T.nilable(String)) }
        attr_accessor :receiver_postal_code

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiver_state_or_province
        sig { returns(T.nilable(String)) }
        attr_accessor :receiver_state_or_province

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiver_street_address
        sig { returns(String) }
        attr_accessor :receiver_street_address

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiving_company_or_individual_name
        sig { returns(String) }
        attr_accessor :receiving_company_or_individual_name

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiving_depository_financial_institution_country
        sig { returns(String) }
        attr_accessor :receiving_depository_financial_institution_country

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiving_depository_financial_institution_id
        sig { returns(String) }
        attr_accessor :receiving_depository_financial_institution_id

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiving_depository_financial_institution_id_qualifier
        sig do
          returns(
            Increase::Models::InboundACHTransfer::InternationalAddenda::ReceivingDepositoryFinancialInstitutionIDQualifier::TaggedSymbol
          )
        end
        attr_accessor :receiving_depository_financial_institution_id_qualifier

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiving_depository_financial_institution_name
        sig { returns(String) }
        attr_accessor :receiving_depository_financial_institution_name

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda
        sig do
          params(
            destination_country_code: String,
            destination_currency_code: String,
            foreign_exchange_indicator: Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeIndicator::OrSymbol,
            foreign_exchange_reference: T.nilable(String),
            foreign_exchange_reference_indicator: Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeReferenceIndicator::OrSymbol,
            foreign_payment_amount: Integer,
            foreign_trace_number: T.nilable(String),
            international_transaction_type_code: Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::OrSymbol,
            originating_currency_code: String,
            originating_depository_financial_institution_branch_country: String,
            originating_depository_financial_institution_id: String,
            originating_depository_financial_institution_id_qualifier: Increase::Models::InboundACHTransfer::InternationalAddenda::OriginatingDepositoryFinancialInstitutionIDQualifier::OrSymbol,
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
            receiving_depository_financial_institution_id_qualifier: Increase::Models::InboundACHTransfer::InternationalAddenda::ReceivingDepositoryFinancialInstitutionIDQualifier::OrSymbol,
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
        ); end
        sig do
          override
            .returns(
              {
                destination_country_code: String,
                destination_currency_code: String,
                foreign_exchange_indicator: Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeIndicator::TaggedSymbol,
                foreign_exchange_reference: T.nilable(String),
                foreign_exchange_reference_indicator: Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeReferenceIndicator::TaggedSymbol,
                foreign_payment_amount: Integer,
                foreign_trace_number: T.nilable(String),
                international_transaction_type_code: Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol,
                originating_currency_code: String,
                originating_depository_financial_institution_branch_country: String,
                originating_depository_financial_institution_id: String,
                originating_depository_financial_institution_id_qualifier: Increase::Models::InboundACHTransfer::InternationalAddenda::OriginatingDepositoryFinancialInstitutionIDQualifier::TaggedSymbol,
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
                receiving_depository_financial_institution_id_qualifier: Increase::Models::InboundACHTransfer::InternationalAddenda::ReceivingDepositoryFinancialInstitutionIDQualifier::TaggedSymbol,
                receiving_depository_financial_institution_name: String
              }
            )
        end
        def to_hash; end

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/foreign_exchange_indicator
        module ForeignExchangeIndicator
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeIndicator) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeIndicator::TaggedSymbol
              )
            end

          # The originator chose an amount in their own currency. The settled amount in USD was converted using the exchange rate.
          FIXED_TO_VARIABLE =
            T.let(
              :fixed_to_variable,
              Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeIndicator::TaggedSymbol
            )

          # The originator chose an amount to settle in USD. The originator's amount was variable; known only after the foreign exchange conversion.
          VARIABLE_TO_FIXED =
            T.let(
              :variable_to_fixed,
              Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeIndicator::TaggedSymbol
            )

          # The amount was originated and settled as a fixed amount in USD. There is no foreign exchange conversion.
          FIXED_TO_FIXED =
            T.let(
              :fixed_to_fixed,
              Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeIndicator::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeIndicator::TaggedSymbol]
              )
          end
          def self.values; end
        end

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/foreign_exchange_reference_indicator
        module ForeignExchangeReferenceIndicator
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeReferenceIndicator)
            end
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeReferenceIndicator::TaggedSymbol
              )
            end

          # The ACH file contains a foreign exchange rate.
          FOREIGN_EXCHANGE_RATE =
            T.let(
              :foreign_exchange_rate,
              Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeReferenceIndicator::TaggedSymbol
            )

          # The ACH file contains a reference to a well-known foreign exchange rate.
          FOREIGN_EXCHANGE_REFERENCE_NUMBER =
            T.let(
              :foreign_exchange_reference_number,
              Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeReferenceIndicator::TaggedSymbol
            )

          # There is no foreign exchange for this transfer, so the `foreign_exchange_reference` field is blank.
          BLANK =
            T.let(
              :blank,
              Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeReferenceIndicator::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[
                  Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeReferenceIndicator::TaggedSymbol
                ]
              )
          end
          def self.values; end
        end

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/international_transaction_type_code
        module InternationalTransactionTypeCode
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode)
            end
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
              )
            end

          # Sent as `ANN` in the Nacha file.
          ANNUITY =
            T.let(
              :annuity,
              Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
            )

          # Sent as `BUS` in the Nacha file.
          BUSINESS_OR_COMMERCIAL =
            T.let(
              :business_or_commercial,
              Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
            )

          # Sent as `DEP` in the Nacha file.
          DEPOSIT =
            T.let(
              :deposit,
              Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
            )

          # Sent as `LOA` in the Nacha file.
          LOAN =
            T.let(
              :loan,
              Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
            )

          # Sent as `MIS` in the Nacha file.
          MISCELLANEOUS =
            T.let(
              :miscellaneous,
              Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
            )

          # Sent as `MOR` in the Nacha file.
          MORTGAGE =
            T.let(
              :mortgage,
              Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
            )

          # Sent as `PEN` in the Nacha file.
          PENSION =
            T.let(
              :pension,
              Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
            )

          # Sent as `REM` in the Nacha file.
          REMITTANCE =
            T.let(
              :remittance,
              Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
            )

          # Sent as `RLS` in the Nacha file.
          RENT_OR_LEASE =
            T.let(
              :rent_or_lease,
              Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
            )

          # Sent as `SAL` in the Nacha file.
          SALARY_OR_PAYROLL =
            T.let(
              :salary_or_payroll,
              Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
            )

          # Sent as `TAX` in the Nacha file.
          TAX =
            T.let(
              :tax,
              Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
            )

          # Sent as `ARC` in the Nacha file.
          ACCOUNTS_RECEIVABLE =
            T.let(
              :accounts_receivable,
              Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
            )

          # Sent as `BOC` in the Nacha file.
          BACK_OFFICE_CONVERSION =
            T.let(
              :back_office_conversion,
              Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
            )

          # Sent as `MTE` in the Nacha file.
          MACHINE_TRANSFER =
            T.let(
              :machine_transfer,
              Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
            )

          # Sent as `POP` in the Nacha file.
          POINT_OF_PURCHASE =
            T.let(
              :point_of_purchase,
              Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
            )

          # Sent as `POS` in the Nacha file.
          POINT_OF_SALE =
            T.let(
              :point_of_sale,
              Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
            )

          # Sent as `RCK` in the Nacha file.
          REPRESENTED_CHECK =
            T.let(
              :represented_check,
              Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
            )

          # Sent as `SHR` in the Nacha file.
          SHARED_NETWORK_TRANSACTION =
            T.let(
              :shared_network_transaction,
              Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
            )

          # Sent as `TEL` in the Nacha file.
          TELPHONE_INITIATED =
            T.let(
              :telphone_initiated,
              Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
            )

          # Sent as `WEB` in the Nacha file.
          INTERNET_INITIATED =
            T.let(
              :internet_initiated,
              Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode::TaggedSymbol]
              )
          end
          def self.values; end
        end

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originating_depository_financial_institution_id_qualifier
        module OriginatingDepositoryFinancialInstitutionIDQualifier
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Increase::Models::InboundACHTransfer::InternationalAddenda::OriginatingDepositoryFinancialInstitutionIDQualifier)
            end
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Increase::Models::InboundACHTransfer::InternationalAddenda::OriginatingDepositoryFinancialInstitutionIDQualifier::TaggedSymbol
              )
            end

          # A domestic clearing system number. In the US, for example, this is the American Banking Association (ABA) routing number.
          NATIONAL_CLEARING_SYSTEM_NUMBER =
            T.let(
              :national_clearing_system_number,
              Increase::Models::InboundACHTransfer::InternationalAddenda::OriginatingDepositoryFinancialInstitutionIDQualifier::TaggedSymbol
            )

          # The SWIFT Bank Identifier Code (BIC) of the bank.
          BIC_CODE =
            T.let(
              :bic_code,
              Increase::Models::InboundACHTransfer::InternationalAddenda::OriginatingDepositoryFinancialInstitutionIDQualifier::TaggedSymbol
            )

          # An International Bank Account Number.
          IBAN =
            T.let(
              :iban,
              Increase::Models::InboundACHTransfer::InternationalAddenda::OriginatingDepositoryFinancialInstitutionIDQualifier::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[
                  Increase::Models::InboundACHTransfer::InternationalAddenda::OriginatingDepositoryFinancialInstitutionIDQualifier::TaggedSymbol
                ]
              )
          end
          def self.values; end
        end

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiving_depository_financial_institution_id_qualifier
        module ReceivingDepositoryFinancialInstitutionIDQualifier
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Increase::Models::InboundACHTransfer::InternationalAddenda::ReceivingDepositoryFinancialInstitutionIDQualifier)
            end
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Increase::Models::InboundACHTransfer::InternationalAddenda::ReceivingDepositoryFinancialInstitutionIDQualifier::TaggedSymbol
              )
            end

          # A domestic clearing system number. In the US, for example, this is the American Banking Association (ABA) routing number.
          NATIONAL_CLEARING_SYSTEM_NUMBER =
            T.let(
              :national_clearing_system_number,
              Increase::Models::InboundACHTransfer::InternationalAddenda::ReceivingDepositoryFinancialInstitutionIDQualifier::TaggedSymbol
            )

          # The SWIFT Bank Identifier Code (BIC) of the bank.
          BIC_CODE =
            T.let(
              :bic_code,
              Increase::Models::InboundACHTransfer::InternationalAddenda::ReceivingDepositoryFinancialInstitutionIDQualifier::TaggedSymbol
            )

          # An International Bank Account Number.
          IBAN =
            T.let(
              :iban,
              Increase::Models::InboundACHTransfer::InternationalAddenda::ReceivingDepositoryFinancialInstitutionIDQualifier::TaggedSymbol
            )

          sig do
            override
              .returns(
                T::Array[
                  Increase::Models::InboundACHTransfer::InternationalAddenda::ReceivingDepositoryFinancialInstitutionIDQualifier::TaggedSymbol
                ]
              )
          end
          def self.values; end
        end
      end

      class NotificationOfChange < Increase::Internal::Type::BaseModel
        # #/components/schemas/inbound_ach_transfer/properties/notification_of_change/anyOf/0/properties/updated_account_number
        sig { returns(T.nilable(String)) }
        attr_accessor :updated_account_number

        # #/components/schemas/inbound_ach_transfer/properties/notification_of_change/anyOf/0/properties/updated_routing_number
        sig { returns(T.nilable(String)) }
        attr_accessor :updated_routing_number

        # #/components/schemas/inbound_ach_transfer/properties/notification_of_change
        sig do
          params(updated_account_number: T.nilable(String), updated_routing_number: T.nilable(String))
            .returns(T.attached_class)
        end
        def self.new(updated_account_number:, updated_routing_number:); end

        sig do
          override.returns(
            {
              updated_account_number: T.nilable(String),
              updated_routing_number: T.nilable(String)
            }
          )
        end
        def to_hash; end
      end

      # #/components/schemas/inbound_ach_transfer/properties/standard_entry_class_code
      module StandardEntryClassCode
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::InboundACHTransfer::StandardEntryClassCode) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::InboundACHTransfer::StandardEntryClassCode::TaggedSymbol) }

        # Corporate Credit and Debit (CCD).
        CORPORATE_CREDIT_OR_DEBIT =
          T.let(
            :corporate_credit_or_debit,
            Increase::Models::InboundACHTransfer::StandardEntryClassCode::TaggedSymbol
          )

        # Corporate Trade Exchange (CTX).
        CORPORATE_TRADE_EXCHANGE =
          T.let(
            :corporate_trade_exchange,
            Increase::Models::InboundACHTransfer::StandardEntryClassCode::TaggedSymbol
          )

        # Prearranged Payments and Deposits (PPD).
        PREARRANGED_PAYMENTS_AND_DEPOSIT =
          T.let(
            :prearranged_payments_and_deposit,
            Increase::Models::InboundACHTransfer::StandardEntryClassCode::TaggedSymbol
          )

        # Internet Initiated (WEB).
        INTERNET_INITIATED =
          T.let(:internet_initiated, Increase::Models::InboundACHTransfer::StandardEntryClassCode::TaggedSymbol)

        # Point of Sale (POS).
        POINT_OF_SALE =
          T.let(:point_of_sale, Increase::Models::InboundACHTransfer::StandardEntryClassCode::TaggedSymbol)

        # Telephone Initiated (TEL).
        TELEPHONE_INITIATED =
          T.let(:telephone_initiated, Increase::Models::InboundACHTransfer::StandardEntryClassCode::TaggedSymbol)

        # Customer Initiated (CIE).
        CUSTOMER_INITIATED =
          T.let(:customer_initiated, Increase::Models::InboundACHTransfer::StandardEntryClassCode::TaggedSymbol)

        # Accounts Receivable (ARC).
        ACCOUNTS_RECEIVABLE =
          T.let(:accounts_receivable, Increase::Models::InboundACHTransfer::StandardEntryClassCode::TaggedSymbol)

        # Machine Transfer (MTE).
        MACHINE_TRANSFER =
          T.let(:machine_transfer, Increase::Models::InboundACHTransfer::StandardEntryClassCode::TaggedSymbol)

        # Shared Network Transaction (SHR).
        SHARED_NETWORK_TRANSACTION =
          T.let(
            :shared_network_transaction,
            Increase::Models::InboundACHTransfer::StandardEntryClassCode::TaggedSymbol
          )

        # Represented Check (RCK).
        REPRESENTED_CHECK =
          T.let(:represented_check, Increase::Models::InboundACHTransfer::StandardEntryClassCode::TaggedSymbol)

        # Back Office Conversion (BOC).
        BACK_OFFICE_CONVERSION =
          T.let(:back_office_conversion, Increase::Models::InboundACHTransfer::StandardEntryClassCode::TaggedSymbol)

        # Point of Purchase (POP).
        POINT_OF_PURCHASE =
          T.let(:point_of_purchase, Increase::Models::InboundACHTransfer::StandardEntryClassCode::TaggedSymbol)

        # Check Truncation (TRC).
        CHECK_TRUNCATION =
          T.let(:check_truncation, Increase::Models::InboundACHTransfer::StandardEntryClassCode::TaggedSymbol)

        # Destroyed Check (XCK).
        DESTROYED_CHECK =
          T.let(:destroyed_check, Increase::Models::InboundACHTransfer::StandardEntryClassCode::TaggedSymbol)

        # International ACH Transaction (IAT).
        INTERNATIONAL_ACH_TRANSACTION =
          T.let(
            :international_ach_transaction,
            Increase::Models::InboundACHTransfer::StandardEntryClassCode::TaggedSymbol
          )

        sig { override.returns(T::Array[Increase::Models::InboundACHTransfer::StandardEntryClassCode::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/inbound_ach_transfer/properties/status
      module Status
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundACHTransfer::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::InboundACHTransfer::Status::TaggedSymbol) }

        # The Inbound ACH Transfer is awaiting action, will transition automatically if no action is taken.
        PENDING = T.let(:pending, Increase::Models::InboundACHTransfer::Status::TaggedSymbol)

        # The Inbound ACH Transfer has been declined.
        DECLINED = T.let(:declined, Increase::Models::InboundACHTransfer::Status::TaggedSymbol)

        # The Inbound ACH Transfer is accepted.
        ACCEPTED = T.let(:accepted, Increase::Models::InboundACHTransfer::Status::TaggedSymbol)

        # The Inbound ACH Transfer has been returned.
        RETURNED = T.let(:returned, Increase::Models::InboundACHTransfer::Status::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::InboundACHTransfer::Status::TaggedSymbol]) }
        def self.values; end
      end

      class TransferReturn < Increase::Internal::Type::BaseModel
        # #/components/schemas/inbound_ach_transfer/properties/transfer_return/anyOf/0/properties/reason
        sig { returns(Increase::Models::InboundACHTransfer::TransferReturn::Reason::TaggedSymbol) }
        attr_accessor :reason

        # #/components/schemas/inbound_ach_transfer/properties/transfer_return/anyOf/0/properties/returned_at
        sig { returns(Time) }
        attr_accessor :returned_at

        # #/components/schemas/inbound_ach_transfer/properties/transfer_return/anyOf/0/properties/transaction_id
        sig { returns(String) }
        attr_accessor :transaction_id

        # #/components/schemas/inbound_ach_transfer/properties/transfer_return
        sig do
          params(
            reason: Increase::Models::InboundACHTransfer::TransferReturn::Reason::OrSymbol,
            returned_at: Time,
            transaction_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(reason:, returned_at:, transaction_id:); end

        sig do
          override
            .returns(
              {
                reason: Increase::Models::InboundACHTransfer::TransferReturn::Reason::TaggedSymbol,
                returned_at: Time,
                transaction_id: String
              }
            )
        end
        def to_hash; end

        # #/components/schemas/inbound_ach_transfer/properties/transfer_return/anyOf/0/properties/reason
        module Reason
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::InboundACHTransfer::TransferReturn::Reason) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::InboundACHTransfer::TransferReturn::Reason::TaggedSymbol) }

          # The customer's account has insufficient funds. This reason is only allowed for debits. The Nacha return code is R01.
          INSUFFICIENT_FUNDS =
            T.let(:insufficient_funds, Increase::Models::InboundACHTransfer::TransferReturn::Reason::TaggedSymbol)

          # The originating financial institution asked for this transfer to be returned. The receiving bank is complying with the request. The Nacha return code is R06.
          RETURNED_PER_ODFI_REQUEST =
            T.let(
              :returned_per_odfi_request,
              Increase::Models::InboundACHTransfer::TransferReturn::Reason::TaggedSymbol
            )

          # The customer no longer authorizes this transaction. The Nacha return code is R07.
          AUTHORIZATION_REVOKED_BY_CUSTOMER =
            T.let(
              :authorization_revoked_by_customer,
              Increase::Models::InboundACHTransfer::TransferReturn::Reason::TaggedSymbol
            )

          # The customer asked for the payment to be stopped. This reason is only allowed for debits. The Nacha return code is R08.
          PAYMENT_STOPPED =
            T.let(:payment_stopped, Increase::Models::InboundACHTransfer::TransferReturn::Reason::TaggedSymbol)

          # The customer advises that the debit was unauthorized. The Nacha return code is R10.
          CUSTOMER_ADVISED_UNAUTHORIZED_IMPROPER_INELIGIBLE_OR_INCOMPLETE =
            T.let(
              :customer_advised_unauthorized_improper_ineligible_or_incomplete,
              Increase::Models::InboundACHTransfer::TransferReturn::Reason::TaggedSymbol
            )

          # The payee is deceased. The Nacha return code is R14.
          REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE_IN_THAT_CAPACITY =
            T.let(
              :representative_payee_deceased_or_unable_to_continue_in_that_capacity,
              Increase::Models::InboundACHTransfer::TransferReturn::Reason::TaggedSymbol
            )

          # The account holder is deceased. The Nacha return code is R15.
          BENEFICIARY_OR_ACCOUNT_HOLDER_DECEASED =
            T.let(
              :beneficiary_or_account_holder_deceased,
              Increase::Models::InboundACHTransfer::TransferReturn::Reason::TaggedSymbol
            )

          # The customer refused a credit entry. This reason is only allowed for credits. The Nacha return code is R23.
          CREDIT_ENTRY_REFUSED_BY_RECEIVER =
            T.let(
              :credit_entry_refused_by_receiver,
              Increase::Models::InboundACHTransfer::TransferReturn::Reason::TaggedSymbol
            )

          # The account holder identified this transaction as a duplicate. The Nacha return code is R24.
          DUPLICATE_ENTRY =
            T.let(:duplicate_entry, Increase::Models::InboundACHTransfer::TransferReturn::Reason::TaggedSymbol)

          # The corporate customer no longer authorizes this transaction. The Nacha return code is R29.
          CORPORATE_CUSTOMER_ADVISED_NOT_AUTHORIZED =
            T.let(
              :corporate_customer_advised_not_authorized,
              Increase::Models::InboundACHTransfer::TransferReturn::Reason::TaggedSymbol
            )

          sig { override.returns(T::Array[Increase::Models::InboundACHTransfer::TransferReturn::Reason::TaggedSymbol]) }
          def self.values; end
        end
      end

      # #/components/schemas/inbound_ach_transfer/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::InboundACHTransfer::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::InboundACHTransfer::Type::TaggedSymbol) }

        INBOUND_ACH_TRANSFER =
          T.let(:inbound_ach_transfer, Increase::Models::InboundACHTransfer::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::InboundACHTransfer::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
