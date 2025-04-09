# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::InboundACHTransfers#retrieve
    class InboundACHTransfer < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/inbound_ach_transfer/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute acceptance
      #   #/components/schemas/inbound_ach_transfer/properties/acceptance
      #
      #   @return [Increase::Models::InboundACHTransfer::Acceptance, nil]
      required :acceptance, -> { Increase::Models::InboundACHTransfer::Acceptance }, nil?: true

      # @!attribute account_id
      #   #/components/schemas/inbound_ach_transfer/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute account_number_id
      #   #/components/schemas/inbound_ach_transfer/properties/account_number_id
      #
      #   @return [String]
      required :account_number_id, String

      # @!attribute addenda
      #   #/components/schemas/inbound_ach_transfer/properties/addenda
      #
      #   @return [Increase::Models::InboundACHTransfer::Addenda, nil]
      required :addenda, -> { Increase::Models::InboundACHTransfer::Addenda }, nil?: true

      # @!attribute amount
      #   #/components/schemas/inbound_ach_transfer/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute automatically_resolves_at
      #   #/components/schemas/inbound_ach_transfer/properties/automatically_resolves_at
      #
      #   @return [Time]
      required :automatically_resolves_at, Time

      # @!attribute created_at
      #   #/components/schemas/inbound_ach_transfer/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute decline
      #   #/components/schemas/inbound_ach_transfer/properties/decline
      #
      #   @return [Increase::Models::InboundACHTransfer::Decline, nil]
      required :decline, -> { Increase::Models::InboundACHTransfer::Decline }, nil?: true

      # @!attribute direction
      #   #/components/schemas/inbound_ach_transfer/properties/direction
      #
      #   @return [Symbol, Increase::Models::InboundACHTransfer::Direction]
      required :direction, enum: -> { Increase::Models::InboundACHTransfer::Direction }

      # @!attribute effective_date
      #   #/components/schemas/inbound_ach_transfer/properties/effective_date
      #
      #   @return [Date]
      required :effective_date, Date

      # @!attribute expected_settlement_schedule
      #   #/components/schemas/inbound_ach_transfer/properties/expected_settlement_schedule
      #
      #   @return [Symbol, Increase::Models::InboundACHTransfer::ExpectedSettlementSchedule]
      required :expected_settlement_schedule,
               enum: -> { Increase::Models::InboundACHTransfer::ExpectedSettlementSchedule }

      # @!attribute international_addenda
      #   #/components/schemas/inbound_ach_transfer/properties/international_addenda
      #
      #   @return [Increase::Models::InboundACHTransfer::InternationalAddenda, nil]
      required :international_addenda,
               -> { Increase::Models::InboundACHTransfer::InternationalAddenda },
               nil?: true

      # @!attribute notification_of_change
      #   #/components/schemas/inbound_ach_transfer/properties/notification_of_change
      #
      #   @return [Increase::Models::InboundACHTransfer::NotificationOfChange, nil]
      required :notification_of_change,
               -> { Increase::Models::InboundACHTransfer::NotificationOfChange },
               nil?: true

      # @!attribute originator_company_descriptive_date
      #   #/components/schemas/inbound_ach_transfer/properties/originator_company_descriptive_date
      #
      #   @return [String, nil]
      required :originator_company_descriptive_date, String, nil?: true

      # @!attribute originator_company_discretionary_data
      #   #/components/schemas/inbound_ach_transfer/properties/originator_company_discretionary_data
      #
      #   @return [String, nil]
      required :originator_company_discretionary_data, String, nil?: true

      # @!attribute originator_company_entry_description
      #   #/components/schemas/inbound_ach_transfer/properties/originator_company_entry_description
      #
      #   @return [String]
      required :originator_company_entry_description, String

      # @!attribute originator_company_id
      #   #/components/schemas/inbound_ach_transfer/properties/originator_company_id
      #
      #   @return [String]
      required :originator_company_id, String

      # @!attribute originator_company_name
      #   #/components/schemas/inbound_ach_transfer/properties/originator_company_name
      #
      #   @return [String]
      required :originator_company_name, String

      # @!attribute originator_routing_number
      #   #/components/schemas/inbound_ach_transfer/properties/originator_routing_number
      #
      #   @return [String]
      required :originator_routing_number, String

      # @!attribute receiver_id_number
      #   #/components/schemas/inbound_ach_transfer/properties/receiver_id_number
      #
      #   @return [String, nil]
      required :receiver_id_number, String, nil?: true

      # @!attribute receiver_name
      #   #/components/schemas/inbound_ach_transfer/properties/receiver_name
      #
      #   @return [String, nil]
      required :receiver_name, String, nil?: true

      # @!attribute standard_entry_class_code
      #   #/components/schemas/inbound_ach_transfer/properties/standard_entry_class_code
      #
      #   @return [Symbol, Increase::Models::InboundACHTransfer::StandardEntryClassCode]
      required :standard_entry_class_code,
               enum: -> { Increase::Models::InboundACHTransfer::StandardEntryClassCode }

      # @!attribute status
      #   #/components/schemas/inbound_ach_transfer/properties/status
      #
      #   @return [Symbol, Increase::Models::InboundACHTransfer::Status]
      required :status, enum: -> { Increase::Models::InboundACHTransfer::Status }

      # @!attribute trace_number
      #   #/components/schemas/inbound_ach_transfer/properties/trace_number
      #
      #   @return [String]
      required :trace_number, String

      # @!attribute transfer_return
      #   #/components/schemas/inbound_ach_transfer/properties/transfer_return
      #
      #   @return [Increase::Models::InboundACHTransfer::TransferReturn, nil]
      required :transfer_return, -> { Increase::Models::InboundACHTransfer::TransferReturn }, nil?: true

      # @!attribute type
      #   #/components/schemas/inbound_ach_transfer/properties/type
      #
      #   @return [Symbol, Increase::Models::InboundACHTransfer::Type]
      required :type, enum: -> { Increase::Models::InboundACHTransfer::Type }

      # @!parse
      #   # #/components/schemas/inbound_ach_transfer
      #   #
      #   # @param id [String]
      #   # @param acceptance [Increase::Models::InboundACHTransfer::Acceptance, nil]
      #   # @param account_id [String]
      #   # @param account_number_id [String]
      #   # @param addenda [Increase::Models::InboundACHTransfer::Addenda, nil]
      #   # @param amount [Integer]
      #   # @param automatically_resolves_at [Time]
      #   # @param created_at [Time]
      #   # @param decline [Increase::Models::InboundACHTransfer::Decline, nil]
      #   # @param direction [Symbol, Increase::Models::InboundACHTransfer::Direction]
      #   # @param effective_date [Date]
      #   # @param expected_settlement_schedule [Symbol, Increase::Models::InboundACHTransfer::ExpectedSettlementSchedule]
      #   # @param international_addenda [Increase::Models::InboundACHTransfer::InternationalAddenda, nil]
      #   # @param notification_of_change [Increase::Models::InboundACHTransfer::NotificationOfChange, nil]
      #   # @param originator_company_descriptive_date [String, nil]
      #   # @param originator_company_discretionary_data [String, nil]
      #   # @param originator_company_entry_description [String]
      #   # @param originator_company_id [String]
      #   # @param originator_company_name [String]
      #   # @param originator_routing_number [String]
      #   # @param receiver_id_number [String, nil]
      #   # @param receiver_name [String, nil]
      #   # @param standard_entry_class_code [Symbol, Increase::Models::InboundACHTransfer::StandardEntryClassCode]
      #   # @param status [Symbol, Increase::Models::InboundACHTransfer::Status]
      #   # @param trace_number [String]
      #   # @param transfer_return [Increase::Models::InboundACHTransfer::TransferReturn, nil]
      #   # @param type [Symbol, Increase::Models::InboundACHTransfer::Type]
      #   #
      #   def initialize(
      #     id:,
      #     acceptance:,
      #     account_id:,
      #     account_number_id:,
      #     addenda:,
      #     amount:,
      #     automatically_resolves_at:,
      #     created_at:,
      #     decline:,
      #     direction:,
      #     effective_date:,
      #     expected_settlement_schedule:,
      #     international_addenda:,
      #     notification_of_change:,
      #     originator_company_descriptive_date:,
      #     originator_company_discretionary_data:,
      #     originator_company_entry_description:,
      #     originator_company_id:,
      #     originator_company_name:,
      #     originator_routing_number:,
      #     receiver_id_number:,
      #     receiver_name:,
      #     standard_entry_class_code:,
      #     status:,
      #     trace_number:,
      #     transfer_return:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # @see Increase::Models::InboundACHTransfer#acceptance
      class Acceptance < Increase::Internal::Type::BaseModel
        # @!attribute accepted_at
        #   #/components/schemas/inbound_ach_transfer/properties/acceptance/anyOf/0/properties/accepted_at
        #
        #   @return [Time]
        required :accepted_at, Time

        # @!attribute transaction_id
        #   #/components/schemas/inbound_ach_transfer/properties/acceptance/anyOf/0/properties/transaction_id
        #
        #   @return [String]
        required :transaction_id, String

        # @!parse
        #   # #/components/schemas/inbound_ach_transfer/properties/acceptance
        #   #
        #   # @param accepted_at [Time]
        #   # @param transaction_id [String]
        #   #
        #   def initialize(accepted_at:, transaction_id:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # @see Increase::Models::InboundACHTransfer#addenda
      class Addenda < Increase::Internal::Type::BaseModel
        # @!attribute category
        #   #/components/schemas/inbound_ach_transfer/properties/addenda/anyOf/0/properties/category
        #
        #   @return [Symbol, Increase::Models::InboundACHTransfer::Addenda::Category]
        required :category, enum: -> { Increase::Models::InboundACHTransfer::Addenda::Category }

        # @!attribute freeform
        #   #/components/schemas/inbound_ach_transfer/properties/addenda/anyOf/0/properties/freeform
        #
        #   @return [Increase::Models::InboundACHTransfer::Addenda::Freeform, nil]
        required :freeform, -> { Increase::Models::InboundACHTransfer::Addenda::Freeform }, nil?: true

        # @!parse
        #   # #/components/schemas/inbound_ach_transfer/properties/addenda
        #   #
        #   # @param category [Symbol, Increase::Models::InboundACHTransfer::Addenda::Category]
        #   # @param freeform [Increase::Models::InboundACHTransfer::Addenda::Freeform, nil]
        #   #
        #   def initialize(category:, freeform:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/inbound_ach_transfer/properties/addenda/anyOf/0/properties/category
        #
        # @see Increase::Models::InboundACHTransfer::Addenda#category
        module Category
          extend Increase::Internal::Type::Enum

          # Unstructured addendum.
          FREEFORM = :freeform

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # @see Increase::Models::InboundACHTransfer::Addenda#freeform
        class Freeform < Increase::Internal::Type::BaseModel
          # @!attribute entries
          #   #/components/schemas/inbound_ach_transfer/properties/addenda/anyOf/0/properties/freeform/anyOf/0/properties/entries
          #
          #   @return [Array<Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry>]
          required :entries,
                   -> { Increase::Internal::Type::ArrayOf[Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry] }

          # @!parse
          #   # #/components/schemas/inbound_ach_transfer/properties/addenda/anyOf/0/properties/freeform
          #   #
          #   # @param entries [Array<Increase::Models::InboundACHTransfer::Addenda::Freeform::Entry>]
          #   #
          #   def initialize(entries:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          class Entry < Increase::Internal::Type::BaseModel
            # @!attribute payment_related_information
            #   #/components/schemas/inbound_ach_transfer/properties/addenda/anyOf/0/properties/freeform/anyOf/0/properties/entries/items/properties/payment_related_information
            #
            #   @return [String]
            required :payment_related_information, String

            # @!parse
            #   # #/components/schemas/inbound_ach_transfer/properties/addenda/anyOf/0/properties/freeform/anyOf/0/properties/entries/items
            #   #
            #   # @param payment_related_information [String]
            #   #
            #   def initialize(payment_related_information:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end
        end
      end

      # @see Increase::Models::InboundACHTransfer#decline
      class Decline < Increase::Internal::Type::BaseModel
        # @!attribute declined_at
        #   #/components/schemas/inbound_ach_transfer/properties/decline/anyOf/0/properties/declined_at
        #
        #   @return [Time]
        required :declined_at, Time

        # @!attribute declined_transaction_id
        #   #/components/schemas/inbound_ach_transfer/properties/decline/anyOf/0/properties/declined_transaction_id
        #
        #   @return [String]
        required :declined_transaction_id, String

        # @!attribute reason
        #   #/components/schemas/inbound_ach_transfer/properties/decline/anyOf/0/properties/reason
        #
        #   @return [Symbol, Increase::Models::InboundACHTransfer::Decline::Reason]
        required :reason, enum: -> { Increase::Models::InboundACHTransfer::Decline::Reason }

        # @!parse
        #   # #/components/schemas/inbound_ach_transfer/properties/decline
        #   #
        #   # @param declined_at [Time]
        #   # @param declined_transaction_id [String]
        #   # @param reason [Symbol, Increase::Models::InboundACHTransfer::Decline::Reason]
        #   #
        #   def initialize(declined_at:, declined_transaction_id:, reason:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/inbound_ach_transfer/properties/decline/anyOf/0/properties/reason
        #
        # @see Increase::Models::InboundACHTransfer::Decline#reason
        module Reason
          extend Increase::Internal::Type::Enum

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
          CUSTOMER_ADVISED_UNAUTHORIZED_IMPROPER_INELIGIBLE_OR_INCOMPLETE =
            :customer_advised_unauthorized_improper_ineligible_or_incomplete

          # The payee is deceased.
          REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE_IN_THAT_CAPACITY =
            :representative_payee_deceased_or_unable_to_continue_in_that_capacity

          # The account holder is deceased.
          BENEFICIARY_OR_ACCOUNT_HOLDER_DECEASED = :beneficiary_or_account_holder_deceased

          # The customer refused a credit entry.
          CREDIT_ENTRY_REFUSED_BY_RECEIVER = :credit_entry_refused_by_receiver

          # The account holder identified this transaction as a duplicate.
          DUPLICATE_ENTRY = :duplicate_entry

          # The corporate customer no longer authorizes this transaction.
          CORPORATE_CUSTOMER_ADVISED_NOT_AUTHORIZED = :corporate_customer_advised_not_authorized

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # #/components/schemas/inbound_ach_transfer/properties/direction
      #
      # @see Increase::Models::InboundACHTransfer#direction
      module Direction
        extend Increase::Internal::Type::Enum

        # Credit
        CREDIT = :credit

        # Debit
        DEBIT = :debit

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/inbound_ach_transfer/properties/expected_settlement_schedule
      #
      # @see Increase::Models::InboundACHTransfer#expected_settlement_schedule
      module ExpectedSettlementSchedule
        extend Increase::Internal::Type::Enum

        # The transfer is expected to settle same-day.
        SAME_DAY = :same_day

        # The transfer is expected to settle on a future date.
        FUTURE_DATED = :future_dated

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Increase::Models::InboundACHTransfer#international_addenda
      class InternationalAddenda < Increase::Internal::Type::BaseModel
        # @!attribute destination_country_code
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/destination_country_code
        #
        #   @return [String]
        required :destination_country_code, String

        # @!attribute destination_currency_code
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/destination_currency_code
        #
        #   @return [String]
        required :destination_currency_code, String

        # @!attribute foreign_exchange_indicator
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/foreign_exchange_indicator
        #
        #   @return [Symbol, Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeIndicator]
        required :foreign_exchange_indicator,
                 enum: -> { Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeIndicator }

        # @!attribute foreign_exchange_reference
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/foreign_exchange_reference
        #
        #   @return [String, nil]
        required :foreign_exchange_reference, String, nil?: true

        # @!attribute foreign_exchange_reference_indicator
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/foreign_exchange_reference_indicator
        #
        #   @return [Symbol, Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeReferenceIndicator]
        required :foreign_exchange_reference_indicator,
                 enum: -> { Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeReferenceIndicator }

        # @!attribute foreign_payment_amount
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/foreign_payment_amount
        #
        #   @return [Integer]
        required :foreign_payment_amount, Integer

        # @!attribute foreign_trace_number
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/foreign_trace_number
        #
        #   @return [String, nil]
        required :foreign_trace_number, String, nil?: true

        # @!attribute international_transaction_type_code
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/international_transaction_type_code
        #
        #   @return [Symbol, Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode]
        required :international_transaction_type_code,
                 enum: -> { Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode }

        # @!attribute originating_currency_code
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originating_currency_code
        #
        #   @return [String]
        required :originating_currency_code, String

        # @!attribute originating_depository_financial_institution_branch_country
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originating_depository_financial_institution_branch_country
        #
        #   @return [String]
        required :originating_depository_financial_institution_branch_country, String

        # @!attribute originating_depository_financial_institution_id
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originating_depository_financial_institution_id
        #
        #   @return [String]
        required :originating_depository_financial_institution_id, String

        # @!attribute originating_depository_financial_institution_id_qualifier
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originating_depository_financial_institution_id_qualifier
        #
        #   @return [Symbol, Increase::Models::InboundACHTransfer::InternationalAddenda::OriginatingDepositoryFinancialInstitutionIDQualifier]
        required :originating_depository_financial_institution_id_qualifier,
                 enum: -> { Increase::Models::InboundACHTransfer::InternationalAddenda::OriginatingDepositoryFinancialInstitutionIDQualifier }

        # @!attribute originating_depository_financial_institution_name
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originating_depository_financial_institution_name
        #
        #   @return [String]
        required :originating_depository_financial_institution_name, String

        # @!attribute originator_city
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originator_city
        #
        #   @return [String]
        required :originator_city, String

        # @!attribute originator_country
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originator_country
        #
        #   @return [String]
        required :originator_country, String

        # @!attribute originator_identification
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originator_identification
        #
        #   @return [String]
        required :originator_identification, String

        # @!attribute originator_name
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originator_name
        #
        #   @return [String]
        required :originator_name, String

        # @!attribute originator_postal_code
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originator_postal_code
        #
        #   @return [String, nil]
        required :originator_postal_code, String, nil?: true

        # @!attribute originator_state_or_province
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originator_state_or_province
        #
        #   @return [String, nil]
        required :originator_state_or_province, String, nil?: true

        # @!attribute originator_street_address
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originator_street_address
        #
        #   @return [String]
        required :originator_street_address, String

        # @!attribute payment_related_information
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/payment_related_information
        #
        #   @return [String, nil]
        required :payment_related_information, String, nil?: true

        # @!attribute payment_related_information2
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/payment_related_information2
        #
        #   @return [String, nil]
        required :payment_related_information2, String, nil?: true

        # @!attribute receiver_city
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiver_city
        #
        #   @return [String]
        required :receiver_city, String

        # @!attribute receiver_country
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiver_country
        #
        #   @return [String]
        required :receiver_country, String

        # @!attribute receiver_identification_number
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiver_identification_number
        #
        #   @return [String, nil]
        required :receiver_identification_number, String, nil?: true

        # @!attribute receiver_postal_code
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiver_postal_code
        #
        #   @return [String, nil]
        required :receiver_postal_code, String, nil?: true

        # @!attribute receiver_state_or_province
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiver_state_or_province
        #
        #   @return [String, nil]
        required :receiver_state_or_province, String, nil?: true

        # @!attribute receiver_street_address
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiver_street_address
        #
        #   @return [String]
        required :receiver_street_address, String

        # @!attribute receiving_company_or_individual_name
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiving_company_or_individual_name
        #
        #   @return [String]
        required :receiving_company_or_individual_name, String

        # @!attribute receiving_depository_financial_institution_country
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiving_depository_financial_institution_country
        #
        #   @return [String]
        required :receiving_depository_financial_institution_country, String

        # @!attribute receiving_depository_financial_institution_id
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiving_depository_financial_institution_id
        #
        #   @return [String]
        required :receiving_depository_financial_institution_id, String

        # @!attribute receiving_depository_financial_institution_id_qualifier
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiving_depository_financial_institution_id_qualifier
        #
        #   @return [Symbol, Increase::Models::InboundACHTransfer::InternationalAddenda::ReceivingDepositoryFinancialInstitutionIDQualifier]
        required :receiving_depository_financial_institution_id_qualifier,
                 enum: -> { Increase::Models::InboundACHTransfer::InternationalAddenda::ReceivingDepositoryFinancialInstitutionIDQualifier }

        # @!attribute receiving_depository_financial_institution_name
        #   #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiving_depository_financial_institution_name
        #
        #   @return [String]
        required :receiving_depository_financial_institution_name, String

        # @!parse
        #   # #/components/schemas/inbound_ach_transfer/properties/international_addenda
        #   #
        #   # @param destination_country_code [String]
        #   # @param destination_currency_code [String]
        #   # @param foreign_exchange_indicator [Symbol, Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeIndicator]
        #   # @param foreign_exchange_reference [String, nil]
        #   # @param foreign_exchange_reference_indicator [Symbol, Increase::Models::InboundACHTransfer::InternationalAddenda::ForeignExchangeReferenceIndicator]
        #   # @param foreign_payment_amount [Integer]
        #   # @param foreign_trace_number [String, nil]
        #   # @param international_transaction_type_code [Symbol, Increase::Models::InboundACHTransfer::InternationalAddenda::InternationalTransactionTypeCode]
        #   # @param originating_currency_code [String]
        #   # @param originating_depository_financial_institution_branch_country [String]
        #   # @param originating_depository_financial_institution_id [String]
        #   # @param originating_depository_financial_institution_id_qualifier [Symbol, Increase::Models::InboundACHTransfer::InternationalAddenda::OriginatingDepositoryFinancialInstitutionIDQualifier]
        #   # @param originating_depository_financial_institution_name [String]
        #   # @param originator_city [String]
        #   # @param originator_country [String]
        #   # @param originator_identification [String]
        #   # @param originator_name [String]
        #   # @param originator_postal_code [String, nil]
        #   # @param originator_state_or_province [String, nil]
        #   # @param originator_street_address [String]
        #   # @param payment_related_information [String, nil]
        #   # @param payment_related_information2 [String, nil]
        #   # @param receiver_city [String]
        #   # @param receiver_country [String]
        #   # @param receiver_identification_number [String, nil]
        #   # @param receiver_postal_code [String, nil]
        #   # @param receiver_state_or_province [String, nil]
        #   # @param receiver_street_address [String]
        #   # @param receiving_company_or_individual_name [String]
        #   # @param receiving_depository_financial_institution_country [String]
        #   # @param receiving_depository_financial_institution_id [String]
        #   # @param receiving_depository_financial_institution_id_qualifier [Symbol, Increase::Models::InboundACHTransfer::InternationalAddenda::ReceivingDepositoryFinancialInstitutionIDQualifier]
        #   # @param receiving_depository_financial_institution_name [String]
        #   #
        #   def initialize(
        #     destination_country_code:,
        #     destination_currency_code:,
        #     foreign_exchange_indicator:,
        #     foreign_exchange_reference:,
        #     foreign_exchange_reference_indicator:,
        #     foreign_payment_amount:,
        #     foreign_trace_number:,
        #     international_transaction_type_code:,
        #     originating_currency_code:,
        #     originating_depository_financial_institution_branch_country:,
        #     originating_depository_financial_institution_id:,
        #     originating_depository_financial_institution_id_qualifier:,
        #     originating_depository_financial_institution_name:,
        #     originator_city:,
        #     originator_country:,
        #     originator_identification:,
        #     originator_name:,
        #     originator_postal_code:,
        #     originator_state_or_province:,
        #     originator_street_address:,
        #     payment_related_information:,
        #     payment_related_information2:,
        #     receiver_city:,
        #     receiver_country:,
        #     receiver_identification_number:,
        #     receiver_postal_code:,
        #     receiver_state_or_province:,
        #     receiver_street_address:,
        #     receiving_company_or_individual_name:,
        #     receiving_depository_financial_institution_country:,
        #     receiving_depository_financial_institution_id:,
        #     receiving_depository_financial_institution_id_qualifier:,
        #     receiving_depository_financial_institution_name:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/foreign_exchange_indicator
        #
        # @see Increase::Models::InboundACHTransfer::InternationalAddenda#foreign_exchange_indicator
        module ForeignExchangeIndicator
          extend Increase::Internal::Type::Enum

          # The originator chose an amount in their own currency. The settled amount in USD was converted using the exchange rate.
          FIXED_TO_VARIABLE = :fixed_to_variable

          # The originator chose an amount to settle in USD. The originator's amount was variable; known only after the foreign exchange conversion.
          VARIABLE_TO_FIXED = :variable_to_fixed

          # The amount was originated and settled as a fixed amount in USD. There is no foreign exchange conversion.
          FIXED_TO_FIXED = :fixed_to_fixed

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/foreign_exchange_reference_indicator
        #
        # @see Increase::Models::InboundACHTransfer::InternationalAddenda#foreign_exchange_reference_indicator
        module ForeignExchangeReferenceIndicator
          extend Increase::Internal::Type::Enum

          # The ACH file contains a foreign exchange rate.
          FOREIGN_EXCHANGE_RATE = :foreign_exchange_rate

          # The ACH file contains a reference to a well-known foreign exchange rate.
          FOREIGN_EXCHANGE_REFERENCE_NUMBER = :foreign_exchange_reference_number

          # There is no foreign exchange for this transfer, so the `foreign_exchange_reference` field is blank.
          BLANK = :blank

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/international_transaction_type_code
        #
        # @see Increase::Models::InboundACHTransfer::InternationalAddenda#international_transaction_type_code
        module InternationalTransactionTypeCode
          extend Increase::Internal::Type::Enum

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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/originating_depository_financial_institution_id_qualifier
        #
        # @see Increase::Models::InboundACHTransfer::InternationalAddenda#originating_depository_financial_institution_id_qualifier
        module OriginatingDepositoryFinancialInstitutionIDQualifier
          extend Increase::Internal::Type::Enum

          # A domestic clearing system number. In the US, for example, this is the American Banking Association (ABA) routing number.
          NATIONAL_CLEARING_SYSTEM_NUMBER = :national_clearing_system_number

          # The SWIFT Bank Identifier Code (BIC) of the bank.
          BIC_CODE = :bic_code

          # An International Bank Account Number.
          IBAN = :iban

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # #/components/schemas/inbound_ach_transfer/properties/international_addenda/anyOf/0/properties/receiving_depository_financial_institution_id_qualifier
        #
        # @see Increase::Models::InboundACHTransfer::InternationalAddenda#receiving_depository_financial_institution_id_qualifier
        module ReceivingDepositoryFinancialInstitutionIDQualifier
          extend Increase::Internal::Type::Enum

          # A domestic clearing system number. In the US, for example, this is the American Banking Association (ABA) routing number.
          NATIONAL_CLEARING_SYSTEM_NUMBER = :national_clearing_system_number

          # The SWIFT Bank Identifier Code (BIC) of the bank.
          BIC_CODE = :bic_code

          # An International Bank Account Number.
          IBAN = :iban

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # @see Increase::Models::InboundACHTransfer#notification_of_change
      class NotificationOfChange < Increase::Internal::Type::BaseModel
        # @!attribute updated_account_number
        #   #/components/schemas/inbound_ach_transfer/properties/notification_of_change/anyOf/0/properties/updated_account_number
        #
        #   @return [String, nil]
        required :updated_account_number, String, nil?: true

        # @!attribute updated_routing_number
        #   #/components/schemas/inbound_ach_transfer/properties/notification_of_change/anyOf/0/properties/updated_routing_number
        #
        #   @return [String, nil]
        required :updated_routing_number, String, nil?: true

        # @!parse
        #   # #/components/schemas/inbound_ach_transfer/properties/notification_of_change
        #   #
        #   # @param updated_account_number [String, nil]
        #   # @param updated_routing_number [String, nil]
        #   #
        #   def initialize(updated_account_number:, updated_routing_number:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # #/components/schemas/inbound_ach_transfer/properties/standard_entry_class_code
      #
      # @see Increase::Models::InboundACHTransfer#standard_entry_class_code
      module StandardEntryClassCode
        extend Increase::Internal::Type::Enum

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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/inbound_ach_transfer/properties/status
      #
      # @see Increase::Models::InboundACHTransfer#status
      module Status
        extend Increase::Internal::Type::Enum

        # The Inbound ACH Transfer is awaiting action, will transition automatically if no action is taken.
        PENDING = :pending

        # The Inbound ACH Transfer has been declined.
        DECLINED = :declined

        # The Inbound ACH Transfer is accepted.
        ACCEPTED = :accepted

        # The Inbound ACH Transfer has been returned.
        RETURNED = :returned

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Increase::Models::InboundACHTransfer#transfer_return
      class TransferReturn < Increase::Internal::Type::BaseModel
        # @!attribute reason
        #   #/components/schemas/inbound_ach_transfer/properties/transfer_return/anyOf/0/properties/reason
        #
        #   @return [Symbol, Increase::Models::InboundACHTransfer::TransferReturn::Reason]
        required :reason, enum: -> { Increase::Models::InboundACHTransfer::TransferReturn::Reason }

        # @!attribute returned_at
        #   #/components/schemas/inbound_ach_transfer/properties/transfer_return/anyOf/0/properties/returned_at
        #
        #   @return [Time]
        required :returned_at, Time

        # @!attribute transaction_id
        #   #/components/schemas/inbound_ach_transfer/properties/transfer_return/anyOf/0/properties/transaction_id
        #
        #   @return [String]
        required :transaction_id, String

        # @!parse
        #   # #/components/schemas/inbound_ach_transfer/properties/transfer_return
        #   #
        #   # @param reason [Symbol, Increase::Models::InboundACHTransfer::TransferReturn::Reason]
        #   # @param returned_at [Time]
        #   # @param transaction_id [String]
        #   #
        #   def initialize(reason:, returned_at:, transaction_id:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/inbound_ach_transfer/properties/transfer_return/anyOf/0/properties/reason
        #
        # @see Increase::Models::InboundACHTransfer::TransferReturn#reason
        module Reason
          extend Increase::Internal::Type::Enum

          # The customer's account has insufficient funds. This reason is only allowed for debits. The Nacha return code is R01.
          INSUFFICIENT_FUNDS = :insufficient_funds

          # The originating financial institution asked for this transfer to be returned. The receiving bank is complying with the request. The Nacha return code is R06.
          RETURNED_PER_ODFI_REQUEST = :returned_per_odfi_request

          # The customer no longer authorizes this transaction. The Nacha return code is R07.
          AUTHORIZATION_REVOKED_BY_CUSTOMER = :authorization_revoked_by_customer

          # The customer asked for the payment to be stopped. This reason is only allowed for debits. The Nacha return code is R08.
          PAYMENT_STOPPED = :payment_stopped

          # The customer advises that the debit was unauthorized. The Nacha return code is R10.
          CUSTOMER_ADVISED_UNAUTHORIZED_IMPROPER_INELIGIBLE_OR_INCOMPLETE =
            :customer_advised_unauthorized_improper_ineligible_or_incomplete

          # The payee is deceased. The Nacha return code is R14.
          REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE_IN_THAT_CAPACITY =
            :representative_payee_deceased_or_unable_to_continue_in_that_capacity

          # The account holder is deceased. The Nacha return code is R15.
          BENEFICIARY_OR_ACCOUNT_HOLDER_DECEASED = :beneficiary_or_account_holder_deceased

          # The customer refused a credit entry. This reason is only allowed for credits. The Nacha return code is R23.
          CREDIT_ENTRY_REFUSED_BY_RECEIVER = :credit_entry_refused_by_receiver

          # The account holder identified this transaction as a duplicate. The Nacha return code is R24.
          DUPLICATE_ENTRY = :duplicate_entry

          # The corporate customer no longer authorizes this transaction. The Nacha return code is R29.
          CORPORATE_CUSTOMER_ADVISED_NOT_AUTHORIZED = :corporate_customer_advised_not_authorized

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # #/components/schemas/inbound_ach_transfer/properties/type
      #
      # @see Increase::Models::InboundACHTransfer#type
      module Type
        extend Increase::Internal::Type::Enum

        INBOUND_ACH_TRANSFER = :inbound_ach_transfer

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
