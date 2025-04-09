# typed: strong

module Increase
  module Models
    class DeclinedTransaction < Increase::Internal::Type::BaseModel
      # #/components/schemas/declined_transaction/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/declined_transaction/properties/account_id
      sig { returns(String) }
      attr_accessor :account_id

      # #/components/schemas/declined_transaction/properties/amount
      sig { returns(Integer) }
      attr_accessor :amount

      # #/components/schemas/declined_transaction/properties/created_at
      sig { returns(Time) }
      attr_accessor :created_at

      # #/components/schemas/declined_transaction/properties/currency
      sig { returns(Increase::Models::DeclinedTransaction::Currency::TaggedSymbol) }
      attr_accessor :currency

      # #/components/schemas/declined_transaction/properties/description
      sig { returns(String) }
      attr_accessor :description

      # #/components/schemas/declined_transaction/properties/route_id
      sig { returns(T.nilable(String)) }
      attr_accessor :route_id

      # #/components/schemas/declined_transaction/properties/route_type
      sig { returns(T.nilable(Increase::Models::DeclinedTransaction::RouteType::TaggedSymbol)) }
      attr_accessor :route_type

      # #/components/schemas/declined_transaction/properties/source
      sig { returns(Increase::Models::DeclinedTransaction::Source) }
      attr_reader :source

      sig { params(source: T.any(Increase::Models::DeclinedTransaction::Source, Increase::Internal::AnyHash)).void }
      attr_writer :source

      # #/components/schemas/declined_transaction/properties/type
      sig { returns(Increase::Models::DeclinedTransaction::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/declined_transaction
      sig do
        params(
          id: String,
          account_id: String,
          amount: Integer,
          created_at: Time,
          currency: Increase::Models::DeclinedTransaction::Currency::OrSymbol,
          description: String,
          route_id: T.nilable(String),
          route_type: T.nilable(Increase::Models::DeclinedTransaction::RouteType::OrSymbol),
          source: T.any(Increase::Models::DeclinedTransaction::Source, Increase::Internal::AnyHash),
          type: Increase::Models::DeclinedTransaction::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        account_id:,
        amount:,
        created_at:,
        currency:,
        description:,
        route_id:,
        route_type:,
        source:,
        type:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_id: String,
              amount: Integer,
              created_at: Time,
              currency: Increase::Models::DeclinedTransaction::Currency::TaggedSymbol,
              description: String,
              route_id: T.nilable(String),
              route_type: T.nilable(Increase::Models::DeclinedTransaction::RouteType::TaggedSymbol),
              source: Increase::Models::DeclinedTransaction::Source,
              type: Increase::Models::DeclinedTransaction::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      # #/components/schemas/declined_transaction/properties/currency
      module Currency
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::DeclinedTransaction::Currency) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::DeclinedTransaction::Currency::TaggedSymbol) }

        # Canadian Dollar (CAD)
        CAD = T.let(:CAD, Increase::Models::DeclinedTransaction::Currency::TaggedSymbol)

        # Swiss Franc (CHF)
        CHF = T.let(:CHF, Increase::Models::DeclinedTransaction::Currency::TaggedSymbol)

        # Euro (EUR)
        EUR = T.let(:EUR, Increase::Models::DeclinedTransaction::Currency::TaggedSymbol)

        # British Pound (GBP)
        GBP = T.let(:GBP, Increase::Models::DeclinedTransaction::Currency::TaggedSymbol)

        # Japanese Yen (JPY)
        JPY = T.let(:JPY, Increase::Models::DeclinedTransaction::Currency::TaggedSymbol)

        # US Dollar (USD)
        USD = T.let(:USD, Increase::Models::DeclinedTransaction::Currency::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::DeclinedTransaction::Currency::TaggedSymbol]) }
        def self.values; end
      end

      # #/components/schemas/declined_transaction/properties/route_type
      module RouteType
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::DeclinedTransaction::RouteType) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::DeclinedTransaction::RouteType::TaggedSymbol) }

        # An Account Number.
        ACCOUNT_NUMBER = T.let(:account_number, Increase::Models::DeclinedTransaction::RouteType::TaggedSymbol)

        # A Card.
        CARD = T.let(:card, Increase::Models::DeclinedTransaction::RouteType::TaggedSymbol)

        # A Lockbox.
        LOCKBOX = T.let(:lockbox, Increase::Models::DeclinedTransaction::RouteType::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::DeclinedTransaction::RouteType::TaggedSymbol]) }
        def self.values; end
      end

      class Source < Increase::Internal::Type::BaseModel
        # #/components/schemas/declined_transaction/properties/source/properties/ach_decline
        sig { returns(T.nilable(Increase::Models::DeclinedTransaction::Source::ACHDecline)) }
        attr_reader :ach_decline

        sig do
          params(
            ach_decline: T.nilable(T.any(Increase::Models::DeclinedTransaction::Source::ACHDecline, Increase::Internal::AnyHash))
          )
            .void
        end
        attr_writer :ach_decline

        # #/components/schemas/declined_transaction/properties/source/properties/card_decline
        sig { returns(T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline)) }
        attr_reader :card_decline

        sig do
          params(
            card_decline: T.nilable(T.any(Increase::Models::DeclinedTransaction::Source::CardDecline, Increase::Internal::AnyHash))
          )
            .void
        end
        attr_writer :card_decline

        # #/components/schemas/declined_transaction/properties/source/properties/category
        sig { returns(Increase::Models::DeclinedTransaction::Source::Category::TaggedSymbol) }
        attr_accessor :category

        # #/components/schemas/declined_transaction/properties/source/properties/check_decline
        sig { returns(T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDecline)) }
        attr_reader :check_decline

        sig do
          params(
            check_decline: T.nilable(T.any(Increase::Models::DeclinedTransaction::Source::CheckDecline, Increase::Internal::AnyHash))
          )
            .void
        end
        attr_writer :check_decline

        # #/components/schemas/declined_transaction/properties/source/properties/check_deposit_rejection
        sig { returns(T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDepositRejection)) }
        attr_reader :check_deposit_rejection

        sig do
          params(
            check_deposit_rejection: T.nilable(
              T.any(Increase::Models::DeclinedTransaction::Source::CheckDepositRejection, Increase::Internal::AnyHash)
            )
          )
            .void
        end
        attr_writer :check_deposit_rejection

        # #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline
        sig { returns(T.nilable(Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline)) }
        attr_reader :inbound_real_time_payments_transfer_decline

        sig do
          params(
            inbound_real_time_payments_transfer_decline: T.nilable(
              T.any(
                Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline,
                Increase::Internal::AnyHash
              )
            )
          )
            .void
        end
        attr_writer :inbound_real_time_payments_transfer_decline

        # #/components/schemas/declined_transaction/properties/source/properties/other
        sig { returns(T.nilable(T.anything)) }
        attr_accessor :other

        # #/components/schemas/declined_transaction/properties/source/properties/wire_decline
        sig { returns(T.nilable(Increase::Models::DeclinedTransaction::Source::WireDecline)) }
        attr_reader :wire_decline

        sig do
          params(
            wire_decline: T.nilable(T.any(Increase::Models::DeclinedTransaction::Source::WireDecline, Increase::Internal::AnyHash))
          )
            .void
        end
        attr_writer :wire_decline

        # #/components/schemas/declined_transaction/properties/source
        sig do
          params(
            ach_decline: T.nilable(T.any(Increase::Models::DeclinedTransaction::Source::ACHDecline, Increase::Internal::AnyHash)),
            card_decline: T.nilable(T.any(Increase::Models::DeclinedTransaction::Source::CardDecline, Increase::Internal::AnyHash)),
            category: Increase::Models::DeclinedTransaction::Source::Category::OrSymbol,
            check_decline: T.nilable(T.any(Increase::Models::DeclinedTransaction::Source::CheckDecline, Increase::Internal::AnyHash)),
            check_deposit_rejection: T.nilable(
              T.any(Increase::Models::DeclinedTransaction::Source::CheckDepositRejection, Increase::Internal::AnyHash)
            ),
            inbound_real_time_payments_transfer_decline: T.nilable(
              T.any(
                Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline,
                Increase::Internal::AnyHash
              )
            ),
            other: T.nilable(T.anything),
            wire_decline: T.nilable(T.any(Increase::Models::DeclinedTransaction::Source::WireDecline, Increase::Internal::AnyHash))
          )
            .returns(T.attached_class)
        end
        def self.new(
          ach_decline:,
          card_decline:,
          category:,
          check_decline:,
          check_deposit_rejection:,
          inbound_real_time_payments_transfer_decline:,
          other:,
          wire_decline:
        ); end
        sig do
          override
            .returns(
              {
                ach_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::ACHDecline),
                card_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline),
                category: Increase::Models::DeclinedTransaction::Source::Category::TaggedSymbol,
                check_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDecline),
                check_deposit_rejection: T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDepositRejection),
                inbound_real_time_payments_transfer_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline),
                other: T.nilable(T.anything),
                wire_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::WireDecline)
              }
            )
        end
        def to_hash; end

        class ACHDecline < Increase::Internal::Type::BaseModel
          # #/components/schemas/ach_decline/properties/id
          sig { returns(String) }
          attr_accessor :id

          # #/components/schemas/ach_decline/properties/amount
          sig { returns(Integer) }
          attr_accessor :amount

          # #/components/schemas/ach_decline/properties/inbound_ach_transfer_id
          sig { returns(String) }
          attr_accessor :inbound_ach_transfer_id

          # #/components/schemas/ach_decline/properties/originator_company_descriptive_date
          sig { returns(T.nilable(String)) }
          attr_accessor :originator_company_descriptive_date

          # #/components/schemas/ach_decline/properties/originator_company_discretionary_data
          sig { returns(T.nilable(String)) }
          attr_accessor :originator_company_discretionary_data

          # #/components/schemas/ach_decline/properties/originator_company_id
          sig { returns(String) }
          attr_accessor :originator_company_id

          # #/components/schemas/ach_decline/properties/originator_company_name
          sig { returns(String) }
          attr_accessor :originator_company_name

          # #/components/schemas/ach_decline/properties/reason
          sig { returns(Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::TaggedSymbol) }
          attr_accessor :reason

          # #/components/schemas/ach_decline/properties/receiver_id_number
          sig { returns(T.nilable(String)) }
          attr_accessor :receiver_id_number

          # #/components/schemas/ach_decline/properties/receiver_name
          sig { returns(T.nilable(String)) }
          attr_accessor :receiver_name

          # #/components/schemas/ach_decline/properties/trace_number
          sig { returns(String) }
          attr_accessor :trace_number

          # #/components/schemas/ach_decline/properties/type
          sig { returns(Increase::Models::DeclinedTransaction::Source::ACHDecline::Type::TaggedSymbol) }
          attr_accessor :type

          # #/components/schemas/declined_transaction/properties/source/properties/ach_decline
          sig do
            params(
              id: String,
              amount: Integer,
              inbound_ach_transfer_id: String,
              originator_company_descriptive_date: T.nilable(String),
              originator_company_discretionary_data: T.nilable(String),
              originator_company_id: String,
              originator_company_name: String,
              reason: Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::OrSymbol,
              receiver_id_number: T.nilable(String),
              receiver_name: T.nilable(String),
              trace_number: String,
              type: Increase::Models::DeclinedTransaction::Source::ACHDecline::Type::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            amount:,
            inbound_ach_transfer_id:,
            originator_company_descriptive_date:,
            originator_company_discretionary_data:,
            originator_company_id:,
            originator_company_name:,
            reason:,
            receiver_id_number:,
            receiver_name:,
            trace_number:,
            type:
          ); end
          sig do
            override
              .returns(
                {
                  id: String,
                  amount: Integer,
                  inbound_ach_transfer_id: String,
                  originator_company_descriptive_date: T.nilable(String),
                  originator_company_discretionary_data: T.nilable(String),
                  originator_company_id: String,
                  originator_company_name: String,
                  reason: Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::TaggedSymbol,
                  receiver_id_number: T.nilable(String),
                  receiver_name: T.nilable(String),
                  trace_number: String,
                  type: Increase::Models::DeclinedTransaction::Source::ACHDecline::Type::TaggedSymbol
                }
              )
          end
          def to_hash; end

          # #/components/schemas/ach_decline/properties/reason
          module Reason
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::TaggedSymbol) }

            # The account number is canceled.
            ACH_ROUTE_CANCELED =
              T.let(
                :ach_route_canceled,
                Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::TaggedSymbol
              )

            # The account number is disabled.
            ACH_ROUTE_DISABLED =
              T.let(
                :ach_route_disabled,
                Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::TaggedSymbol
              )

            # The transaction would cause an Increase limit to be exceeded.
            BREACHES_LIMIT =
              T.let(:breaches_limit, Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::TaggedSymbol)

            # The account's entity is not active.
            ENTITY_NOT_ACTIVE =
              T.let(:entity_not_active, Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::TaggedSymbol)

            # Your account is inactive.
            GROUP_LOCKED =
              T.let(:group_locked, Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::TaggedSymbol)

            # The transaction is not allowed per Increase's terms.
            TRANSACTION_NOT_ALLOWED =
              T.let(
                :transaction_not_allowed,
                Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::TaggedSymbol
              )

            # Your integration declined this transfer via the API.
            USER_INITIATED =
              T.let(:user_initiated, Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::TaggedSymbol)

            # Your account contains insufficient funds.
            INSUFFICIENT_FUNDS =
              T.let(
                :insufficient_funds,
                Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::TaggedSymbol
              )

            # The originating financial institution asked for this transfer to be returned. The receiving bank is complying with the request.
            RETURNED_PER_ODFI_REQUEST =
              T.let(
                :returned_per_odfi_request,
                Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::TaggedSymbol
              )

            # The customer no longer authorizes this transaction.
            AUTHORIZATION_REVOKED_BY_CUSTOMER =
              T.let(
                :authorization_revoked_by_customer,
                Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::TaggedSymbol
              )

            # The customer asked for the payment to be stopped.
            PAYMENT_STOPPED =
              T.let(:payment_stopped, Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::TaggedSymbol)

            # The customer advises that the debit was unauthorized.
            CUSTOMER_ADVISED_UNAUTHORIZED_IMPROPER_INELIGIBLE_OR_INCOMPLETE =
              T.let(
                :customer_advised_unauthorized_improper_ineligible_or_incomplete,
                Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::TaggedSymbol
              )

            # The payee is deceased.
            REPRESENTATIVE_PAYEE_DECEASED_OR_UNABLE_TO_CONTINUE_IN_THAT_CAPACITY =
              T.let(
                :representative_payee_deceased_or_unable_to_continue_in_that_capacity,
                Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::TaggedSymbol
              )

            # The account holder is deceased.
            BENEFICIARY_OR_ACCOUNT_HOLDER_DECEASED =
              T.let(
                :beneficiary_or_account_holder_deceased,
                Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::TaggedSymbol
              )

            # The customer refused a credit entry.
            CREDIT_ENTRY_REFUSED_BY_RECEIVER =
              T.let(
                :credit_entry_refused_by_receiver,
                Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::TaggedSymbol
              )

            # The account holder identified this transaction as a duplicate.
            DUPLICATE_ENTRY =
              T.let(:duplicate_entry, Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::TaggedSymbol)

            # The corporate customer no longer authorizes this transaction.
            CORPORATE_CUSTOMER_ADVISED_NOT_AUTHORIZED =
              T.let(
                :corporate_customer_advised_not_authorized,
                Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::TaggedSymbol
              )

            sig do
              override.returns(T::Array[Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason::TaggedSymbol])
            end
            def self.values; end
          end

          # #/components/schemas/ach_decline/properties/type
          module Type
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::DeclinedTransaction::Source::ACHDecline::Type) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, Increase::Models::DeclinedTransaction::Source::ACHDecline::Type::TaggedSymbol) }

            ACH_DECLINE =
              T.let(:ach_decline, Increase::Models::DeclinedTransaction::Source::ACHDecline::Type::TaggedSymbol)

            sig { override.returns(T::Array[Increase::Models::DeclinedTransaction::Source::ACHDecline::Type::TaggedSymbol]) }
            def self.values; end
          end
        end

        class CardDecline < Increase::Internal::Type::BaseModel
          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/id
          sig { returns(String) }
          attr_accessor :id

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/actioner
          sig { returns(Increase::Models::DeclinedTransaction::Source::CardDecline::Actioner::TaggedSymbol) }
          attr_accessor :actioner

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/amount
          sig { returns(Integer) }
          attr_accessor :amount

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/card_payment_id
          sig { returns(String) }
          attr_accessor :card_payment_id

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/currency
          sig { returns(Increase::Models::DeclinedTransaction::Source::CardDecline::Currency::TaggedSymbol) }
          attr_accessor :currency

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/declined_transaction_id
          sig { returns(String) }
          attr_accessor :declined_transaction_id

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/digital_wallet_token_id
          sig { returns(T.nilable(String)) }
          attr_accessor :digital_wallet_token_id

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/direction
          sig { returns(Increase::Models::DeclinedTransaction::Source::CardDecline::Direction::TaggedSymbol) }
          attr_accessor :direction

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/merchant_acceptor_id
          sig { returns(String) }
          attr_accessor :merchant_acceptor_id

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/merchant_category_code
          sig { returns(String) }
          attr_accessor :merchant_category_code

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/merchant_city
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_city

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/merchant_country
          sig { returns(String) }
          attr_accessor :merchant_country

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/merchant_descriptor
          sig { returns(String) }
          attr_accessor :merchant_descriptor

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/merchant_postal_code
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_postal_code

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/merchant_state
          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_state

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details
          sig { returns(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails) }
          attr_reader :network_details

          sig do
            params(
              network_details: T.any(
                Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails,
                Increase::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :network_details

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_identifiers
          sig { returns(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkIdentifiers) }
          attr_reader :network_identifiers

          sig do
            params(
              network_identifiers: T.any(
                Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkIdentifiers,
                Increase::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :network_identifiers

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_risk_score
          sig { returns(T.nilable(Integer)) }
          attr_accessor :network_risk_score

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/physical_card_id
          sig { returns(T.nilable(String)) }
          attr_accessor :physical_card_id

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/presentment_amount
          sig { returns(Integer) }
          attr_accessor :presentment_amount

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/presentment_currency
          sig { returns(String) }
          attr_accessor :presentment_currency

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/processing_category
          sig { returns(Increase::Models::DeclinedTransaction::Source::CardDecline::ProcessingCategory::TaggedSymbol) }
          attr_accessor :processing_category

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/real_time_decision_id
          sig { returns(T.nilable(String)) }
          attr_accessor :real_time_decision_id

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/real_time_decision_reason
          sig do
            returns(
              T.nilable(
                Increase::Models::DeclinedTransaction::Source::CardDecline::RealTimeDecisionReason::TaggedSymbol
              )
            )
          end
          attr_accessor :real_time_decision_reason

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/reason
          sig { returns(Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::TaggedSymbol) }
          attr_accessor :reason

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/terminal_id
          sig { returns(T.nilable(String)) }
          attr_accessor :terminal_id

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification
          sig { returns(Increase::Models::DeclinedTransaction::Source::CardDecline::Verification) }
          attr_reader :verification

          sig do
            params(
              verification: T.any(
                Increase::Models::DeclinedTransaction::Source::CardDecline::Verification,
                Increase::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :verification

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline
          sig do
            params(
              id: String,
              actioner: Increase::Models::DeclinedTransaction::Source::CardDecline::Actioner::OrSymbol,
              amount: Integer,
              card_payment_id: String,
              currency: Increase::Models::DeclinedTransaction::Source::CardDecline::Currency::OrSymbol,
              declined_transaction_id: String,
              digital_wallet_token_id: T.nilable(String),
              direction: Increase::Models::DeclinedTransaction::Source::CardDecline::Direction::OrSymbol,
              merchant_acceptor_id: String,
              merchant_category_code: String,
              merchant_city: T.nilable(String),
              merchant_country: String,
              merchant_descriptor: String,
              merchant_postal_code: T.nilable(String),
              merchant_state: T.nilable(String),
              network_details: T.any(
                Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails,
                Increase::Internal::AnyHash
              ),
              network_identifiers: T.any(
                Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkIdentifiers,
                Increase::Internal::AnyHash
              ),
              network_risk_score: T.nilable(Integer),
              physical_card_id: T.nilable(String),
              presentment_amount: Integer,
              presentment_currency: String,
              processing_category: Increase::Models::DeclinedTransaction::Source::CardDecline::ProcessingCategory::OrSymbol,
              real_time_decision_id: T.nilable(String),
              real_time_decision_reason: T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline::RealTimeDecisionReason::OrSymbol),
              reason: Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::OrSymbol,
              terminal_id: T.nilable(String),
              verification: T.any(
                Increase::Models::DeclinedTransaction::Source::CardDecline::Verification,
                Increase::Internal::AnyHash
              )
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            actioner:,
            amount:,
            card_payment_id:,
            currency:,
            declined_transaction_id:,
            digital_wallet_token_id:,
            direction:,
            merchant_acceptor_id:,
            merchant_category_code:,
            merchant_city:,
            merchant_country:,
            merchant_descriptor:,
            merchant_postal_code:,
            merchant_state:,
            network_details:,
            network_identifiers:,
            network_risk_score:,
            physical_card_id:,
            presentment_amount:,
            presentment_currency:,
            processing_category:,
            real_time_decision_id:,
            real_time_decision_reason:,
            reason:,
            terminal_id:,
            verification:
          ); end
          sig do
            override
              .returns(
                {
                  id: String,
                  actioner: Increase::Models::DeclinedTransaction::Source::CardDecline::Actioner::TaggedSymbol,
                  amount: Integer,
                  card_payment_id: String,
                  currency: Increase::Models::DeclinedTransaction::Source::CardDecline::Currency::TaggedSymbol,
                  declined_transaction_id: String,
                  digital_wallet_token_id: T.nilable(String),
                  direction: Increase::Models::DeclinedTransaction::Source::CardDecline::Direction::TaggedSymbol,
                  merchant_acceptor_id: String,
                  merchant_category_code: String,
                  merchant_city: T.nilable(String),
                  merchant_country: String,
                  merchant_descriptor: String,
                  merchant_postal_code: T.nilable(String),
                  merchant_state: T.nilable(String),
                  network_details: Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails,
                  network_identifiers: Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkIdentifiers,
                  network_risk_score: T.nilable(Integer),
                  physical_card_id: T.nilable(String),
                  presentment_amount: Integer,
                  presentment_currency: String,
                  processing_category: Increase::Models::DeclinedTransaction::Source::CardDecline::ProcessingCategory::TaggedSymbol,
                  real_time_decision_id: T.nilable(String),
                  real_time_decision_reason: T.nilable(
                    Increase::Models::DeclinedTransaction::Source::CardDecline::RealTimeDecisionReason::TaggedSymbol
                  ),
                  reason: Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::TaggedSymbol,
                  terminal_id: T.nilable(String),
                  verification: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification
                }
              )
          end
          def to_hash; end

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/actioner
          module Actioner
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::Actioner) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, Increase::Models::DeclinedTransaction::Source::CardDecline::Actioner::TaggedSymbol) }

            # This object was actioned by the user through a real-time decision.
            USER = T.let(:user, Increase::Models::DeclinedTransaction::Source::CardDecline::Actioner::TaggedSymbol)

            # This object was actioned by Increase without user intervention.
            INCREASE =
              T.let(:increase, Increase::Models::DeclinedTransaction::Source::CardDecline::Actioner::TaggedSymbol)

            # This object was actioned by the network, through stand-in processing.
            NETWORK =
              T.let(:network, Increase::Models::DeclinedTransaction::Source::CardDecline::Actioner::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Increase::Models::DeclinedTransaction::Source::CardDecline::Actioner::TaggedSymbol])
            end
            def self.values; end
          end

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/currency
          module Currency
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::Currency) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, Increase::Models::DeclinedTransaction::Source::CardDecline::Currency::TaggedSymbol) }

            # Canadian Dollar (CAD)
            CAD = T.let(:CAD, Increase::Models::DeclinedTransaction::Source::CardDecline::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF = T.let(:CHF, Increase::Models::DeclinedTransaction::Source::CardDecline::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR = T.let(:EUR, Increase::Models::DeclinedTransaction::Source::CardDecline::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP = T.let(:GBP, Increase::Models::DeclinedTransaction::Source::CardDecline::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY = T.let(:JPY, Increase::Models::DeclinedTransaction::Source::CardDecline::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD = T.let(:USD, Increase::Models::DeclinedTransaction::Source::CardDecline::Currency::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Increase::Models::DeclinedTransaction::Source::CardDecline::Currency::TaggedSymbol])
            end
            def self.values; end
          end

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/direction
          module Direction
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::Direction) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, Increase::Models::DeclinedTransaction::Source::CardDecline::Direction::TaggedSymbol) }

            # A regular card authorization where funds are debited from the cardholder.
            SETTLEMENT =
              T.let(:settlement, Increase::Models::DeclinedTransaction::Source::CardDecline::Direction::TaggedSymbol)

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND =
              T.let(:refund, Increase::Models::DeclinedTransaction::Source::CardDecline::Direction::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Increase::Models::DeclinedTransaction::Source::CardDecline::Direction::TaggedSymbol])
            end
            def self.values; end
          end

          class NetworkDetails < Increase::Internal::Type::BaseModel
            # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details/properties/category
            sig do
              returns(
                Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Category::TaggedSymbol
              )
            end
            attr_accessor :category

            # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details/properties/visa
            sig { returns(T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa)) }
            attr_reader :visa

            sig do
              params(
                visa: T.nilable(
                  T.any(
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa,
                    Increase::Internal::AnyHash
                  )
                )
              )
                .void
            end
            attr_writer :visa

            # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details
            sig do
              params(
                category: Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Category::OrSymbol,
                visa: T.nilable(
                  T.any(
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa,
                    Increase::Internal::AnyHash
                  )
                )
              )
                .returns(T.attached_class)
            end
            def self.new(category:, visa:); end

            sig do
              override
                .returns(
                  {
                    category: Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Category::TaggedSymbol,
                    visa: T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa)
                  }
                )
            end
            def to_hash; end

            # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details/properties/category
            module Category
              extend Increase::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias { T.all(Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Category) }
              OrSymbol =
                T.type_alias do
                  T.any(
                    Symbol,
                    String,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Category::TaggedSymbol
                  )
                end

              # Visa
              VISA =
                T.let(
                  :visa,
                  Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Category::TaggedSymbol
                )

              sig do
                override
                  .returns(
                    T::Array[Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Category::TaggedSymbol]
                  )
              end
              def self.values; end
            end

            class Visa < Increase::Internal::Type::BaseModel
              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/electronic_commerce_indicator
              sig do
                returns(
                  T.nilable(
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )
                )
              end
              attr_accessor :electronic_commerce_indicator

              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/point_of_service_entry_mode
              sig do
                returns(
                  T.nilable(
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )
                )
              end
              attr_accessor :point_of_service_entry_mode

              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/stand_in_processing_reason
              sig do
                returns(
                  T.nilable(
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )
                )
              end
              attr_accessor :stand_in_processing_reason

              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details/properties/visa
              sig do
                params(
                  electronic_commerce_indicator: T.nilable(
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::OrSymbol
                  ),
                  point_of_service_entry_mode: T.nilable(
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::OrSymbol
                  ),
                  stand_in_processing_reason: T.nilable(
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::StandInProcessingReason::OrSymbol
                  )
                )
                  .returns(T.attached_class)
              end
              def self.new(
                electronic_commerce_indicator:,
                point_of_service_entry_mode:,
                stand_in_processing_reason:
              )
              end

              sig do
                override
                  .returns(
                    {
                      electronic_commerce_indicator: T.nilable(
                        Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                      ),
                      point_of_service_entry_mode: T.nilable(
                        Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                      ),
                      stand_in_processing_reason: T.nilable(
                        Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                      )
                    }
                  )
              end
              def to_hash; end

              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/electronic_commerce_indicator
              module ElectronicCommerceIndicator
                extend Increase::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      String,
                      Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                    )
                  end

                # Single transaction of a mail/phone order: Use to indicate that the transaction is a mail/phone order purchase, not a recurring transaction or installment payment. For domestic transactions in the US region, this value may also indicate one bill payment transaction in the card-present or card-absent environments.
                MAIL_PHONE_ORDER =
                  T.let(
                    :mail_phone_order,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Recurring transaction: Payment indicator used to indicate a recurring transaction that originates from an acquirer in the US region.
                RECURRING =
                  T.let(
                    :recurring,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Installment payment: Payment indicator used to indicate one purchase of goods or services that is billed to the account in multiple charges over a period of time agreed upon by the cardholder and merchant from transactions that originate from an acquirer in the US region.
                INSTALLMENT =
                  T.let(
                    :installment,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Unknown classification: other mail order: Use to indicate that the type of mail/telephone order is unknown.
                UNKNOWN_MAIL_PHONE_ORDER =
                  T.let(
                    :unknown_mail_phone_order,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Secure electronic commerce transaction: Use to indicate that the electronic commerce transaction has been authenticated using e.g., 3-D Secure
                SECURE_ELECTRONIC_COMMERCE =
                  T.let(
                    :secure_electronic_commerce,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Non-authenticated security transaction at a 3-D Secure-capable merchant, and merchant attempted to authenticate the cardholder using 3-D Secure: Use to identify an electronic commerce transaction where the merchant attempted to authenticate the cardholder using 3-D Secure, but was unable to complete the authentication because the issuer or cardholder does not participate in the 3-D Secure program.
                NON_AUTHENTICATED_SECURITY_TRANSACTION_AT_3DS_CAPABLE_MERCHANT =
                  T.let(
                    :non_authenticated_security_transaction_at_3ds_capable_merchant,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Non-authenticated security transaction: Use to identify an electronic commerce transaction that uses data encryption for security however , cardholder authentication is not performed using 3-D Secure.
                NON_AUTHENTICATED_SECURITY_TRANSACTION =
                  T.let(
                    :non_authenticated_security_transaction,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                # Non-secure transaction: Use to identify an electronic commerce transaction that has no data protection.
                NON_SECURE_TRANSACTION =
                  T.let(
                    :non_secure_transaction,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end

              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/point_of_service_entry_mode
              module PointOfServiceEntryMode
                extend Increase::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      String,
                      Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                    )
                  end

                # Unknown
                UNKNOWN =
                  T.let(
                    :unknown,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Manual key entry
                MANUAL =
                  T.let(
                    :manual,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Magnetic stripe read, without card verification value
                MAGNETIC_STRIPE_NO_CVV =
                  T.let(
                    :magnetic_stripe_no_cvv,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Optical code
                OPTICAL_CODE =
                  T.let(
                    :optical_code,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Contact chip card
                INTEGRATED_CIRCUIT_CARD =
                  T.let(
                    :integrated_circuit_card,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Contactless read of chip card
                CONTACTLESS =
                  T.let(
                    :contactless,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Transaction initiated using a credential that has previously been stored on file
                CREDENTIAL_ON_FILE =
                  T.let(
                    :credential_on_file,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Magnetic stripe read
                MAGNETIC_STRIPE =
                  T.let(
                    :magnetic_stripe,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Contactless read of magnetic stripe data
                CONTACTLESS_MAGNETIC_STRIPE =
                  T.let(
                    :contactless_magnetic_stripe,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                # Contact chip card, without card verification value
                INTEGRATED_CIRCUIT_CARD_NO_CVV =
                  T.let(
                    :integrated_circuit_card_no_cvv,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end

              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_details/properties/visa/anyOf/0/properties/stand_in_processing_reason
              module StandInProcessingReason
                extend Increase::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::StandInProcessingReason)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      String,
                      Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                    )
                  end

                # Increase failed to process the authorization in a timely manner.
                ISSUER_ERROR =
                  T.let(
                    :issuer_error,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # The physical card read had an invalid CVV, dCVV, or authorization request cryptogram.
                INVALID_PHYSICAL_CARD =
                  T.let(
                    :invalid_physical_card,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # The 3DS cardholder authentication verification value was invalid.
                INVALID_CARDHOLDER_AUTHENTICATION_VERIFICATION_VALUE =
                  T.let(
                    :invalid_cardholder_authentication_verification_value,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # An internal Visa error occurred. Visa uses this reason code for certain expected occurrences as well, such as Application Transaction Counter (ATC) replays.
                INTERNAL_VISA_ERROR =
                  T.let(
                    :internal_visa_error,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # The merchant has enabled Visa's Transaction Advisory Service and requires further authentication to perform the transaction. In practice this is often utilized at fuel pumps to tell the cardholder to see the cashier.
                MERCHANT_TRANSACTION_ADVISORY_SERVICE_AUTHENTICATION_REQUIRED =
                  T.let(
                    :merchant_transaction_advisory_service_authentication_required,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # The transaction was blocked by Visa's Payment Fraud Disruption service due to fraudulent Acquirer behavior, such as card testing.
                PAYMENT_FRAUD_DISRUPTION_ACQUIRER_BLOCK =
                  T.let(
                    :payment_fraud_disruption_acquirer_block,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                # An unspecific reason for stand-in processing.
                OTHER =
                  T.let(
                    :other,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::StandInProcessingReason::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end

          class NetworkIdentifiers < Increase::Internal::Type::BaseModel
            # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_identifiers/properties/retrieval_reference_number
            sig { returns(T.nilable(String)) }
            attr_accessor :retrieval_reference_number

            # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_identifiers/properties/trace_number
            sig { returns(T.nilable(String)) }
            attr_accessor :trace_number

            # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_identifiers/properties/transaction_id
            sig { returns(T.nilable(String)) }
            attr_accessor :transaction_id

            # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/network_identifiers
            sig do
              params(
                retrieval_reference_number: T.nilable(String),
                trace_number: T.nilable(String),
                transaction_id: T.nilable(String)
              )
                .returns(T.attached_class)
            end
            def self.new(retrieval_reference_number:, trace_number:, transaction_id:); end

            sig do
              override
                .returns(
                  {
                    retrieval_reference_number: T.nilable(String),
                    trace_number: T.nilable(String),
                    transaction_id: T.nilable(String)
                  }
                )
            end
            def to_hash; end
          end

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/processing_category
          module ProcessingCategory
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::ProcessingCategory) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Increase::Models::DeclinedTransaction::Source::CardDecline::ProcessingCategory::TaggedSymbol
                )
              end

            # Account funding transactions are transactions used to e.g., fund an account or transfer funds between accounts.
            ACCOUNT_FUNDING =
              T.let(
                :account_funding,
                Increase::Models::DeclinedTransaction::Source::CardDecline::ProcessingCategory::TaggedSymbol
              )

            # Automatic fuel dispenser authorizations occur when a card is used at a gas pump, prior to the actual transaction amount being known. They are followed by an advice message that updates the amount of the pending transaction.
            AUTOMATIC_FUEL_DISPENSER =
              T.let(
                :automatic_fuel_dispenser,
                Increase::Models::DeclinedTransaction::Source::CardDecline::ProcessingCategory::TaggedSymbol
              )

            # A transaction used to pay a bill.
            BILL_PAYMENT =
              T.let(
                :bill_payment,
                Increase::Models::DeclinedTransaction::Source::CardDecline::ProcessingCategory::TaggedSymbol
              )

            # A regular purchase.
            PURCHASE =
              T.let(
                :purchase,
                Increase::Models::DeclinedTransaction::Source::CardDecline::ProcessingCategory::TaggedSymbol
              )

            # Quasi-cash transactions represent purchases of items which may be convertible to cash.
            QUASI_CASH =
              T.let(
                :quasi_cash,
                Increase::Models::DeclinedTransaction::Source::CardDecline::ProcessingCategory::TaggedSymbol
              )

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND =
              T.let(
                :refund,
                Increase::Models::DeclinedTransaction::Source::CardDecline::ProcessingCategory::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Increase::Models::DeclinedTransaction::Source::CardDecline::ProcessingCategory::TaggedSymbol]
                )
            end
            def self.values; end
          end

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/real_time_decision_reason
          module RealTimeDecisionReason
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::RealTimeDecisionReason) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Increase::Models::DeclinedTransaction::Source::CardDecline::RealTimeDecisionReason::TaggedSymbol
                )
              end

            # The cardholder does not have sufficient funds to cover the transaction. The merchant may attempt to process the transaction again.
            INSUFFICIENT_FUNDS =
              T.let(
                :insufficient_funds,
                Increase::Models::DeclinedTransaction::Source::CardDecline::RealTimeDecisionReason::TaggedSymbol
              )

            # This type of transaction is not allowed for this card. This transaction should not be retried.
            TRANSACTION_NEVER_ALLOWED =
              T.let(
                :transaction_never_allowed,
                Increase::Models::DeclinedTransaction::Source::CardDecline::RealTimeDecisionReason::TaggedSymbol
              )

            # The transaction amount exceeds the cardholder's approval limit. The merchant may attempt to process the transaction again.
            EXCEEDS_APPROVAL_LIMIT =
              T.let(
                :exceeds_approval_limit,
                Increase::Models::DeclinedTransaction::Source::CardDecline::RealTimeDecisionReason::TaggedSymbol
              )

            # The card has been temporarily disabled or not yet activated. The merchant may attempt to process the transaction again.
            CARD_TEMPORARILY_DISABLED =
              T.let(
                :card_temporarily_disabled,
                Increase::Models::DeclinedTransaction::Source::CardDecline::RealTimeDecisionReason::TaggedSymbol
              )

            # The transaction is suspected to be fraudulent. The merchant may attempt to process the transaction again.
            SUSPECTED_FRAUD =
              T.let(
                :suspected_fraud,
                Increase::Models::DeclinedTransaction::Source::CardDecline::RealTimeDecisionReason::TaggedSymbol
              )

            # The transaction was declined for another reason. The merchant may attempt to process the transaction again. This should be used sparingly.
            OTHER =
              T.let(
                :other,
                Increase::Models::DeclinedTransaction::Source::CardDecline::RealTimeDecisionReason::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Increase::Models::DeclinedTransaction::Source::CardDecline::RealTimeDecisionReason::TaggedSymbol]
                )
            end
            def self.values; end
          end

          # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/reason
          module Reason
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::Reason) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::TaggedSymbol) }

            # The account has been closed.
            ACCOUNT_CLOSED =
              T.let(:account_closed, Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::TaggedSymbol)

            # The Card was not active.
            CARD_NOT_ACTIVE =
              T.let(:card_not_active, Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::TaggedSymbol)

            # The Card has been canceled.
            CARD_CANCELED =
              T.let(:card_canceled, Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::TaggedSymbol)

            # The Physical Card was not active.
            PHYSICAL_CARD_NOT_ACTIVE =
              T.let(
                :physical_card_not_active,
                Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::TaggedSymbol
              )

            # The account's entity was not active.
            ENTITY_NOT_ACTIVE =
              T.let(
                :entity_not_active,
                Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::TaggedSymbol
              )

            # The account was inactive.
            GROUP_LOCKED =
              T.let(:group_locked, Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::TaggedSymbol)

            # The Card's Account did not have a sufficient available balance.
            INSUFFICIENT_FUNDS =
              T.let(
                :insufficient_funds,
                Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::TaggedSymbol
              )

            # The given CVV2 did not match the card's value.
            CVV2_MISMATCH =
              T.let(:cvv2_mismatch, Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::TaggedSymbol)

            # The given expiration date did not match the card's value. Only applies when a CVV2 is present.
            CARD_EXPIRATION_MISMATCH =
              T.let(
                :card_expiration_mismatch,
                Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::TaggedSymbol
              )

            # The attempted card transaction is not allowed per Increase's terms.
            TRANSACTION_NOT_ALLOWED =
              T.let(
                :transaction_not_allowed,
                Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::TaggedSymbol
              )

            # The transaction was blocked by a Limit.
            BREACHES_LIMIT =
              T.let(:breaches_limit, Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::TaggedSymbol)

            # Your application declined the transaction via webhook.
            WEBHOOK_DECLINED =
              T.let(:webhook_declined, Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::TaggedSymbol)

            # Your application webhook did not respond without the required timeout.
            WEBHOOK_TIMED_OUT =
              T.let(
                :webhook_timed_out,
                Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::TaggedSymbol
              )

            # Declined by stand-in processing.
            DECLINED_BY_STAND_IN_PROCESSING =
              T.let(
                :declined_by_stand_in_processing,
                Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::TaggedSymbol
              )

            # The card read had an invalid CVV, dCVV, or authorization request cryptogram.
            INVALID_PHYSICAL_CARD =
              T.let(
                :invalid_physical_card,
                Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::TaggedSymbol
              )

            # The original card authorization for this incremental authorization does not exist.
            MISSING_ORIGINAL_AUTHORIZATION =
              T.let(
                :missing_original_authorization,
                Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::TaggedSymbol
              )

            # The transaction was suspected to be fraudulent. Please reach out to support@increase.com for more information.
            SUSPECTED_FRAUD =
              T.let(:suspected_fraud, Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Increase::Models::DeclinedTransaction::Source::CardDecline::Reason::TaggedSymbol])
            end
            def self.values; end
          end

          class Verification < Increase::Internal::Type::BaseModel
            # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/card_verification_code
            sig { returns(Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode) }
            attr_reader :card_verification_code

            sig do
              params(
                card_verification_code: T.any(
                  Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode,
                  Increase::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :card_verification_code

            # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address
            sig { returns(Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress) }
            attr_reader :cardholder_address

            sig do
              params(
                cardholder_address: T.any(
                  Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress,
                  Increase::Internal::AnyHash
                )
              )
                .void
            end
            attr_writer :cardholder_address

            # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification
            sig do
              params(
                card_verification_code: T.any(
                  Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode,
                  Increase::Internal::AnyHash
                ),
                cardholder_address: T.any(
                  Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress,
                  Increase::Internal::AnyHash
                )
              )
                .returns(T.attached_class)
            end
            def self.new(card_verification_code:, cardholder_address:); end

            sig do
              override
                .returns(
                  {
                    card_verification_code: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode,
                    cardholder_address: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress
                  }
                )
            end
            def to_hash; end

            class CardVerificationCode < Increase::Internal::Type::BaseModel
              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/card_verification_code/properties/result
              sig do
                returns(
                  Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode::Result::TaggedSymbol
                )
              end
              attr_accessor :result

              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/card_verification_code
              sig do
                params(
                  result: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode::Result::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(result:); end

              sig do
                override
                  .returns(
                    {
                      result: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode::Result::TaggedSymbol
                    }
                  )
              end
              def to_hash; end

              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/card_verification_code/properties/result
              module Result
                extend Increase::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode::Result)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      String,
                      Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode::Result::TaggedSymbol
                    )
                  end

                # No card verification code was provided in the authorization request.
                NOT_CHECKED =
                  T.let(
                    :not_checked,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode::Result::TaggedSymbol
                  )

                # The card verification code matched the one on file.
                MATCH =
                  T.let(
                    :match,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode::Result::TaggedSymbol
                  )

                # The card verification code did not match the one on file.
                NO_MATCH =
                  T.let(
                    :no_match,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode::Result::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode::Result::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end

            class CardholderAddress < Increase::Internal::Type::BaseModel
              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address/properties/actual_line1
              sig { returns(T.nilable(String)) }
              attr_accessor :actual_line1

              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address/properties/actual_postal_code
              sig { returns(T.nilable(String)) }
              attr_accessor :actual_postal_code

              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address/properties/provided_line1
              sig { returns(T.nilable(String)) }
              attr_accessor :provided_line1

              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address/properties/provided_postal_code
              sig { returns(T.nilable(String)) }
              attr_accessor :provided_postal_code

              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address/properties/result
              sig do
                returns(
                  Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress::Result::TaggedSymbol
                )
              end
              attr_accessor :result

              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address
              sig do
                params(
                  actual_line1: T.nilable(String),
                  actual_postal_code: T.nilable(String),
                  provided_line1: T.nilable(String),
                  provided_postal_code: T.nilable(String),
                  result: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress::Result::OrSymbol
                )
                  .returns(T.attached_class)
              end
              def self.new(
                actual_line1:,
                actual_postal_code:,
                provided_line1:,
                provided_postal_code:,
                result:
              )
              end

              sig do
                override
                  .returns(
                    {
                      actual_line1: T.nilable(String),
                      actual_postal_code: T.nilable(String),
                      provided_line1: T.nilable(String),
                      provided_postal_code: T.nilable(String),
                      result: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress::Result::TaggedSymbol
                    }
                  )
              end
              def to_hash; end

              # #/components/schemas/declined_transaction/properties/source/properties/card_decline/anyOf/0/properties/verification/properties/cardholder_address/properties/result
              module Result
                extend Increase::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(Symbol, Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress::Result)
                  end
                OrSymbol =
                  T.type_alias do
                    T.any(
                      Symbol,
                      String,
                      Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress::Result::TaggedSymbol
                    )
                  end

                # No address was provided in the authorization request.
                NOT_CHECKED =
                  T.let(
                    :not_checked,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code matches, but the street address was not verified.
                POSTAL_CODE_MATCH_ADDRESS_NOT_CHECKED =
                  T.let(
                    :postal_code_match_address_not_checked,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code matches, but the street address does not match.
                POSTAL_CODE_MATCH_ADDRESS_NO_MATCH =
                  T.let(
                    :postal_code_match_address_no_match,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code does not match, but the street address matches.
                POSTAL_CODE_NO_MATCH_ADDRESS_MATCH =
                  T.let(
                    :postal_code_no_match_address_match,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code and street address match.
                MATCH =
                  T.let(
                    :match,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                # Postal code and street address do not match.
                NO_MATCH =
                  T.let(
                    :no_match,
                    Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress::Result::TaggedSymbol
                  )

                sig do
                  override
                    .returns(
                      T::Array[
                        Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress::Result::TaggedSymbol
                      ]
                    )
                end
                def self.values; end
              end
            end
          end
        end

        # #/components/schemas/declined_transaction/properties/source/properties/category
        module Category
          extend Increase::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::DeclinedTransaction::Source::Category) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::DeclinedTransaction::Source::Category::TaggedSymbol) }

          # ACH Decline: details will be under the `ach_decline` object.
          ACH_DECLINE = T.let(:ach_decline, Increase::Models::DeclinedTransaction::Source::Category::TaggedSymbol)

          # Card Decline: details will be under the `card_decline` object.
          CARD_DECLINE =
            T.let(:card_decline, Increase::Models::DeclinedTransaction::Source::Category::TaggedSymbol)

          # Check Decline: details will be under the `check_decline` object.
          CHECK_DECLINE =
            T.let(:check_decline, Increase::Models::DeclinedTransaction::Source::Category::TaggedSymbol)

          # Inbound Real-Time Payments Transfer Decline: details will be under the `inbound_real_time_payments_transfer_decline` object.
          INBOUND_REAL_TIME_PAYMENTS_TRANSFER_DECLINE =
            T.let(
              :inbound_real_time_payments_transfer_decline,
              Increase::Models::DeclinedTransaction::Source::Category::TaggedSymbol
            )

          # Wire Decline: details will be under the `wire_decline` object.
          WIRE_DECLINE =
            T.let(:wire_decline, Increase::Models::DeclinedTransaction::Source::Category::TaggedSymbol)

          # Check Deposit Rejection: details will be under the `check_deposit_rejection` object.
          CHECK_DEPOSIT_REJECTION =
            T.let(:check_deposit_rejection, Increase::Models::DeclinedTransaction::Source::Category::TaggedSymbol)

          # The Declined Transaction was made for an undocumented or deprecated reason.
          OTHER = T.let(:other, Increase::Models::DeclinedTransaction::Source::Category::TaggedSymbol)

          sig { override.returns(T::Array[Increase::Models::DeclinedTransaction::Source::Category::TaggedSymbol]) }
          def self.values; end
        end

        class CheckDecline < Increase::Internal::Type::BaseModel
          # #/components/schemas/declined_transaction/properties/source/properties/check_decline/anyOf/0/properties/amount
          sig { returns(Integer) }
          attr_accessor :amount

          # #/components/schemas/declined_transaction/properties/source/properties/check_decline/anyOf/0/properties/auxiliary_on_us
          sig { returns(T.nilable(String)) }
          attr_accessor :auxiliary_on_us

          # #/components/schemas/declined_transaction/properties/source/properties/check_decline/anyOf/0/properties/back_image_file_id
          sig { returns(T.nilable(String)) }
          attr_accessor :back_image_file_id

          # #/components/schemas/declined_transaction/properties/source/properties/check_decline/anyOf/0/properties/check_transfer_id
          sig { returns(T.nilable(String)) }
          attr_accessor :check_transfer_id

          # #/components/schemas/declined_transaction/properties/source/properties/check_decline/anyOf/0/properties/front_image_file_id
          sig { returns(T.nilable(String)) }
          attr_accessor :front_image_file_id

          # #/components/schemas/declined_transaction/properties/source/properties/check_decline/anyOf/0/properties/inbound_check_deposit_id
          sig { returns(T.nilable(String)) }
          attr_accessor :inbound_check_deposit_id

          # #/components/schemas/declined_transaction/properties/source/properties/check_decline/anyOf/0/properties/reason
          sig { returns(Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::TaggedSymbol) }
          attr_accessor :reason

          # #/components/schemas/declined_transaction/properties/source/properties/check_decline
          sig do
            params(
              amount: Integer,
              auxiliary_on_us: T.nilable(String),
              back_image_file_id: T.nilable(String),
              check_transfer_id: T.nilable(String),
              front_image_file_id: T.nilable(String),
              inbound_check_deposit_id: T.nilable(String),
              reason: Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            amount:,
            auxiliary_on_us:,
            back_image_file_id:,
            check_transfer_id:,
            front_image_file_id:,
            inbound_check_deposit_id:,
            reason:
          ); end
          sig do
            override
              .returns(
                {
                  amount: Integer,
                  auxiliary_on_us: T.nilable(String),
                  back_image_file_id: T.nilable(String),
                  check_transfer_id: T.nilable(String),
                  front_image_file_id: T.nilable(String),
                  inbound_check_deposit_id: T.nilable(String),
                  reason: Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::TaggedSymbol
                }
              )
          end
          def to_hash; end

          # #/components/schemas/declined_transaction/properties/source/properties/check_decline/anyOf/0/properties/reason
          module Reason
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::TaggedSymbol) }

            # The account number is disabled.
            ACH_ROUTE_DISABLED =
              T.let(
                :ach_route_disabled,
                Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::TaggedSymbol
              )

            # The account number is canceled.
            ACH_ROUTE_CANCELED =
              T.let(
                :ach_route_canceled,
                Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::TaggedSymbol
              )

            # The deposited check was altered or fictitious.
            ALTERED_OR_FICTITIOUS =
              T.let(
                :altered_or_fictitious,
                Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::TaggedSymbol
              )

            # The transaction would cause a limit to be exceeded.
            BREACHES_LIMIT =
              T.let(:breaches_limit, Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::TaggedSymbol)

            # The check was not endorsed by the payee.
            ENDORSEMENT_IRREGULAR =
              T.let(
                :endorsement_irregular,
                Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::TaggedSymbol
              )

            # The account's entity is not active.
            ENTITY_NOT_ACTIVE =
              T.let(
                :entity_not_active,
                Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::TaggedSymbol
              )

            # Your account is inactive.
            GROUP_LOCKED =
              T.let(:group_locked, Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::TaggedSymbol)

            # Your account contains insufficient funds.
            INSUFFICIENT_FUNDS =
              T.let(
                :insufficient_funds,
                Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::TaggedSymbol
              )

            # Stop payment requested for this check.
            STOP_PAYMENT_REQUESTED =
              T.let(
                :stop_payment_requested,
                Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::TaggedSymbol
              )

            # The check was a duplicate deposit.
            DUPLICATE_PRESENTMENT =
              T.let(
                :duplicate_presentment,
                Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::TaggedSymbol
              )

            # The check was not authorized.
            NOT_AUTHORIZED =
              T.let(:not_authorized, Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::TaggedSymbol)

            # The amount the receiving bank is attempting to deposit does not match the amount on the check.
            AMOUNT_MISMATCH =
              T.let(:amount_mismatch, Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::TaggedSymbol)

            # The check attempting to be deposited does not belong to Increase.
            NOT_OUR_ITEM =
              T.let(:not_our_item, Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::TaggedSymbol)

            # The account number on the check does not exist at Increase.
            NO_ACCOUNT_NUMBER_FOUND =
              T.let(
                :no_account_number_found,
                Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::TaggedSymbol
              )

            # The check is not readable. Please refer to the image.
            REFER_TO_IMAGE =
              T.let(:refer_to_image, Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::TaggedSymbol)

            # The check cannot be processed. This is rare: please contact support.
            UNABLE_TO_PROCESS =
              T.let(
                :unable_to_process,
                Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::TaggedSymbol
              )

            # Your integration declined this check via the API.
            USER_INITIATED =
              T.let(:user_initiated, Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason::TaggedSymbol])
            end
            def self.values; end
          end
        end

        class CheckDepositRejection < Increase::Internal::Type::BaseModel
          # #/components/schemas/declined_transaction/properties/source/properties/check_deposit_rejection/anyOf/0/properties/amount
          sig { returns(Integer) }
          attr_accessor :amount

          # #/components/schemas/declined_transaction/properties/source/properties/check_deposit_rejection/anyOf/0/properties/check_deposit_id
          sig { returns(String) }
          attr_accessor :check_deposit_id

          # #/components/schemas/declined_transaction/properties/source/properties/check_deposit_rejection/anyOf/0/properties/currency
          sig { returns(Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Currency::TaggedSymbol) }
          attr_accessor :currency

          # #/components/schemas/declined_transaction/properties/source/properties/check_deposit_rejection/anyOf/0/properties/declined_transaction_id
          sig { returns(String) }
          attr_accessor :declined_transaction_id

          # #/components/schemas/declined_transaction/properties/source/properties/check_deposit_rejection/anyOf/0/properties/reason
          sig { returns(Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason::TaggedSymbol) }
          attr_accessor :reason

          # #/components/schemas/declined_transaction/properties/source/properties/check_deposit_rejection/anyOf/0/properties/rejected_at
          sig { returns(Time) }
          attr_accessor :rejected_at

          # #/components/schemas/declined_transaction/properties/source/properties/check_deposit_rejection
          sig do
            params(
              amount: Integer,
              check_deposit_id: String,
              currency: Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Currency::OrSymbol,
              declined_transaction_id: String,
              reason: Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason::OrSymbol,
              rejected_at: Time
            )
              .returns(T.attached_class)
          end
          def self.new(
            amount:,
            check_deposit_id:,
            currency:,
            declined_transaction_id:,
            reason:,
            rejected_at:
          )
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  check_deposit_id: String,
                  currency: Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Currency::TaggedSymbol,
                  declined_transaction_id: String,
                  reason: Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason::TaggedSymbol,
                  rejected_at: Time
                }
              )
          end
          def to_hash; end

          # #/components/schemas/declined_transaction/properties/source/properties/check_deposit_rejection/anyOf/0/properties/currency
          module Currency
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Currency) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Currency::TaggedSymbol
                )
              end

            # Canadian Dollar (CAD)
            CAD =
              T.let(:CAD, Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Currency::TaggedSymbol)

            # Swiss Franc (CHF)
            CHF =
              T.let(:CHF, Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Currency::TaggedSymbol)

            # Euro (EUR)
            EUR =
              T.let(:EUR, Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Currency::TaggedSymbol)

            # British Pound (GBP)
            GBP =
              T.let(:GBP, Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Currency::TaggedSymbol)

            # Japanese Yen (JPY)
            JPY =
              T.let(:JPY, Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Currency::TaggedSymbol)

            # US Dollar (USD)
            USD =
              T.let(:USD, Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Currency::TaggedSymbol)

            sig do
              override
                .returns(
                  T::Array[Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Currency::TaggedSymbol]
                )
            end
            def self.values; end
          end

          # #/components/schemas/declined_transaction/properties/source/properties/check_deposit_rejection/anyOf/0/properties/reason
          module Reason
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason::TaggedSymbol
                )
              end

            # The check's image is incomplete.
            INCOMPLETE_IMAGE =
              T.let(
                :incomplete_image,
                Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason::TaggedSymbol
              )

            # This is a duplicate check submission.
            DUPLICATE =
              T.let(
                :duplicate,
                Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason::TaggedSymbol
              )

            # This check has poor image quality.
            POOR_IMAGE_QUALITY =
              T.let(
                :poor_image_quality,
                Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason::TaggedSymbol
              )

            # The check was deposited with the incorrect amount.
            INCORRECT_AMOUNT =
              T.let(
                :incorrect_amount,
                Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason::TaggedSymbol
              )

            # The check is made out to someone other than the account holder.
            INCORRECT_RECIPIENT =
              T.let(
                :incorrect_recipient,
                Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason::TaggedSymbol
              )

            # This check was not eligible for mobile deposit.
            NOT_ELIGIBLE_FOR_MOBILE_DEPOSIT =
              T.let(
                :not_eligible_for_mobile_deposit,
                Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason::TaggedSymbol
              )

            # This check is missing at least one required field.
            MISSING_REQUIRED_DATA_ELEMENTS =
              T.let(
                :missing_required_data_elements,
                Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason::TaggedSymbol
              )

            # This check is suspected to be fraudulent.
            SUSPECTED_FRAUD =
              T.let(
                :suspected_fraud,
                Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason::TaggedSymbol
              )

            # This check's deposit window has expired.
            DEPOSIT_WINDOW_EXPIRED =
              T.let(
                :deposit_window_expired,
                Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason::TaggedSymbol
              )

            # The check was rejected at the user's request.
            REQUESTED_BY_USER =
              T.let(
                :requested_by_user,
                Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason::TaggedSymbol
              )

            # The check was rejected for an unknown reason.
            UNKNOWN =
              T.let(
                :unknown,
                Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason::TaggedSymbol]
                )
            end
            def self.values; end
          end
        end

        class InboundRealTimePaymentsTransferDecline < Increase::Internal::Type::BaseModel
          # #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/amount
          sig { returns(Integer) }
          attr_accessor :amount

          # #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/creditor_name
          sig { returns(String) }
          attr_accessor :creditor_name

          # #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/currency
          sig do
            returns(
              Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol
            )
          end
          attr_accessor :currency

          # #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/debtor_account_number
          sig { returns(String) }
          attr_accessor :debtor_account_number

          # #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/debtor_name
          sig { returns(String) }
          attr_accessor :debtor_name

          # #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/debtor_routing_number
          sig { returns(String) }
          attr_accessor :debtor_routing_number

          # #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/reason
          sig do
            returns(
              Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol
            )
          end
          attr_accessor :reason

          # #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/remittance_information
          sig { returns(T.nilable(String)) }
          attr_accessor :remittance_information

          # #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/transaction_identification
          sig { returns(String) }
          attr_accessor :transaction_identification

          # #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/transfer_id
          sig { returns(String) }
          attr_accessor :transfer_id

          # #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline
          sig do
            params(
              amount: Integer,
              creditor_name: String,
              currency: Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Currency::OrSymbol,
              debtor_account_number: String,
              debtor_name: String,
              debtor_routing_number: String,
              reason: Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Reason::OrSymbol,
              remittance_information: T.nilable(String),
              transaction_identification: String,
              transfer_id: String
            )
              .returns(T.attached_class)
          end
          def self.new(
            amount:,
            creditor_name:,
            currency:,
            debtor_account_number:,
            debtor_name:,
            debtor_routing_number:,
            reason:,
            remittance_information:,
            transaction_identification:,
            transfer_id:
          ); end
          sig do
            override
              .returns(
                {
                  amount: Integer,
                  creditor_name: String,
                  currency: Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol,
                  debtor_account_number: String,
                  debtor_name: String,
                  debtor_routing_number: String,
                  reason: Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol,
                  remittance_information: T.nilable(String),
                  transaction_identification: String,
                  transfer_id: String
                }
              )
          end
          def to_hash; end

          # #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/currency
          module Currency
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Currency)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol
                )
              end

            # Canadian Dollar (CAD)
            CAD =
              T.let(
                :CAD,
                Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol
              )

            # Swiss Franc (CHF)
            CHF =
              T.let(
                :CHF,
                Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol
              )

            # Euro (EUR)
            EUR =
              T.let(
                :EUR,
                Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol
              )

            # British Pound (GBP)
            GBP =
              T.let(
                :GBP,
                Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol
              )

            # Japanese Yen (JPY)
            JPY =
              T.let(
                :JPY,
                Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol
              )

            # US Dollar (USD)
            USD =
              T.let(
                :USD,
                Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[
                    Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Currency::TaggedSymbol
                  ]
                )
            end
            def self.values; end
          end

          # #/components/schemas/declined_transaction/properties/source/properties/inbound_real_time_payments_transfer_decline/anyOf/0/properties/reason
          module Reason
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Reason)
              end
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol
                )
              end

            # The account number is canceled.
            ACCOUNT_NUMBER_CANCELED =
              T.let(
                :account_number_canceled,
                Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol
              )

            # The account number is disabled.
            ACCOUNT_NUMBER_DISABLED =
              T.let(
                :account_number_disabled,
                Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol
              )

            # Your account is restricted.
            ACCOUNT_RESTRICTED =
              T.let(
                :account_restricted,
                Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol
              )

            # Your account is inactive.
            GROUP_LOCKED =
              T.let(
                :group_locked,
                Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol
              )

            # The account's entity is not active.
            ENTITY_NOT_ACTIVE =
              T.let(
                :entity_not_active,
                Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol
              )

            # Your account is not enabled to receive Real-Time Payments transfers.
            REAL_TIME_PAYMENTS_NOT_ENABLED =
              T.let(
                :real_time_payments_not_enabled,
                Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[
                    Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Reason::TaggedSymbol
                  ]
                )
            end
            def self.values; end
          end
        end

        class WireDecline < Increase::Internal::Type::BaseModel
          # #/components/schemas/declined_transaction/properties/source/properties/wire_decline/anyOf/0/properties/inbound_wire_transfer_id
          sig { returns(String) }
          attr_accessor :inbound_wire_transfer_id

          # #/components/schemas/declined_transaction/properties/source/properties/wire_decline/anyOf/0/properties/reason
          sig { returns(Increase::Models::DeclinedTransaction::Source::WireDecline::Reason::TaggedSymbol) }
          attr_accessor :reason

          # #/components/schemas/declined_transaction/properties/source/properties/wire_decline
          sig do
            params(
              inbound_wire_transfer_id: String,
              reason: Increase::Models::DeclinedTransaction::Source::WireDecline::Reason::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(inbound_wire_transfer_id:, reason:); end

          sig do
            override
              .returns(
                {
                  inbound_wire_transfer_id: String,
                  reason: Increase::Models::DeclinedTransaction::Source::WireDecline::Reason::TaggedSymbol
                }
              )
          end
          def to_hash; end

          # #/components/schemas/declined_transaction/properties/source/properties/wire_decline/anyOf/0/properties/reason
          module Reason
            extend Increase::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Increase::Models::DeclinedTransaction::Source::WireDecline::Reason) }
            OrSymbol =
              T.type_alias { T.any(Symbol, String, Increase::Models::DeclinedTransaction::Source::WireDecline::Reason::TaggedSymbol) }

            # The account number is canceled.
            ACCOUNT_NUMBER_CANCELED =
              T.let(
                :account_number_canceled,
                Increase::Models::DeclinedTransaction::Source::WireDecline::Reason::TaggedSymbol
              )

            # The account number is disabled.
            ACCOUNT_NUMBER_DISABLED =
              T.let(
                :account_number_disabled,
                Increase::Models::DeclinedTransaction::Source::WireDecline::Reason::TaggedSymbol
              )

            # The account's entity is not active.
            ENTITY_NOT_ACTIVE =
              T.let(
                :entity_not_active,
                Increase::Models::DeclinedTransaction::Source::WireDecline::Reason::TaggedSymbol
              )

            # Your account is inactive.
            GROUP_LOCKED =
              T.let(:group_locked, Increase::Models::DeclinedTransaction::Source::WireDecline::Reason::TaggedSymbol)

            # The beneficiary account number does not exist.
            NO_ACCOUNT_NUMBER =
              T.let(
                :no_account_number,
                Increase::Models::DeclinedTransaction::Source::WireDecline::Reason::TaggedSymbol
              )

            # The transaction is not allowed per Increase's terms.
            TRANSACTION_NOT_ALLOWED =
              T.let(
                :transaction_not_allowed,
                Increase::Models::DeclinedTransaction::Source::WireDecline::Reason::TaggedSymbol
              )

            sig do
              override
                .returns(T::Array[Increase::Models::DeclinedTransaction::Source::WireDecline::Reason::TaggedSymbol])
            end
            def self.values; end
          end
        end
      end

      # #/components/schemas/declined_transaction/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::DeclinedTransaction::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::DeclinedTransaction::Type::TaggedSymbol) }

        DECLINED_TRANSACTION =
          T.let(:declined_transaction, Increase::Models::DeclinedTransaction::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::DeclinedTransaction::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
