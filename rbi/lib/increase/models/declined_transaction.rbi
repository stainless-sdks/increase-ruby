# typed: strong

module Increase
  module Models
    class DeclinedTransaction < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig { returns(T.nilable(String)) }
      def route_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def route_id=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def route_type
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def route_type=(_)
      end

      sig { returns(Increase::Models::DeclinedTransaction::Source) }
      def source
      end

      sig do
        params(_: Increase::Models::DeclinedTransaction::Source)
          .returns(Increase::Models::DeclinedTransaction::Source)
      end
      def source=(_)
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
            account_id: String,
            amount: Integer,
            created_at: Time,
            currency: Symbol,
            description: String,
            route_id: T.nilable(String),
            route_type: T.nilable(Symbol),
            source: Increase::Models::DeclinedTransaction::Source,
            type: Symbol
          )
          .void
      end
      def initialize(id:, account_id:, amount:, created_at:, currency:, description:, route_id:, route_type:, source:, type:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_id: String,
              amount: Integer,
              created_at: Time,
              currency: Symbol,
              description: String,
              route_id: T.nilable(String),
              route_type: T.nilable(Symbol),
              source: Increase::Models::DeclinedTransaction::Source,
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

      class RouteType < Increase::Enum
        abstract!

        # An Account Number.
        ACCOUNT_NUMBER = T.let(:account_number, T.nilable(Symbol))

        # A Card.
        CARD = T.let(:card, T.nilable(Symbol))

        # A Lockbox.
        LOCKBOX = T.let(:lockbox, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Source < Increase::BaseModel
        sig { returns(T.nilable(Increase::Models::DeclinedTransaction::Source::ACHDecline)) }
        def ach_decline
        end

        sig do
          params(_: T.nilable(Increase::Models::DeclinedTransaction::Source::ACHDecline))
            .returns(T.nilable(Increase::Models::DeclinedTransaction::Source::ACHDecline))
        end
        def ach_decline=(_)
        end

        sig { returns(T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline)) }
        def card_decline
        end

        sig do
          params(_: T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline))
            .returns(T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline))
        end
        def card_decline=(_)
        end

        sig { returns(Symbol) }
        def category
        end

        sig { params(_: Symbol).returns(Symbol) }
        def category=(_)
        end

        sig { returns(T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDecline)) }
        def check_decline
        end

        sig do
          params(_: T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDecline))
            .returns(T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDecline))
        end
        def check_decline=(_)
        end

        sig { returns(T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDepositRejection)) }
        def check_deposit_rejection
        end

        sig do
          params(_: T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDepositRejection))
            .returns(T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDepositRejection))
        end
        def check_deposit_rejection=(_)
        end

        sig { returns(T.nilable(Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline)) }
        def inbound_real_time_payments_transfer_decline
        end

        sig do
          params(
              _: T.nilable(Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline)
            )
            .returns(T.nilable(Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline))
        end
        def inbound_real_time_payments_transfer_decline=(_)
        end

        sig { returns(T.nilable(T.anything)) }
        def other
        end

        sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
        def other=(_)
        end

        sig { returns(T.nilable(Increase::Models::DeclinedTransaction::Source::WireDecline)) }
        def wire_decline
        end

        sig do
          params(_: T.nilable(Increase::Models::DeclinedTransaction::Source::WireDecline))
            .returns(T.nilable(Increase::Models::DeclinedTransaction::Source::WireDecline))
        end
        def wire_decline=(_)
        end

        sig do
          params(
              ach_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::ACHDecline),
              card_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline),
              category: Symbol,
              check_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDecline),
              check_deposit_rejection: T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDepositRejection),
              inbound_real_time_payments_transfer_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline),
              other: T.nilable(T.anything),
              wire_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::WireDecline)
            )
            .void
        end
        def initialize(
          ach_decline:,
          card_decline:,
          category:,
          check_decline:,
          check_deposit_rejection:,
          inbound_real_time_payments_transfer_decline:,
          other:,
          wire_decline:
        )
        end

        sig do
          override
            .returns(
              {
                ach_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::ACHDecline),
                card_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline),
                category: Symbol,
                check_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDecline),
                check_deposit_rejection: T.nilable(Increase::Models::DeclinedTransaction::Source::CheckDepositRejection),
                inbound_real_time_payments_transfer_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline),
                other: T.nilable(T.anything),
                wire_decline: T.nilable(Increase::Models::DeclinedTransaction::Source::WireDecline)
              }
            )
        end
        def to_hash
        end

        class ACHDecline < Increase::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(String) }
          def inbound_ach_transfer_id
          end

          sig { params(_: String).returns(String) }
          def inbound_ach_transfer_id=(_)
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

          sig { returns(Symbol) }
          def reason
          end

          sig { params(_: Symbol).returns(Symbol) }
          def reason=(_)
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

          sig { returns(String) }
          def trace_number
          end

          sig { params(_: String).returns(String) }
          def trace_number=(_)
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
                amount: Integer,
                inbound_ach_transfer_id: String,
                originator_company_descriptive_date: T.nilable(String),
                originator_company_discretionary_data: T.nilable(String),
                originator_company_id: String,
                originator_company_name: String,
                reason: Symbol,
                receiver_id_number: T.nilable(String),
                receiver_name: T.nilable(String),
                trace_number: String,
                type: Symbol
              )
              .void
          end
          def initialize(
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
          )
          end

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
                  reason: Symbol,
                  receiver_id_number: T.nilable(String),
                  receiver_name: T.nilable(String),
                  trace_number: String,
                  type: Symbol
                }
              )
          end
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

          class Type < Increase::Enum
            abstract!

            ACH_DECLINE = :ach_decline

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class CardDecline < Increase::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(Symbol) }
          def actioner
          end

          sig { params(_: Symbol).returns(Symbol) }
          def actioner=(_)
          end

          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(String) }
          def card_payment_id
          end

          sig { params(_: String).returns(String) }
          def card_payment_id=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(String) }
          def declined_transaction_id
          end

          sig { params(_: String).returns(String) }
          def declined_transaction_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def digital_wallet_token_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def digital_wallet_token_id=(_)
          end

          sig { returns(Symbol) }
          def direction
          end

          sig { params(_: Symbol).returns(Symbol) }
          def direction=(_)
          end

          sig { returns(String) }
          def merchant_acceptor_id
          end

          sig { params(_: String).returns(String) }
          def merchant_acceptor_id=(_)
          end

          sig { returns(String) }
          def merchant_category_code
          end

          sig { params(_: String).returns(String) }
          def merchant_category_code=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_city
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_city=(_)
          end

          sig { returns(String) }
          def merchant_country
          end

          sig { params(_: String).returns(String) }
          def merchant_country=(_)
          end

          sig { returns(String) }
          def merchant_descriptor
          end

          sig { params(_: String).returns(String) }
          def merchant_descriptor=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_postal_code
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_postal_code=(_)
          end

          sig { returns(T.nilable(String)) }
          def merchant_state
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def merchant_state=(_)
          end

          sig { returns(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails) }
          def network_details
          end

          sig do
            params(_: Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails)
              .returns(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails)
          end
          def network_details=(_)
          end

          sig { returns(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkIdentifiers) }
          def network_identifiers
          end

          sig do
            params(_: Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkIdentifiers)
              .returns(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkIdentifiers)
          end
          def network_identifiers=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def network_risk_score
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def network_risk_score=(_)
          end

          sig { returns(T.nilable(String)) }
          def physical_card_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def physical_card_id=(_)
          end

          sig { returns(Integer) }
          def presentment_amount
          end

          sig { params(_: Integer).returns(Integer) }
          def presentment_amount=(_)
          end

          sig { returns(String) }
          def presentment_currency
          end

          sig { params(_: String).returns(String) }
          def presentment_currency=(_)
          end

          sig { returns(Symbol) }
          def processing_category
          end

          sig { params(_: Symbol).returns(Symbol) }
          def processing_category=(_)
          end

          sig { returns(T.nilable(String)) }
          def real_time_decision_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def real_time_decision_id=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def real_time_decision_reason
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def real_time_decision_reason=(_)
          end

          sig { returns(Symbol) }
          def reason
          end

          sig { params(_: Symbol).returns(Symbol) }
          def reason=(_)
          end

          sig { returns(T.nilable(String)) }
          def terminal_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def terminal_id=(_)
          end

          sig { returns(Increase::Models::DeclinedTransaction::Source::CardDecline::Verification) }
          def verification
          end

          sig do
            params(_: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification)
              .returns(Increase::Models::DeclinedTransaction::Source::CardDecline::Verification)
          end
          def verification=(_)
          end

          sig do
            params(
                id: String,
                actioner: Symbol,
                amount: Integer,
                card_payment_id: String,
                currency: Symbol,
                declined_transaction_id: String,
                digital_wallet_token_id: T.nilable(String),
                direction: Symbol,
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
                processing_category: Symbol,
                real_time_decision_id: T.nilable(String),
                real_time_decision_reason: T.nilable(Symbol),
                reason: Symbol,
                terminal_id: T.nilable(String),
                verification: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification
              )
              .void
          end
          def initialize(
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
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  actioner: Symbol,
                  amount: Integer,
                  card_payment_id: String,
                  currency: Symbol,
                  declined_transaction_id: String,
                  digital_wallet_token_id: T.nilable(String),
                  direction: Symbol,
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
                  processing_category: Symbol,
                  real_time_decision_id: T.nilable(String),
                  real_time_decision_reason: T.nilable(Symbol),
                  reason: Symbol,
                  terminal_id: T.nilable(String),
                  verification: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification
                }
              )
          end
          def to_hash
          end

          class Actioner < Increase::Enum
            abstract!

            # This object was actioned by the user through a real-time decision.
            USER = :user

            # This object was actioned by Increase without user intervention.
            INCREASE = :increase

            # This object was actioned by the network, through stand-in processing.
            NETWORK = :network

            sig { override.returns(T::Array[Symbol]) }
            def self.values
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

          class Direction < Increase::Enum
            abstract!

            # A regular card authorization where funds are debited from the cardholder.
            SETTLEMENT = :settlement

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND = :refund

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class NetworkDetails < Increase::BaseModel
            sig { returns(Symbol) }
            def category
            end

            sig { params(_: Symbol).returns(Symbol) }
            def category=(_)
            end

            sig { returns(T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa)) }
            def visa
            end

            sig do
              params(_: T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa))
                .returns(T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa))
            end
            def visa=(_)
            end

            sig do
              params(
                  category: Symbol,
                  visa: T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa)
                )
                .void
            end
            def initialize(category:, visa:)
            end

            sig do
              override
                .returns(
                  {
                    category: Symbol,
                    visa: T.nilable(Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa)
                  }
                )
            end
            def to_hash
            end

            class Category < Increase::Enum
              abstract!

              # Visa
              VISA = :visa

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class Visa < Increase::BaseModel
              sig { returns(T.nilable(Symbol)) }
              def electronic_commerce_indicator
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def electronic_commerce_indicator=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def point_of_service_entry_mode
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def point_of_service_entry_mode=(_)
              end

              sig { returns(T.nilable(Symbol)) }
              def stand_in_processing_reason
              end

              sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
              def stand_in_processing_reason=(_)
              end

              sig do
                params(
                    electronic_commerce_indicator: T.nilable(Symbol),
                    point_of_service_entry_mode: T.nilable(Symbol),
                    stand_in_processing_reason: T.nilable(Symbol)
                  )
                  .void
              end
              def initialize(electronic_commerce_indicator:, point_of_service_entry_mode:, stand_in_processing_reason:)
              end

              sig do
                override
                  .returns(
                    {
                      electronic_commerce_indicator: T.nilable(Symbol),
                      point_of_service_entry_mode: T.nilable(Symbol),
                      stand_in_processing_reason: T.nilable(Symbol)
                    }
                  )
              end
              def to_hash
              end

              class ElectronicCommerceIndicator < Increase::Enum
                abstract!

                # Single transaction of a mail/phone order: Use to indicate that the transaction is a mail/phone order purchase, not a recurring transaction or installment payment. For domestic transactions in the US region, this value may also indicate one bill payment transaction in the card-present or card-absent environments.
                MAIL_PHONE_ORDER = T.let(:mail_phone_order, T.nilable(Symbol))

                # Recurring transaction: Payment indicator used to indicate a recurring transaction that originates from an acquirer in the US region.
                RECURRING = T.let(:recurring, T.nilable(Symbol))

                # Installment payment: Payment indicator used to indicate one purchase of goods or services that is billed to the account in multiple charges over a period of time agreed upon by the cardholder and merchant from transactions that originate from an acquirer in the US region.
                INSTALLMENT = T.let(:installment, T.nilable(Symbol))

                # Unknown classification: other mail order: Use to indicate that the type of mail/telephone order is unknown.
                UNKNOWN_MAIL_PHONE_ORDER = T.let(:unknown_mail_phone_order, T.nilable(Symbol))

                # Secure electronic commerce transaction: Use to indicate that the electronic commerce transaction has been authenticated using e.g., 3-D Secure
                SECURE_ELECTRONIC_COMMERCE = T.let(:secure_electronic_commerce, T.nilable(Symbol))

                # Non-authenticated security transaction at a 3-D Secure-capable merchant, and merchant attempted to authenticate the cardholder using 3-D Secure: Use to identify an electronic commerce transaction where the merchant attempted to authenticate the cardholder using 3-D Secure, but was unable to complete the authentication because the issuer or cardholder does not participate in the 3-D Secure program.
                NON_AUTHENTICATED_SECURITY_TRANSACTION_AT_3DS_CAPABLE_MERCHANT = T.let(:non_authenticated_security_transaction_at_3ds_capable_merchant, T.nilable(Symbol))

                # Non-authenticated security transaction: Use to identify an electronic commerce transaction that uses data encryption for security however , cardholder authentication is not performed using 3-D Secure.
                NON_AUTHENTICATED_SECURITY_TRANSACTION = T.let(:non_authenticated_security_transaction, T.nilable(Symbol))

                # Non-secure transaction: Use to identify an electronic commerce transaction that has no data protection.
                NON_SECURE_TRANSACTION = T.let(:non_secure_transaction, T.nilable(Symbol))

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end

              class PointOfServiceEntryMode < Increase::Enum
                abstract!

                # Unknown
                UNKNOWN = T.let(:unknown, T.nilable(Symbol))

                # Manual key entry
                MANUAL = T.let(:manual, T.nilable(Symbol))

                # Magnetic stripe read, without card verification value
                MAGNETIC_STRIPE_NO_CVV = T.let(:magnetic_stripe_no_cvv, T.nilable(Symbol))

                # Optical code
                OPTICAL_CODE = T.let(:optical_code, T.nilable(Symbol))

                # Contact chip card
                INTEGRATED_CIRCUIT_CARD = T.let(:integrated_circuit_card, T.nilable(Symbol))

                # Contactless read of chip card
                CONTACTLESS = T.let(:contactless, T.nilable(Symbol))

                # Transaction initiated using a credential that has previously been stored on file
                CREDENTIAL_ON_FILE = T.let(:credential_on_file, T.nilable(Symbol))

                # Magnetic stripe read
                MAGNETIC_STRIPE = T.let(:magnetic_stripe, T.nilable(Symbol))

                # Contactless read of magnetic stripe data
                CONTACTLESS_MAGNETIC_STRIPE = T.let(:contactless_magnetic_stripe, T.nilable(Symbol))

                # Contact chip card, without card verification value
                INTEGRATED_CIRCUIT_CARD_NO_CVV = T.let(:integrated_circuit_card_no_cvv, T.nilable(Symbol))

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end

              class StandInProcessingReason < Increase::Enum
                abstract!

                # Increase failed to process the authorization in a timely manner.
                ISSUER_ERROR = T.let(:issuer_error, T.nilable(Symbol))

                # The physical card read had an invalid CVV, dCVV, or authorization request cryptogram.
                INVALID_PHYSICAL_CARD = T.let(:invalid_physical_card, T.nilable(Symbol))

                # The 3DS cardholder authentication verification value was invalid.
                INVALID_CARDHOLDER_AUTHENTICATION_VERIFICATION_VALUE = T.let(:invalid_cardholder_authentication_verification_value, T.nilable(Symbol))

                # An internal Visa error occurred. Visa uses this reason code for certain expected occurrences as well, such as Application Transaction Counter (ATC) replays.
                INTERNAL_VISA_ERROR = T.let(:internal_visa_error, T.nilable(Symbol))

                # The merchant has enabled Visa's Transaction Advisory Service and requires further authentication to perform the transaction. In practice this is often utilized at fuel pumps to tell the cardholder to see the cashier.
                MERCHANT_TRANSACTION_ADVISORY_SERVICE_AUTHENTICATION_REQUIRED = T.let(:merchant_transaction_advisory_service_authentication_required, T.nilable(Symbol))

                # The transaction was blocked by Visa's Payment Fraud Disruption service due to fraudulent Acquirer behavior, such as card testing.
                PAYMENT_FRAUD_DISRUPTION_ACQUIRER_BLOCK = T.let(:payment_fraud_disruption_acquirer_block, T.nilable(Symbol))

                # An unspecific reason for stand-in processing.
                OTHER = T.let(:other, T.nilable(Symbol))

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            sig { returns(T.nilable(String)) }
            def retrieval_reference_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def retrieval_reference_number=(_)
            end

            sig { returns(T.nilable(String)) }
            def trace_number
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def trace_number=(_)
            end

            sig { returns(T.nilable(String)) }
            def transaction_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def transaction_id=(_)
            end

            sig do
              params(
                  retrieval_reference_number: T.nilable(String),
                  trace_number: T.nilable(String),
                  transaction_id: T.nilable(String)
                )
                .void
            end
            def initialize(retrieval_reference_number:, trace_number:, transaction_id:)
            end

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
            def to_hash
            end
          end

          class ProcessingCategory < Increase::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class RealTimeDecisionReason < Increase::Enum
            abstract!

            # The cardholder does not have sufficient funds to cover the transaction. The merchant may attempt to process the transaction again.
            INSUFFICIENT_FUNDS = T.let(:insufficient_funds, T.nilable(Symbol))

            # This type of transaction is not allowed for this card. This transaction should not be retried.
            TRANSACTION_NEVER_ALLOWED = T.let(:transaction_never_allowed, T.nilable(Symbol))

            # The transaction amount exceeds the cardholder's approval limit. The merchant may attempt to process the transaction again.
            EXCEEDS_APPROVAL_LIMIT = T.let(:exceeds_approval_limit, T.nilable(Symbol))

            # The card has been temporarily disabled or not yet activated. The merchant may attempt to process the transaction again.
            CARD_TEMPORARILY_DISABLED = T.let(:card_temporarily_disabled, T.nilable(Symbol))

            # The transaction is suspected to be fraudulent. The merchant may attempt to process the transaction again.
            SUSPECTED_FRAUD = T.let(:suspected_fraud, T.nilable(Symbol))

            # The transaction was declined for another reason. The merchant may attempt to process the transaction again. This should be used sparingly.
            OTHER = T.let(:other, T.nilable(Symbol))

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class Reason < Increase::Enum
            abstract!

            # The Card was not active.
            CARD_NOT_ACTIVE = :card_not_active

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class Verification < Increase::BaseModel
            sig { returns(Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode) }
            def card_verification_code
            end

            sig do
              params(_: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode)
                .returns(Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode)
            end
            def card_verification_code=(_)
            end

            sig { returns(Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress) }
            def cardholder_address
            end

            sig do
              params(_: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress)
                .returns(Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress)
            end
            def cardholder_address=(_)
            end

            sig do
              params(
                  card_verification_code: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode,
                  cardholder_address: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress
                )
                .void
            end
            def initialize(card_verification_code:, cardholder_address:)
            end

            sig do
              override
                .returns(
                  {
                    card_verification_code: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode,
                    cardholder_address: Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress
                  }
                )
            end
            def to_hash
            end

            class CardVerificationCode < Increase::BaseModel
              sig { returns(Symbol) }
              def result
              end

              sig { params(_: Symbol).returns(Symbol) }
              def result=(_)
              end

              sig { params(result: Symbol).void }
              def initialize(result:)
              end

              sig { override.returns({result: Symbol}) }
              def to_hash
              end

              class Result < Increase::Enum
                abstract!

                # No card verification code was provided in the authorization request.
                NOT_CHECKED = :not_checked

                # The card verification code matched the one on file.
                MATCH = :match

                # The card verification code did not match the one on file.
                NO_MATCH = :no_match

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end

            class CardholderAddress < Increase::BaseModel
              sig { returns(T.nilable(String)) }
              def actual_line1
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def actual_line1=(_)
              end

              sig { returns(T.nilable(String)) }
              def actual_postal_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def actual_postal_code=(_)
              end

              sig { returns(T.nilable(String)) }
              def provided_line1
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def provided_line1=(_)
              end

              sig { returns(T.nilable(String)) }
              def provided_postal_code
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def provided_postal_code=(_)
              end

              sig { returns(Symbol) }
              def result
              end

              sig { params(_: Symbol).returns(Symbol) }
              def result=(_)
              end

              sig do
                params(
                    actual_line1: T.nilable(String),
                    actual_postal_code: T.nilable(String),
                    provided_line1: T.nilable(String),
                    provided_postal_code: T.nilable(String),
                    result: Symbol
                  )
                  .void
              end
              def initialize(actual_line1:, actual_postal_code:, provided_line1:, provided_postal_code:, result:)
              end

              sig do
                override
                  .returns(
                    {
                      actual_line1: T.nilable(String),
                      actual_postal_code: T.nilable(String),
                      provided_line1: T.nilable(String),
                      provided_postal_code: T.nilable(String),
                      result: Symbol
                    }
                  )
              end
              def to_hash
              end

              class Result < Increase::Enum
                abstract!

                # No adress was provided in the authorization request.
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

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end
        end

        class Category < Increase::Enum
          abstract!

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CheckDecline < Increase::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(T.nilable(String)) }
          def auxiliary_on_us
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def auxiliary_on_us=(_)
          end

          sig { returns(T.nilable(String)) }
          def back_image_file_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def back_image_file_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def check_transfer_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def check_transfer_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def front_image_file_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def front_image_file_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def inbound_check_deposit_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def inbound_check_deposit_id=(_)
          end

          sig { returns(Symbol) }
          def reason
          end

          sig { params(_: Symbol).returns(Symbol) }
          def reason=(_)
          end

          sig do
            params(
                amount: Integer,
                auxiliary_on_us: T.nilable(String),
                back_image_file_id: T.nilable(String),
                check_transfer_id: T.nilable(String),
                front_image_file_id: T.nilable(String),
                inbound_check_deposit_id: T.nilable(String),
                reason: Symbol
              )
              .void
          end
          def initialize(
            amount:,
            auxiliary_on_us:,
            back_image_file_id:,
            check_transfer_id:,
            front_image_file_id:,
            inbound_check_deposit_id:,
            reason:
          )
          end

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
                  reason: Symbol
                }
              )
          end
          def to_hash
          end

          class Reason < Increase::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class CheckDepositRejection < Increase::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(String) }
          def check_deposit_id
          end

          sig { params(_: String).returns(String) }
          def check_deposit_id=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
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

          sig { returns(Time) }
          def rejected_at
          end

          sig { params(_: Time).returns(Time) }
          def rejected_at=(_)
          end

          sig do
            params(
                amount: Integer,
                check_deposit_id: String,
                currency: Symbol,
                declined_transaction_id: String,
                reason: Symbol,
                rejected_at: Time
              )
              .void
          end
          def initialize(amount:, check_deposit_id:, currency:, declined_transaction_id:, reason:, rejected_at:)
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  check_deposit_id: String,
                  currency: Symbol,
                  declined_transaction_id: String,
                  reason: Symbol,
                  rejected_at: Time
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

          class Reason < Increase::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class InboundRealTimePaymentsTransferDecline < Increase::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(String) }
          def creditor_name
          end

          sig { params(_: String).returns(String) }
          def creditor_name=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(String) }
          def debtor_account_number
          end

          sig { params(_: String).returns(String) }
          def debtor_account_number=(_)
          end

          sig { returns(String) }
          def debtor_name
          end

          sig { params(_: String).returns(String) }
          def debtor_name=(_)
          end

          sig { returns(String) }
          def debtor_routing_number
          end

          sig { params(_: String).returns(String) }
          def debtor_routing_number=(_)
          end

          sig { returns(Symbol) }
          def reason
          end

          sig { params(_: Symbol).returns(Symbol) }
          def reason=(_)
          end

          sig { returns(T.nilable(String)) }
          def remittance_information
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def remittance_information=(_)
          end

          sig { returns(String) }
          def transaction_identification
          end

          sig { params(_: String).returns(String) }
          def transaction_identification=(_)
          end

          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          sig do
            params(
                amount: Integer,
                creditor_name: String,
                currency: Symbol,
                debtor_account_number: String,
                debtor_name: String,
                debtor_routing_number: String,
                reason: Symbol,
                remittance_information: T.nilable(String),
                transaction_identification: String,
                transfer_id: String
              )
              .void
          end
          def initialize(
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
          )
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  creditor_name: String,
                  currency: Symbol,
                  debtor_account_number: String,
                  debtor_name: String,
                  debtor_routing_number: String,
                  reason: Symbol,
                  remittance_information: T.nilable(String),
                  transaction_identification: String,
                  transfer_id: String
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

          class Reason < Increase::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class WireDecline < Increase::BaseModel
          sig { returns(String) }
          def inbound_wire_transfer_id
          end

          sig { params(_: String).returns(String) }
          def inbound_wire_transfer_id=(_)
          end

          sig { returns(Symbol) }
          def reason
          end

          sig { params(_: Symbol).returns(Symbol) }
          def reason=(_)
          end

          sig { params(inbound_wire_transfer_id: String, reason: Symbol).void }
          def initialize(inbound_wire_transfer_id:, reason:)
          end

          sig { override.returns({inbound_wire_transfer_id: String, reason: Symbol}) }
          def to_hash
          end

          class Reason < Increase::Enum
            abstract!

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end

      class Type < Increase::Enum
        abstract!

        DECLINED_TRANSACTION = :declined_transaction

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
