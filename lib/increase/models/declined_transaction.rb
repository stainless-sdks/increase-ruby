# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::DeclinedTransactions#retrieve
    class DeclinedTransaction < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/declined_transaction/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   #/components/schemas/declined_transaction/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute amount
      #   #/components/schemas/declined_transaction/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute created_at
      #   #/components/schemas/declined_transaction/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   #/components/schemas/declined_transaction/properties/currency
      #
      #   @return [Symbol, Increase::Models::DeclinedTransaction::Currency]
      required :currency, enum: -> { Increase::Models::DeclinedTransaction::Currency }

      # @!attribute description
      #   #/components/schemas/declined_transaction/properties/description
      #
      #   @return [String]
      required :description, String

      # @!attribute route_id
      #   #/components/schemas/declined_transaction/properties/route_id
      #
      #   @return [String, nil]
      required :route_id, String, nil?: true

      # @!attribute route_type
      #   #/components/schemas/declined_transaction/properties/route_type
      #
      #   @return [Symbol, Increase::Models::DeclinedTransaction::RouteType, nil]
      required :route_type, enum: -> { Increase::Models::DeclinedTransaction::RouteType }, nil?: true

      # @!attribute source
      #   #/components/schemas/declined_transaction/properties/source
      #
      #   @return [Increase::Models::DeclinedTransaction::Source]
      required :source, -> { Increase::Models::DeclinedTransaction::Source }

      # @!attribute type
      #   #/components/schemas/declined_transaction/properties/type
      #
      #   @return [Symbol, Increase::Models::DeclinedTransaction::Type]
      required :type, enum: -> { Increase::Models::DeclinedTransaction::Type }

      # @!parse
      #   # #/components/schemas/declined_transaction
      #   #
      #   # @param id [String]
      #   # @param account_id [String]
      #   # @param amount [Integer]
      #   # @param created_at [Time]
      #   # @param currency [Symbol, Increase::Models::DeclinedTransaction::Currency]
      #   # @param description [String]
      #   # @param route_id [String, nil]
      #   # @param route_type [Symbol, Increase::Models::DeclinedTransaction::RouteType, nil]
      #   # @param source [Increase::Models::DeclinedTransaction::Source]
      #   # @param type [Symbol, Increase::Models::DeclinedTransaction::Type]
      #   #
      #   def initialize(
      #     id:,
      #     account_id:,
      #     amount:,
      #     created_at:,
      #     currency:,
      #     description:,
      #     route_id:,
      #     route_type:,
      #     source:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/declined_transaction/properties/currency
      #
      # @see Increase::Models::DeclinedTransaction#currency
      module Currency
        extend Increase::Internal::Type::Enum

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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/declined_transaction/properties/route_type
      #
      # @see Increase::Models::DeclinedTransaction#route_type
      module RouteType
        extend Increase::Internal::Type::Enum

        # An Account Number.
        ACCOUNT_NUMBER = :account_number

        # A Card.
        CARD = :card

        # A Lockbox.
        LOCKBOX = :lockbox

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Increase::Models::DeclinedTransaction#source
      class Source < Increase::Internal::Type::BaseModel
        # @!attribute ach_decline
        #   #/components/schemas/declined_transaction/properties/source/properties/ach_decline
        #
        #   @return [Increase::Models::DeclinedTransaction::Source::ACHDecline, nil]
        required :ach_decline, -> { Increase::Models::DeclinedTransaction::Source::ACHDecline }, nil?: true

        # @!attribute card_decline
        #   #/components/schemas/declined_transaction/properties/source/properties/card_decline
        #
        #   @return [Increase::Models::DeclinedTransaction::Source::CardDecline, nil]
        required :card_decline, -> { Increase::Models::DeclinedTransaction::Source::CardDecline }, nil?: true

        # @!attribute category
        #   #/components/schemas/declined_transaction/properties/source/properties/category
        #
        #   @return [Symbol, Increase::Models::DeclinedTransaction::Source::Category]
        required :category, enum: -> { Increase::Models::DeclinedTransaction::Source::Category }

        # @!attribute check_decline
        #   #/components/schemas/declined_transaction/properties/source/properties/check_decline
        #
        #   @return [Increase::Models::DeclinedTransaction::Source::CheckDecline, nil]
        required :check_decline, -> { Increase::Models::DeclinedTransaction::Source::CheckDecline }, nil?: true

        # @!attribute check_deposit_rejection
        #   #/components/schemas/declined_transaction/properties/source/properties/check_deposit_rejection
        #
        #   @return [Increase::Models::DeclinedTransaction::Source::CheckDepositRejection, nil]
        required :check_deposit_rejection,
                 -> { Increase::Models::DeclinedTransaction::Source::CheckDepositRejection },
                 nil?: true

        # @!attribute inbound_real_time_payments_transfer_decline
        #   #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline
        #
        #   @return [Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline, nil]
        required :inbound_real_time_payments_transfer_decline,
                 -> { Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline },
                 nil?: true

        # @!attribute other
        #   #/components/schemas/declined_transaction/properties/source/properties/other
        #
        #   @return [Object, nil]
        required :other, Increase::Internal::Type::Unknown, nil?: true

        # @!attribute wire_decline
        #   #/components/schemas/declined_transaction/properties/source/properties/wire_decline
        #
        #   @return [Increase::Models::DeclinedTransaction::Source::WireDecline, nil]
        required :wire_decline, -> { Increase::Models::DeclinedTransaction::Source::WireDecline }, nil?: true

        # @!parse
        #   # #/components/schemas/declined_transaction/properties/source
        #   #
        #   # @param ach_decline [Increase::Models::DeclinedTransaction::Source::ACHDecline, nil]
        #   # @param card_decline [Increase::Models::DeclinedTransaction::Source::CardDecline, nil]
        #   # @param category [Symbol, Increase::Models::DeclinedTransaction::Source::Category]
        #   # @param check_decline [Increase::Models::DeclinedTransaction::Source::CheckDecline, nil]
        #   # @param check_deposit_rejection [Increase::Models::DeclinedTransaction::Source::CheckDepositRejection, nil]
        #   # @param inbound_real_time_payments_transfer_decline [Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline, nil]
        #   # @param other [Object, nil]
        #   # @param wire_decline [Increase::Models::DeclinedTransaction::Source::WireDecline, nil]
        #   #
        #   def initialize(
        #     ach_decline:,
        #     card_decline:,
        #     category:,
        #     check_decline:,
        #     check_deposit_rejection:,
        #     inbound_real_time_payments_transfer_decline:,
        #     other:,
        #     wire_decline:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::DeclinedTransaction::Source#ach_decline
        class ACHDecline < Increase::Internal::Type::BaseModel
          # @!attribute id
          #   #/components/schemas/ach_decline/properties/id
          #
          #   @return [String]
          required :id, String

          # @!attribute amount
          #   #/components/schemas/ach_decline/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute inbound_ach_transfer_id
          #   #/components/schemas/ach_decline/properties/inbound_ach_transfer_id
          #
          #   @return [String]
          required :inbound_ach_transfer_id, String

          # @!attribute originator_company_descriptive_date
          #   #/components/schemas/ach_decline/properties/originator_company_descriptive_date
          #
          #   @return [String, nil]
          required :originator_company_descriptive_date, String, nil?: true

          # @!attribute originator_company_discretionary_data
          #   #/components/schemas/ach_decline/properties/originator_company_discretionary_data
          #
          #   @return [String, nil]
          required :originator_company_discretionary_data, String, nil?: true

          # @!attribute originator_company_id
          #   #/components/schemas/ach_decline/properties/originator_company_id
          #
          #   @return [String]
          required :originator_company_id, String

          # @!attribute originator_company_name
          #   #/components/schemas/ach_decline/properties/originator_company_name
          #
          #   @return [String]
          required :originator_company_name, String

          # @!attribute reason
          #   #/components/schemas/ach_decline/properties/reason
          #
          #   @return [Symbol, Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason]
          required :reason, enum: -> { Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason }

          # @!attribute receiver_id_number
          #   #/components/schemas/ach_decline/properties/receiver_id_number
          #
          #   @return [String, nil]
          required :receiver_id_number, String, nil?: true

          # @!attribute receiver_name
          #   #/components/schemas/ach_decline/properties/receiver_name
          #
          #   @return [String, nil]
          required :receiver_name, String, nil?: true

          # @!attribute trace_number
          #   #/components/schemas/ach_decline/properties/trace_number
          #
          #   @return [String]
          required :trace_number, String

          # @!attribute type
          #   #/components/schemas/ach_decline/properties/type
          #
          #   @return [Symbol, Increase::Models::DeclinedTransaction::Source::ACHDecline::Type]
          required :type, enum: -> { Increase::Models::DeclinedTransaction::Source::ACHDecline::Type }

          # @!parse
          #   # #/components/schemas/declined_transaction/properties/source/properties/ach_decline
          #   #
          #   # @param id [String]
          #   # @param amount [Integer]
          #   # @param inbound_ach_transfer_id [String]
          #   # @param originator_company_descriptive_date [String, nil]
          #   # @param originator_company_discretionary_data [String, nil]
          #   # @param originator_company_id [String]
          #   # @param originator_company_name [String]
          #   # @param reason [Symbol, Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason]
          #   # @param receiver_id_number [String, nil]
          #   # @param receiver_name [String, nil]
          #   # @param trace_number [String]
          #   # @param type [Symbol, Increase::Models::DeclinedTransaction::Source::ACHDecline::Type]
          #   #
          #   def initialize(
          #     id:,
          #     amount:,
          #     inbound_ach_transfer_id:,
          #     originator_company_descriptive_date:,
          #     originator_company_discretionary_data:,
          #     originator_company_id:,
          #     originator_company_name:,
          #     reason:,
          #     receiver_id_number:,
          #     receiver_name:,
          #     trace_number:,
          #     type:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/ach_decline/properties/reason
          #
          # @see Increase::Models::DeclinedTransaction::Source::ACHDecline#reason
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

          # #/components/schemas/ach_decline/properties/type
          #
          # @see Increase::Models::DeclinedTransaction::Source::ACHDecline#type
          module Type
            extend Increase::Internal::Type::Enum

            ACH_DECLINE = :ach_decline

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::DeclinedTransaction::Source#card_decline
        class CardDecline < Increase::Internal::Type::BaseModel
          # @!attribute id
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/id
          #
          #   @return [String]
          required :id, String

          # @!attribute actioner
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/actioner
          #
          #   @return [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::Actioner]
          required :actioner, enum: -> { Increase::Models::DeclinedTransaction::Source::CardDecline::Actioner }

          # @!attribute amount
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute card_payment_id
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/card_payment_id
          #
          #   @return [String]
          required :card_payment_id, String

          # @!attribute currency
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/currency
          #
          #   @return [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::Currency]
          required :currency, enum: -> { Increase::Models::DeclinedTransaction::Source::CardDecline::Currency }

          # @!attribute declined_transaction_id
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/declined_transaction_id
          #
          #   @return [String]
          required :declined_transaction_id, String

          # @!attribute digital_wallet_token_id
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/digital_wallet_token_id
          #
          #   @return [String, nil]
          required :digital_wallet_token_id, String, nil?: true

          # @!attribute direction
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/direction
          #
          #   @return [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::Direction]
          required :direction, enum: -> { Increase::Models::DeclinedTransaction::Source::CardDecline::Direction }

          # @!attribute merchant_acceptor_id
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/merchant_acceptor_id
          #
          #   @return [String]
          required :merchant_acceptor_id, String

          # @!attribute merchant_category_code
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/merchant_category_code
          #
          #   @return [String]
          required :merchant_category_code, String

          # @!attribute merchant_city
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/merchant_city
          #
          #   @return [String, nil]
          required :merchant_city, String, nil?: true

          # @!attribute merchant_country
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/merchant_country
          #
          #   @return [String]
          required :merchant_country, String

          # @!attribute merchant_descriptor
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/merchant_descriptor
          #
          #   @return [String]
          required :merchant_descriptor, String

          # @!attribute merchant_postal_code
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/merchant_postal_code
          #
          #   @return [String, nil]
          required :merchant_postal_code, String, nil?: true

          # @!attribute merchant_state
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/merchant_state
          #
          #   @return [String, nil]
          required :merchant_state, String, nil?: true

          # @!attribute network_details
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details
          #
          #   @return [Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails]
          required :network_details,
                   -> { Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails }

          # @!attribute network_identifiers
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_identifiers
          #
          #   @return [Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkIdentifiers }

          # @!attribute network_risk_score
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_risk_score
          #
          #   @return [Integer, nil]
          required :network_risk_score, Integer, nil?: true

          # @!attribute physical_card_id
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/physical_card_id
          #
          #   @return [String, nil]
          required :physical_card_id, String, nil?: true

          # @!attribute presentment_amount
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/presentment_amount
          #
          #   @return [Integer]
          required :presentment_amount, Integer

          # @!attribute presentment_currency
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/presentment_currency
          #
          #   @return [String]
          required :presentment_currency, String

          # @!attribute processing_category
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/processing_category
          #
          #   @return [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::ProcessingCategory]
          required :processing_category,
                   enum: -> { Increase::Models::DeclinedTransaction::Source::CardDecline::ProcessingCategory }

          # @!attribute real_time_decision_id
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/real_time_decision_id
          #
          #   @return [String, nil]
          required :real_time_decision_id, String, nil?: true

          # @!attribute real_time_decision_reason
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/real_time_decision_reason
          #
          #   @return [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::RealTimeDecisionReason, nil]
          required :real_time_decision_reason,
                   enum: -> { Increase::Models::DeclinedTransaction::Source::CardDecline::RealTimeDecisionReason },
                   nil?: true

          # @!attribute reason
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/reason
          #
          #   @return [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::Reason]
          required :reason, enum: -> { Increase::Models::DeclinedTransaction::Source::CardDecline::Reason }

          # @!attribute terminal_id
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/terminal_id
          #
          #   @return [String, nil]
          required :terminal_id, String, nil?: true

          # @!attribute verification
          #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification
          #
          #   @return [Increase::Models::DeclinedTransaction::Source::CardDecline::Verification]
          required :verification, -> { Increase::Models::DeclinedTransaction::Source::CardDecline::Verification }

          # @!parse
          #   # #/components/schemas/declined_transaction/properties/source/properties/card_decline
          #   #
          #   # @param id [String]
          #   # @param actioner [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::Actioner]
          #   # @param amount [Integer]
          #   # @param card_payment_id [String]
          #   # @param currency [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::Currency]
          #   # @param declined_transaction_id [String]
          #   # @param digital_wallet_token_id [String, nil]
          #   # @param direction [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::Direction]
          #   # @param merchant_acceptor_id [String]
          #   # @param merchant_category_code [String]
          #   # @param merchant_city [String, nil]
          #   # @param merchant_country [String]
          #   # @param merchant_descriptor [String]
          #   # @param merchant_postal_code [String, nil]
          #   # @param merchant_state [String, nil]
          #   # @param network_details [Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails]
          #   # @param network_identifiers [Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkIdentifiers]
          #   # @param network_risk_score [Integer, nil]
          #   # @param physical_card_id [String, nil]
          #   # @param presentment_amount [Integer]
          #   # @param presentment_currency [String]
          #   # @param processing_category [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::ProcessingCategory]
          #   # @param real_time_decision_id [String, nil]
          #   # @param real_time_decision_reason [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::RealTimeDecisionReason, nil]
          #   # @param reason [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::Reason]
          #   # @param terminal_id [String, nil]
          #   # @param verification [Increase::Models::DeclinedTransaction::Source::CardDecline::Verification]
          #   #
          #   def initialize(
          #     id:,
          #     actioner:,
          #     amount:,
          #     card_payment_id:,
          #     currency:,
          #     declined_transaction_id:,
          #     digital_wallet_token_id:,
          #     direction:,
          #     merchant_acceptor_id:,
          #     merchant_category_code:,
          #     merchant_city:,
          #     merchant_country:,
          #     merchant_descriptor:,
          #     merchant_postal_code:,
          #     merchant_state:,
          #     network_details:,
          #     network_identifiers:,
          #     network_risk_score:,
          #     physical_card_id:,
          #     presentment_amount:,
          #     presentment_currency:,
          #     processing_category:,
          #     real_time_decision_id:,
          #     real_time_decision_reason:,
          #     reason:,
          #     terminal_id:,
          #     verification:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/actioner
          #
          # @see Increase::Models::DeclinedTransaction::Source::CardDecline#actioner
          module Actioner
            extend Increase::Internal::Type::Enum

            # This object was actioned by the user through a real-time decision.
            USER = :user

            # This object was actioned by Increase without user intervention.
            INCREASE = :increase

            # This object was actioned by the network, through stand-in processing.
            NETWORK = :network

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/currency
          #
          # @see Increase::Models::DeclinedTransaction::Source::CardDecline#currency
          module Currency
            extend Increase::Internal::Type::Enum

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

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/direction
          #
          # @see Increase::Models::DeclinedTransaction::Source::CardDecline#direction
          module Direction
            extend Increase::Internal::Type::Enum

            # A regular card authorization where funds are debited from the cardholder.
            SETTLEMENT = :settlement

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND = :refund

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # @see Increase::Models::DeclinedTransaction::Source::CardDecline#network_details
          class NetworkDetails < Increase::Internal::Type::BaseModel
            # @!attribute category
            #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details/properties/category
            #
            #   @return [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Category]
            required :category,
                     enum: -> { Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Category }

            # @!attribute visa
            #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details/properties/visa
            #
            #   @return [Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa, nil]
            required :visa,
                     -> { Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa },
                     nil?: true

            # @!parse
            #   # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details
            #   #
            #   # @param category [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Category]
            #   # @param visa [Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa, nil]
            #   #
            #   def initialize(category:, visa:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details/properties/category
            #
            # @see Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails#category
            module Category
              extend Increase::Internal::Type::Enum

              # Visa
              VISA = :visa

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            # @see Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails#visa
            class Visa < Increase::Internal::Type::BaseModel
              # @!attribute electronic_commerce_indicator
              #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/electronic_commerce_indicator
              #
              #   @return [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator, nil]
              required :electronic_commerce_indicator,
                       enum: -> { Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator },
                       nil?: true

              # @!attribute point_of_service_entry_mode
              #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/point_of_service_entry_mode
              #
              #   @return [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode, nil]
              required :point_of_service_entry_mode,
                       enum: -> { Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode },
                       nil?: true

              # @!attribute stand_in_processing_reason
              #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/stand_in_processing_reason
              #
              #   @return [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::StandInProcessingReason, nil]
              required :stand_in_processing_reason,
                       enum: -> { Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::StandInProcessingReason },
                       nil?: true

              # @!parse
              #   # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details/properties/visa
              #   #
              #   # @param electronic_commerce_indicator [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator, nil]
              #   # @param point_of_service_entry_mode [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode, nil]
              #   # @param stand_in_processing_reason [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::StandInProcessingReason, nil]
              #   #
              #   def initialize(electronic_commerce_indicator:, point_of_service_entry_mode:, stand_in_processing_reason:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/electronic_commerce_indicator
              #
              # @see Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa#electronic_commerce_indicator
              module ElectronicCommerceIndicator
                extend Increase::Internal::Type::Enum

                # Single transaction of a mail/phone order: Use to indicate that the transaction is a mail/phone order purchase, not a recurring transaction or installment payment. For domestic transactions in the US region, this value may also indicate one bill payment transaction in the card-present or card-absent environments.
                MAIL_PHONE_ORDER = :mail_phone_order

                # Recurring transaction: Payment indicator used to indicate a recurring transaction that originates from an acquirer in the US region.
                RECURRING = :recurring

                # Installment payment: Payment indicator used to indicate one purchase of goods or services that is billed to the account in multiple charges over a period of time agreed upon by the cardholder and merchant from transactions that originate from an acquirer in the US region.
                INSTALLMENT = :installment

                # Unknown classification: other mail order: Use to indicate that the type of mail/telephone order is unknown.
                UNKNOWN_MAIL_PHONE_ORDER = :unknown_mail_phone_order

                # Secure electronic commerce transaction: Use to indicate that the electronic commerce transaction has been authenticated using e.g., 3-D Secure
                SECURE_ELECTRONIC_COMMERCE = :secure_electronic_commerce

                # Non-authenticated security transaction at a 3-D Secure-capable merchant, and merchant attempted to authenticate the cardholder using 3-D Secure: Use to identify an electronic commerce transaction where the merchant attempted to authenticate the cardholder using 3-D Secure, but was unable to complete the authentication because the issuer or cardholder does not participate in the 3-D Secure program.
                NON_AUTHENTICATED_SECURITY_TRANSACTION_AT_3DS_CAPABLE_MERCHANT =
                  :non_authenticated_security_transaction_at_3ds_capable_merchant

                # Non-authenticated security transaction: Use to identify an electronic commerce transaction that uses data encryption for security however , cardholder authentication is not performed using 3-D Secure.
                NON_AUTHENTICATED_SECURITY_TRANSACTION = :non_authenticated_security_transaction

                # Non-secure transaction: Use to identify an electronic commerce transaction that has no data protection.
                NON_SECURE_TRANSACTION = :non_secure_transaction

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/point_of_service_entry_mode
              #
              # @see Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa#point_of_service_entry_mode
              module PointOfServiceEntryMode
                extend Increase::Internal::Type::Enum

                # Unknown
                UNKNOWN = :unknown

                # Manual key entry
                MANUAL = :manual

                # Magnetic stripe read, without card verification value
                MAGNETIC_STRIPE_NO_CVV = :magnetic_stripe_no_cvv

                # Optical code
                OPTICAL_CODE = :optical_code

                # Contact chip card
                INTEGRATED_CIRCUIT_CARD = :integrated_circuit_card

                # Contactless read of chip card
                CONTACTLESS = :contactless

                # Transaction initiated using a credential that has previously been stored on file
                CREDENTIAL_ON_FILE = :credential_on_file

                # Magnetic stripe read
                MAGNETIC_STRIPE = :magnetic_stripe

                # Contactless read of magnetic stripe data
                CONTACTLESS_MAGNETIC_STRIPE = :contactless_magnetic_stripe

                # Contact chip card, without card verification value
                INTEGRATED_CIRCUIT_CARD_NO_CVV = :integrated_circuit_card_no_cvv

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end

              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/stand_in_processing_reason
              #
              # @see Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa#stand_in_processing_reason
              module StandInProcessingReason
                extend Increase::Internal::Type::Enum

                # Increase failed to process the authorization in a timely manner.
                ISSUER_ERROR = :issuer_error

                # The physical card read had an invalid CVV, dCVV, or authorization request cryptogram.
                INVALID_PHYSICAL_CARD = :invalid_physical_card

                # The 3DS cardholder authentication verification value was invalid.
                INVALID_CARDHOLDER_AUTHENTICATION_VERIFICATION_VALUE =
                  :invalid_cardholder_authentication_verification_value

                # An internal Visa error occurred. Visa uses this reason code for certain expected occurrences as well, such as Application Transaction Counter (ATC) replays.
                INTERNAL_VISA_ERROR = :internal_visa_error

                # The merchant has enabled Visa's Transaction Advisory Service and requires further authentication to perform the transaction. In practice this is often utilized at fuel pumps to tell the cardholder to see the cashier.
                MERCHANT_TRANSACTION_ADVISORY_SERVICE_AUTHENTICATION_REQUIRED =
                  :merchant_transaction_advisory_service_authentication_required

                # The transaction was blocked by Visa's Payment Fraud Disruption service due to fraudulent Acquirer behavior, such as card testing.
                PAYMENT_FRAUD_DISRUPTION_ACQUIRER_BLOCK = :payment_fraud_disruption_acquirer_block

                # An unspecific reason for stand-in processing.
                OTHER = :other

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          # @see Increase::Models::DeclinedTransaction::Source::CardDecline#network_identifiers
          class NetworkIdentifiers < Increase::Internal::Type::BaseModel
            # @!attribute retrieval_reference_number
            #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_identifiers/properties/retrieval_reference_number
            #
            #   @return [String, nil]
            required :retrieval_reference_number, String, nil?: true

            # @!attribute trace_number
            #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_identifiers/properties/trace_number
            #
            #   @return [String, nil]
            required :trace_number, String, nil?: true

            # @!attribute transaction_id
            #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_identifiers/properties/transaction_id
            #
            #   @return [String, nil]
            required :transaction_id, String, nil?: true

            # @!parse
            #   # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_identifiers
            #   #
            #   # @param retrieval_reference_number [String, nil]
            #   # @param trace_number [String, nil]
            #   # @param transaction_id [String, nil]
            #   #
            #   def initialize(retrieval_reference_number:, trace_number:, transaction_id:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
          end

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/processing_category
          #
          # @see Increase::Models::DeclinedTransaction::Source::CardDecline#processing_category
          module ProcessingCategory
            extend Increase::Internal::Type::Enum

            # Account funding transactions are transactions used to e.g., fund an account or transfer funds between accounts.
            ACCOUNT_FUNDING = :account_funding

            # Automatic fuel dispenser authorizations occur when a card is used at a gas pump, prior to the actual transaction amount being known. They are followed by an advice message that updates the amount of the pending transaction.
            AUTOMATIC_FUEL_DISPENSER = :automatic_fuel_dispenser

            # A transaction used to pay a bill.
            BILL_PAYMENT = :bill_payment

            # A regular purchase.
            PURCHASE = :purchase

            # Quasi-cash transactions represent purchases of items which may be convertible to cash.
            QUASI_CASH = :quasi_cash

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND = :refund

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/real_time_decision_reason
          #
          # @see Increase::Models::DeclinedTransaction::Source::CardDecline#real_time_decision_reason
          module RealTimeDecisionReason
            extend Increase::Internal::Type::Enum

            # The cardholder does not have sufficient funds to cover the transaction. The merchant may attempt to process the transaction again.
            INSUFFICIENT_FUNDS = :insufficient_funds

            # This type of transaction is not allowed for this card. This transaction should not be retried.
            TRANSACTION_NEVER_ALLOWED = :transaction_never_allowed

            # The transaction amount exceeds the cardholder's approval limit. The merchant may attempt to process the transaction again.
            EXCEEDS_APPROVAL_LIMIT = :exceeds_approval_limit

            # The card has been temporarily disabled or not yet activated. The merchant may attempt to process the transaction again.
            CARD_TEMPORARILY_DISABLED = :card_temporarily_disabled

            # The transaction is suspected to be fraudulent. The merchant may attempt to process the transaction again.
            SUSPECTED_FRAUD = :suspected_fraud

            # The transaction was declined for another reason. The merchant may attempt to process the transaction again. This should be used sparingly.
            OTHER = :other

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/reason
          #
          # @see Increase::Models::DeclinedTransaction::Source::CardDecline#reason
          module Reason
            extend Increase::Internal::Type::Enum

            # The account has been closed.
            ACCOUNT_CLOSED = :account_closed

            # The Card was not active.
            CARD_NOT_ACTIVE = :card_not_active

            # The Card has been canceled.
            CARD_CANCELED = :card_canceled

            # The Physical Card was not active.
            PHYSICAL_CARD_NOT_ACTIVE = :physical_card_not_active

            # The account's entity was not active.
            ENTITY_NOT_ACTIVE = :entity_not_active

            # The account was inactive.
            GROUP_LOCKED = :group_locked

            # The Card's Account did not have a sufficient available balance.
            INSUFFICIENT_FUNDS = :insufficient_funds

            # The given CVV2 did not match the card's value.
            CVV2_MISMATCH = :cvv2_mismatch

            # The given expiration date did not match the card's value. Only applies when a CVV2 is present.
            CARD_EXPIRATION_MISMATCH = :card_expiration_mismatch

            # The attempted card transaction is not allowed per Increase's terms.
            TRANSACTION_NOT_ALLOWED = :transaction_not_allowed

            # The transaction was blocked by a Limit.
            BREACHES_LIMIT = :breaches_limit

            # Your application declined the transaction via webhook.
            WEBHOOK_DECLINED = :webhook_declined

            # Your application webhook did not respond without the required timeout.
            WEBHOOK_TIMED_OUT = :webhook_timed_out

            # Declined by stand-in processing.
            DECLINED_BY_STAND_IN_PROCESSING = :declined_by_stand_in_processing

            # The card read had an invalid CVV, dCVV, or authorization request cryptogram.
            INVALID_PHYSICAL_CARD = :invalid_physical_card

            # The original card authorization for this incremental authorization does not exist.
            MISSING_ORIGINAL_AUTHORIZATION = :missing_original_authorization

            # The transaction was suspected to be fraudulent. Please reach out to support@increase.com for more information.
            SUSPECTED_FRAUD = :suspected_fraud

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # @see Increase::Models::DeclinedTransaction::Source::CardDecline#verification
          class Verification < Increase::Internal::Type::BaseModel
            # @!attribute card_verification_code
            #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/card_verification_code
            #
            #   @return [Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode]
            required :card_verification_code,
                     -> { Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode }

            # @!attribute cardholder_address
            #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address
            #
            #   @return [Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress]
            required :cardholder_address,
                     -> { Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress }

            # @!parse
            #   # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification
            #   #
            #   # @param card_verification_code [Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode]
            #   # @param cardholder_address [Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress]
            #   #
            #   def initialize(card_verification_code:, cardholder_address:, **) = super

            # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

            # @see Increase::Models::DeclinedTransaction::Source::CardDecline::Verification#card_verification_code
            class CardVerificationCode < Increase::Internal::Type::BaseModel
              # @!attribute result
              #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/card_verification_code/properties/result
              #
              #   @return [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode::Result]
              required :result,
                       enum: -> { Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode::Result }

              # @!parse
              #   # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/card_verification_code
              #   #
              #   # @param result [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode::Result]
              #   #
              #   def initialize(result:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/card_verification_code/properties/result
              #
              # @see Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode#result
              module Result
                extend Increase::Internal::Type::Enum

                # No card verification code was provided in the authorization request.
                NOT_CHECKED = :not_checked

                # The card verification code matched the one on file.
                MATCH = :match

                # The card verification code did not match the one on file.
                NO_MATCH = :no_match

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            # @see Increase::Models::DeclinedTransaction::Source::CardDecline::Verification#cardholder_address
            class CardholderAddress < Increase::Internal::Type::BaseModel
              # @!attribute actual_line1
              #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address/properties/actual_line1
              #
              #   @return [String, nil]
              required :actual_line1, String, nil?: true

              # @!attribute actual_postal_code
              #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address/properties/actual_postal_code
              #
              #   @return [String, nil]
              required :actual_postal_code, String, nil?: true

              # @!attribute provided_line1
              #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address/properties/provided_line1
              #
              #   @return [String, nil]
              required :provided_line1, String, nil?: true

              # @!attribute provided_postal_code
              #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address/properties/provided_postal_code
              #
              #   @return [String, nil]
              required :provided_postal_code, String, nil?: true

              # @!attribute result
              #   #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address/properties/result
              #
              #   @return [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress::Result]
              required :result,
                       enum: -> { Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress::Result }

              # @!parse
              #   # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address
              #   #
              #   # @param actual_line1 [String, nil]
              #   # @param actual_postal_code [String, nil]
              #   # @param provided_line1 [String, nil]
              #   # @param provided_postal_code [String, nil]
              #   # @param result [Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress::Result]
              #   #
              #   def initialize(actual_line1:, actual_postal_code:, provided_line1:, provided_postal_code:, result:, **) = super

              # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address/properties/result
              #
              # @see Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress#result
              module Result
                extend Increase::Internal::Type::Enum

                # No address was provided in the authorization request.
                NOT_CHECKED = :not_checked

                # Postal code matches, but the street address was not verified.
                POSTAL_CODE_MATCH_ADDRESS_NOT_CHECKED = :postal_code_match_address_not_checked

                # Postal code matches, but the street address does not match.
                POSTAL_CODE_MATCH_ADDRESS_NO_MATCH = :postal_code_match_address_no_match

                # Postal code does not match, but the street address matches.
                POSTAL_CODE_NO_MATCH_ADDRESS_MATCH = :postal_code_no_match_address_match

                # Postal code and street address match.
                MATCH = :match

                # Postal code and street address do not match.
                NO_MATCH = :no_match

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end
        end

        # #/components/schemas/declined_transaction/properties/source/properties/category
        #
        # @see Increase::Models::DeclinedTransaction::Source#category
        module Category
          extend Increase::Internal::Type::Enum

          # ACH Decline: details will be under the `ach_decline` object.
          ACH_DECLINE = :ach_decline

          # Card Decline: details will be under the `card_decline` object.
          CARD_DECLINE = :card_decline

          # Check Decline: details will be under the `check_decline` object.
          CHECK_DECLINE = :check_decline

          # Inbound Real-Time Payments Transfer Decline: details will be under the `inbound_real_time_payments_transfer_decline` object.
          INBOUND_REAL_TIME_PAYMENTS_TRANSFER_DECLINE = :inbound_real_time_payments_transfer_decline

          # Wire Decline: details will be under the `wire_decline` object.
          WIRE_DECLINE = :wire_decline

          # Check Deposit Rejection: details will be under the `check_deposit_rejection` object.
          CHECK_DEPOSIT_REJECTION = :check_deposit_rejection

          # The Declined Transaction was made for an undocumented or deprecated reason.
          OTHER = :other

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # @see Increase::Models::DeclinedTransaction::Source#check_decline
        class CheckDecline < Increase::Internal::Type::BaseModel
          # @!attribute amount
          #   #/components/schemas/declined_transaction/properties/source/properties/check_decline/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute auxiliary_on_us
          #   #/components/schemas/declined_transaction/properties/source/properties/check_decline/anyOf/0/properties/auxiliary_on_us
          #
          #   @return [String, nil]
          required :auxiliary_on_us, String, nil?: true

          # @!attribute back_image_file_id
          #   #/components/schemas/declined_transaction/properties/source/properties/check_decline/anyOf/0/properties/back_image_file_id
          #
          #   @return [String, nil]
          required :back_image_file_id, String, nil?: true

          # @!attribute check_transfer_id
          #   #/components/schemas/declined_transaction/properties/source/properties/check_decline/anyOf/0/properties/check_transfer_id
          #
          #   @return [String, nil]
          required :check_transfer_id, String, nil?: true

          # @!attribute front_image_file_id
          #   #/components/schemas/declined_transaction/properties/source/properties/check_decline/anyOf/0/properties/front_image_file_id
          #
          #   @return [String, nil]
          required :front_image_file_id, String, nil?: true

          # @!attribute inbound_check_deposit_id
          #   #/components/schemas/declined_transaction/properties/source/properties/check_decline/anyOf/0/properties/inbound_check_deposit_id
          #
          #   @return [String, nil]
          required :inbound_check_deposit_id, String, nil?: true

          # @!attribute reason
          #   #/components/schemas/declined_transaction/properties/source/properties/check_decline/anyOf/0/properties/reason
          #
          #   @return [Symbol, Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason]
          required :reason, enum: -> { Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason }

          # @!parse
          #   # #/components/schemas/declined_transaction/properties/source/properties/check_decline
          #   #
          #   # @param amount [Integer]
          #   # @param auxiliary_on_us [String, nil]
          #   # @param back_image_file_id [String, nil]
          #   # @param check_transfer_id [String, nil]
          #   # @param front_image_file_id [String, nil]
          #   # @param inbound_check_deposit_id [String, nil]
          #   # @param reason [Symbol, Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason]
          #   #
          #   def initialize(
          #     amount:,
          #     auxiliary_on_us:,
          #     back_image_file_id:,
          #     check_transfer_id:,
          #     front_image_file_id:,
          #     inbound_check_deposit_id:,
          #     reason:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/declined_transaction/properties/source/properties/check_decline/anyOf/0/properties/reason
          #
          # @see Increase::Models::DeclinedTransaction::Source::CheckDecline#reason
          module Reason
            extend Increase::Internal::Type::Enum

            # The account number is disabled.
            ACH_ROUTE_DISABLED = :ach_route_disabled

            # The account number is canceled.
            ACH_ROUTE_CANCELED = :ach_route_canceled

            # The deposited check was altered or fictitious.
            ALTERED_OR_FICTITIOUS = :altered_or_fictitious

            # The transaction would cause a limit to be exceeded.
            BREACHES_LIMIT = :breaches_limit

            # The check was not endorsed by the payee.
            ENDORSEMENT_IRREGULAR = :endorsement_irregular

            # The account's entity is not active.
            ENTITY_NOT_ACTIVE = :entity_not_active

            # Your account is inactive.
            GROUP_LOCKED = :group_locked

            # Your account contains insufficient funds.
            INSUFFICIENT_FUNDS = :insufficient_funds

            # Stop payment requested for this check.
            STOP_PAYMENT_REQUESTED = :stop_payment_requested

            # The check was a duplicate deposit.
            DUPLICATE_PRESENTMENT = :duplicate_presentment

            # The check was not authorized.
            NOT_AUTHORIZED = :not_authorized

            # The amount the receiving bank is attempting to deposit does not match the amount on the check.
            AMOUNT_MISMATCH = :amount_mismatch

            # The check attempting to be deposited does not belong to Increase.
            NOT_OUR_ITEM = :not_our_item

            # The account number on the check does not exist at Increase.
            NO_ACCOUNT_NUMBER_FOUND = :no_account_number_found

            # The check is not readable. Please refer to the image.
            REFER_TO_IMAGE = :refer_to_image

            # The check cannot be processed. This is rare: please contact support.
            UNABLE_TO_PROCESS = :unable_to_process

            # Your integration declined this check via the API.
            USER_INITIATED = :user_initiated

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::DeclinedTransaction::Source#check_deposit_rejection
        class CheckDepositRejection < Increase::Internal::Type::BaseModel
          # @!attribute amount
          #   #/components/schemas/declined_transaction/properties/source/properties/check_deposit_rejection/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute check_deposit_id
          #   #/components/schemas/declined_transaction/properties/source/properties/check_deposit_rejection/anyOf/0/properties/check_deposit_id
          #
          #   @return [String]
          required :check_deposit_id, String

          # @!attribute currency
          #   #/components/schemas/declined_transaction/properties/source/properties/check_deposit_rejection/anyOf/0/properties/currency
          #
          #   @return [Symbol, Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Currency]
          required :currency,
                   enum: -> { Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Currency }

          # @!attribute declined_transaction_id
          #   #/components/schemas/declined_transaction/properties/source/properties/check_deposit_rejection/anyOf/0/properties/declined_transaction_id
          #
          #   @return [String]
          required :declined_transaction_id, String

          # @!attribute reason
          #   #/components/schemas/declined_transaction/properties/source/properties/check_deposit_rejection/anyOf/0/properties/reason
          #
          #   @return [Symbol, Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason]
          required :reason,
                   enum: -> { Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason }

          # @!attribute rejected_at
          #   #/components/schemas/declined_transaction/properties/source/properties/check_deposit_rejection/anyOf/0/properties/rejected_at
          #
          #   @return [Time]
          required :rejected_at, Time

          # @!parse
          #   # #/components/schemas/declined_transaction/properties/source/properties/check_deposit_rejection
          #   #
          #   # @param amount [Integer]
          #   # @param check_deposit_id [String]
          #   # @param currency [Symbol, Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Currency]
          #   # @param declined_transaction_id [String]
          #   # @param reason [Symbol, Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason]
          #   # @param rejected_at [Time]
          #   #
          #   def initialize(amount:, check_deposit_id:, currency:, declined_transaction_id:, reason:, rejected_at:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/declined_transaction/properties/source/properties/check_deposit_rejection/anyOf/0/properties/currency
          #
          # @see Increase::Models::DeclinedTransaction::Source::CheckDepositRejection#currency
          module Currency
            extend Increase::Internal::Type::Enum

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

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/declined_transaction/properties/source/properties/check_deposit_rejection/anyOf/0/properties/reason
          #
          # @see Increase::Models::DeclinedTransaction::Source::CheckDepositRejection#reason
          module Reason
            extend Increase::Internal::Type::Enum

            # The check's image is incomplete.
            INCOMPLETE_IMAGE = :incomplete_image

            # This is a duplicate check submission.
            DUPLICATE = :duplicate

            # This check has poor image quality.
            POOR_IMAGE_QUALITY = :poor_image_quality

            # The check was deposited with the incorrect amount.
            INCORRECT_AMOUNT = :incorrect_amount

            # The check is made out to someone other than the account holder.
            INCORRECT_RECIPIENT = :incorrect_recipient

            # This check was not eligible for mobile deposit.
            NOT_ELIGIBLE_FOR_MOBILE_DEPOSIT = :not_eligible_for_mobile_deposit

            # This check is missing at least one required field.
            MISSING_REQUIRED_DATA_ELEMENTS = :missing_required_data_elements

            # This check is suspected to be fraudulent.
            SUSPECTED_FRAUD = :suspected_fraud

            # This check's deposit window has expired.
            DEPOSIT_WINDOW_EXPIRED = :deposit_window_expired

            # The check was rejected at the user's request.
            REQUESTED_BY_USER = :requested_by_user

            # The check was rejected for an unknown reason.
            UNKNOWN = :unknown

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::DeclinedTransaction::Source#inbound_real_time_payments_transfer_decline
        class InboundRealTimePaymentsTransferDecline < Increase::Internal::Type::BaseModel
          # @!attribute amount
          #   #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute creditor_name
          #   #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/creditor_name
          #
          #   @return [String]
          required :creditor_name, String

          # @!attribute currency
          #   #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/currency
          #
          #   @return [Symbol, Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Currency]
          required :currency,
                   enum: -> { Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Currency }

          # @!attribute debtor_account_number
          #   #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/debtor_account_number
          #
          #   @return [String]
          required :debtor_account_number, String

          # @!attribute debtor_name
          #   #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/debtor_name
          #
          #   @return [String]
          required :debtor_name, String

          # @!attribute debtor_routing_number
          #   #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/debtor_routing_number
          #
          #   @return [String]
          required :debtor_routing_number, String

          # @!attribute reason
          #   #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/reason
          #
          #   @return [Symbol, Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Reason]
          required :reason,
                   enum: -> { Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Reason }

          # @!attribute remittance_information
          #   #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/remittance_information
          #
          #   @return [String, nil]
          required :remittance_information, String, nil?: true

          # @!attribute transaction_identification
          #   #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/transaction_identification
          #
          #   @return [String]
          required :transaction_identification, String

          # @!attribute transfer_id
          #   #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/transfer_id
          #
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline
          #   #
          #   # @param amount [Integer]
          #   # @param creditor_name [String]
          #   # @param currency [Symbol, Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Currency]
          #   # @param debtor_account_number [String]
          #   # @param debtor_name [String]
          #   # @param debtor_routing_number [String]
          #   # @param reason [Symbol, Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Reason]
          #   # @param remittance_information [String, nil]
          #   # @param transaction_identification [String]
          #   # @param transfer_id [String]
          #   #
          #   def initialize(
          #     amount:,
          #     creditor_name:,
          #     currency:,
          #     debtor_account_number:,
          #     debtor_name:,
          #     debtor_routing_number:,
          #     reason:,
          #     remittance_information:,
          #     transaction_identification:,
          #     transfer_id:,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/currency
          #
          # @see Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline#currency
          module Currency
            extend Increase::Internal::Type::Enum

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

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end

          # #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/reason
          #
          # @see Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline#reason
          module Reason
            extend Increase::Internal::Type::Enum

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

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # @see Increase::Models::DeclinedTransaction::Source#wire_decline
        class WireDecline < Increase::Internal::Type::BaseModel
          # @!attribute inbound_wire_transfer_id
          #   #/components/schemas/declined_transaction/properties/source/properties/wire_decline/anyOf/0/properties/inbound_wire_transfer_id
          #
          #   @return [String]
          required :inbound_wire_transfer_id, String

          # @!attribute reason
          #   #/components/schemas/declined_transaction/properties/source/properties/wire_decline/anyOf/0/properties/reason
          #
          #   @return [Symbol, Increase::Models::DeclinedTransaction::Source::WireDecline::Reason]
          required :reason, enum: -> { Increase::Models::DeclinedTransaction::Source::WireDecline::Reason }

          # @!parse
          #   # #/components/schemas/declined_transaction/properties/source/properties/wire_decline
          #   #
          #   # @param inbound_wire_transfer_id [String]
          #   # @param reason [Symbol, Increase::Models::DeclinedTransaction::Source::WireDecline::Reason]
          #   #
          #   def initialize(inbound_wire_transfer_id:, reason:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/declined_transaction/properties/source/properties/wire_decline/anyOf/0/properties/reason
          #
          # @see Increase::Models::DeclinedTransaction::Source::WireDecline#reason
          module Reason
            extend Increase::Internal::Type::Enum

            # The account number is canceled.
            ACCOUNT_NUMBER_CANCELED = :account_number_canceled

            # The account number is disabled.
            ACCOUNT_NUMBER_DISABLED = :account_number_disabled

            # The account's entity is not active.
            ENTITY_NOT_ACTIVE = :entity_not_active

            # Your account is inactive.
            GROUP_LOCKED = :group_locked

            # The beneficiary account number does not exist.
            NO_ACCOUNT_NUMBER = :no_account_number

            # The transaction is not allowed per Increase's terms.
            TRANSACTION_NOT_ALLOWED = :transaction_not_allowed

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end
      end

      # #/components/schemas/declined_transaction/properties/type
      #
      # @see Increase::Models::DeclinedTransaction#type
      module Type
        extend Increase::Internal::Type::Enum

        DECLINED_TRANSACTION = :declined_transaction

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
