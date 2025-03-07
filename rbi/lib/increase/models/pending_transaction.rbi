# typed: strong

module Increase
  module Models
    class PendingTransaction < Increase::BaseModel
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

      sig { returns(T.nilable(Time)) }
      def completed_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def completed_at=(_)
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

      sig { returns(Increase::Models::PendingTransaction::Source) }
      def source
      end

      sig do
        params(_: Increase::Models::PendingTransaction::Source)
          .returns(Increase::Models::PendingTransaction::Source)
      end
      def source=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
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
          completed_at: T.nilable(Time),
          created_at: Time,
          currency: Symbol,
          description: String,
          route_id: T.nilable(String),
          route_type: T.nilable(Symbol),
          source: Increase::Models::PendingTransaction::Source,
          status: Symbol,
          type: Symbol
        )
          .void
      end
      def initialize(
        id:,
        account_id:,
        amount:,
        completed_at:,
        created_at:,
        currency:,
        description:,
        route_id:,
        route_type:,
        source:,
        status:,
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
              completed_at: T.nilable(Time),
              created_at: Time,
              currency: Symbol,
              description: String,
              route_id: T.nilable(String),
              route_type: T.nilable(Symbol),
              source: Increase::Models::PendingTransaction::Source,
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Source < Increase::BaseModel
        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::AccountTransferInstruction)) }
        def account_transfer_instruction
        end

        sig do
          params(_: T.nilable(Increase::Models::PendingTransaction::Source::AccountTransferInstruction))
            .returns(T.nilable(Increase::Models::PendingTransaction::Source::AccountTransferInstruction))
        end
        def account_transfer_instruction=(_)
        end

        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::ACHTransferInstruction)) }
        def ach_transfer_instruction
        end

        sig do
          params(_: T.nilable(Increase::Models::PendingTransaction::Source::ACHTransferInstruction))
            .returns(T.nilable(Increase::Models::PendingTransaction::Source::ACHTransferInstruction))
        end
        def ach_transfer_instruction=(_)
        end

        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::CardAuthorization)) }
        def card_authorization
        end

        sig do
          params(_: T.nilable(Increase::Models::PendingTransaction::Source::CardAuthorization))
            .returns(T.nilable(Increase::Models::PendingTransaction::Source::CardAuthorization))
        end
        def card_authorization=(_)
        end

        sig { returns(Symbol) }
        def category
        end

        sig { params(_: Symbol).returns(Symbol) }
        def category=(_)
        end

        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::CheckDepositInstruction)) }
        def check_deposit_instruction
        end

        sig do
          params(_: T.nilable(Increase::Models::PendingTransaction::Source::CheckDepositInstruction))
            .returns(T.nilable(Increase::Models::PendingTransaction::Source::CheckDepositInstruction))
        end
        def check_deposit_instruction=(_)
        end

        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::CheckTransferInstruction)) }
        def check_transfer_instruction
        end

        sig do
          params(_: T.nilable(Increase::Models::PendingTransaction::Source::CheckTransferInstruction))
            .returns(T.nilable(Increase::Models::PendingTransaction::Source::CheckTransferInstruction))
        end
        def check_transfer_instruction=(_)
        end

        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::InboundFundsHold)) }
        def inbound_funds_hold
        end

        sig do
          params(_: T.nilable(Increase::Models::PendingTransaction::Source::InboundFundsHold))
            .returns(T.nilable(Increase::Models::PendingTransaction::Source::InboundFundsHold))
        end
        def inbound_funds_hold=(_)
        end

        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::InboundWireTransferReversal)) }
        def inbound_wire_transfer_reversal
        end

        sig do
          params(_: T.nilable(Increase::Models::PendingTransaction::Source::InboundWireTransferReversal))
            .returns(T.nilable(Increase::Models::PendingTransaction::Source::InboundWireTransferReversal))
        end
        def inbound_wire_transfer_reversal=(_)
        end

        sig { returns(T.nilable(T.anything)) }
        def other
        end

        sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
        def other=(_)
        end

        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction)) }
        def real_time_payments_transfer_instruction
        end

        sig do
          params(_: T.nilable(Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction))
            .returns(T.nilable(Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction))
        end
        def real_time_payments_transfer_instruction=(_)
        end

        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::WireTransferInstruction)) }
        def wire_transfer_instruction
        end

        sig do
          params(_: T.nilable(Increase::Models::PendingTransaction::Source::WireTransferInstruction))
            .returns(T.nilable(Increase::Models::PendingTransaction::Source::WireTransferInstruction))
        end
        def wire_transfer_instruction=(_)
        end

        sig do
          params(
            account_transfer_instruction: T.nilable(Increase::Models::PendingTransaction::Source::AccountTransferInstruction),
            ach_transfer_instruction: T.nilable(Increase::Models::PendingTransaction::Source::ACHTransferInstruction),
            card_authorization: T.nilable(Increase::Models::PendingTransaction::Source::CardAuthorization),
            category: Symbol,
            check_deposit_instruction: T.nilable(Increase::Models::PendingTransaction::Source::CheckDepositInstruction),
            check_transfer_instruction: T.nilable(Increase::Models::PendingTransaction::Source::CheckTransferInstruction),
            inbound_funds_hold: T.nilable(Increase::Models::PendingTransaction::Source::InboundFundsHold),
            inbound_wire_transfer_reversal: T.nilable(Increase::Models::PendingTransaction::Source::InboundWireTransferReversal),
            other: T.nilable(T.anything),
            real_time_payments_transfer_instruction: T.nilable(Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction),
            wire_transfer_instruction: T.nilable(Increase::Models::PendingTransaction::Source::WireTransferInstruction)
          )
            .void
        end
        def initialize(
          account_transfer_instruction:,
          ach_transfer_instruction:,
          card_authorization:,
          category:,
          check_deposit_instruction:,
          check_transfer_instruction:,
          inbound_funds_hold:,
          inbound_wire_transfer_reversal:,
          other:,
          real_time_payments_transfer_instruction:,
          wire_transfer_instruction:
        )
        end

        sig do
          override
            .returns(
              {
                account_transfer_instruction: T.nilable(Increase::Models::PendingTransaction::Source::AccountTransferInstruction),
                ach_transfer_instruction: T.nilable(Increase::Models::PendingTransaction::Source::ACHTransferInstruction),
                card_authorization: T.nilable(Increase::Models::PendingTransaction::Source::CardAuthorization),
                category: Symbol,
                check_deposit_instruction: T.nilable(Increase::Models::PendingTransaction::Source::CheckDepositInstruction),
                check_transfer_instruction: T.nilable(Increase::Models::PendingTransaction::Source::CheckTransferInstruction),
                inbound_funds_hold: T.nilable(Increase::Models::PendingTransaction::Source::InboundFundsHold),
                inbound_wire_transfer_reversal: T.nilable(Increase::Models::PendingTransaction::Source::InboundWireTransferReversal),
                other: T.nilable(T.anything),
                real_time_payments_transfer_instruction: T.nilable(Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction),
                wire_transfer_instruction: T.nilable(Increase::Models::PendingTransaction::Source::WireTransferInstruction)
              }
            )
        end
        def to_hash
        end

        class AccountTransferInstruction < Increase::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          sig { params(amount: Integer, currency: Symbol, transfer_id: String).void }
          def initialize(amount:, currency:, transfer_id:)
          end

          sig { override.returns({amount: Integer, currency: Symbol, transfer_id: String}) }
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class ACHTransferInstruction < Increase::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          sig { params(amount: Integer, transfer_id: String).void }
          def initialize(amount:, transfer_id:)
          end

          sig { override.returns({amount: Integer, transfer_id: String}) }
          def to_hash
          end
        end

        class CardAuthorization < Increase::BaseModel
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

          sig { returns(Time) }
          def expires_at
          end

          sig { params(_: Time).returns(Time) }
          def expires_at=(_)
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

          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails) }
          def network_details
          end

          sig do
            params(_: Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails)
              .returns(Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails)
          end
          def network_details=(_)
          end

          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers) }
          def network_identifiers
          end

          sig do
            params(_: Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers)
              .returns(Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers)
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
          def pending_transaction_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def pending_transaction_id=(_)
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

          sig { returns(T.nilable(String)) }
          def terminal_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def terminal_id=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Verification) }
          def verification
          end

          sig do
            params(_: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification)
              .returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Verification)
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
              digital_wallet_token_id: T.nilable(String),
              direction: Symbol,
              expires_at: Time,
              merchant_acceptor_id: String,
              merchant_category_code: String,
              merchant_city: T.nilable(String),
              merchant_country: String,
              merchant_descriptor: String,
              merchant_postal_code: T.nilable(String),
              merchant_state: T.nilable(String),
              network_details: Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails,
              network_identifiers: Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers,
              network_risk_score: T.nilable(Integer),
              pending_transaction_id: T.nilable(String),
              physical_card_id: T.nilable(String),
              presentment_amount: Integer,
              presentment_currency: String,
              processing_category: Symbol,
              real_time_decision_id: T.nilable(String),
              terminal_id: T.nilable(String),
              type: Symbol,
              verification: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification
            )
              .void
          end
          def initialize(
            id:,
            actioner:,
            amount:,
            card_payment_id:,
            currency:,
            digital_wallet_token_id:,
            direction:,
            expires_at:,
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
            pending_transaction_id:,
            physical_card_id:,
            presentment_amount:,
            presentment_currency:,
            processing_category:,
            real_time_decision_id:,
            terminal_id:,
            type:,
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
                  digital_wallet_token_id: T.nilable(String),
                  direction: Symbol,
                  expires_at: Time,
                  merchant_acceptor_id: String,
                  merchant_category_code: String,
                  merchant_city: T.nilable(String),
                  merchant_country: String,
                  merchant_descriptor: String,
                  merchant_postal_code: T.nilable(String),
                  merchant_state: T.nilable(String),
                  network_details: Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails,
                  network_identifiers: Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers,
                  network_risk_score: T.nilable(Integer),
                  pending_transaction_id: T.nilable(String),
                  physical_card_id: T.nilable(String),
                  presentment_amount: Integer,
                  presentment_currency: String,
                  processing_category: Symbol,
                  real_time_decision_id: T.nilable(String),
                  terminal_id: T.nilable(String),
                  type: Symbol,
                  verification: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Direction < Increase::Enum
            abstract!

            # A regular card authorization where funds are debited from the cardholder.
            SETTLEMENT = :settlement

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND = :refund

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class NetworkDetails < Increase::BaseModel
            sig { returns(Symbol) }
            def category
            end

            sig { params(_: Symbol).returns(Symbol) }
            def category=(_)
            end

            sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa)) }
            def visa
            end

            sig do
              params(
                _: T.nilable(Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa)
              )
                .returns(T.nilable(Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa))
            end
            def visa=(_)
            end

            sig do
              params(
                category: Symbol,
                visa: T.nilable(Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa)
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
                    visa: T.nilable(Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa)
                  }
                )
            end
            def to_hash
            end

            class Category < Increase::Enum
              abstract!

              # Visa
              VISA = :visa

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
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
              def initialize(
                electronic_commerce_indicator:,
                point_of_service_entry_mode:,
                stand_in_processing_reason:
              )
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
                NON_AUTHENTICATED_SECURITY_TRANSACTION_AT_3DS_CAPABLE_MERCHANT = T.let(
                  :non_authenticated_security_transaction_at_3ds_capable_merchant, T.nilable(Symbol)
                )

                # Non-authenticated security transaction: Use to identify an electronic commerce transaction that uses data encryption for security however , cardholder authentication is not performed using 3-D Secure.
                NON_AUTHENTICATED_SECURITY_TRANSACTION = T.let(
                  :non_authenticated_security_transaction,
                  T.nilable(Symbol)
                )

                # Non-secure transaction: Use to identify an electronic commerce transaction that has no data protection.
                NON_SECURE_TRANSACTION = T.let(:non_secure_transaction, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
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

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end

              class StandInProcessingReason < Increase::Enum
                abstract!

                # Increase failed to process the authorization in a timely manner.
                ISSUER_ERROR = T.let(:issuer_error, T.nilable(Symbol))

                # The physical card read had an invalid CVV, dCVV, or authorization request cryptogram.
                INVALID_PHYSICAL_CARD = T.let(:invalid_physical_card, T.nilable(Symbol))

                # The 3DS cardholder authentication verification value was invalid.
                INVALID_CARDHOLDER_AUTHENTICATION_VERIFICATION_VALUE = T.let(
                  :invalid_cardholder_authentication_verification_value, T.nilable(Symbol)
                )

                # An internal Visa error occurred. Visa uses this reason code for certain expected occurrences as well, such as Application Transaction Counter (ATC) replays.
                INTERNAL_VISA_ERROR = T.let(:internal_visa_error, T.nilable(Symbol))

                # The merchant has enabled Visa's Transaction Advisory Service and requires further authentication to perform the transaction. In practice this is often utilized at fuel pumps to tell the cardholder to see the cashier.
                MERCHANT_TRANSACTION_ADVISORY_SERVICE_AUTHENTICATION_REQUIRED = T.let(
                  :merchant_transaction_advisory_service_authentication_required, T.nilable(Symbol)
                )

                # The transaction was blocked by Visa's Payment Fraud Disruption service due to fraudulent Acquirer behavior, such as card testing.
                PAYMENT_FRAUD_DISRUPTION_ACQUIRER_BLOCK = T.let(
                  :payment_fraud_disruption_acquirer_block,
                  T.nilable(Symbol)
                )

                # An unspecific reason for stand-in processing.
                OTHER = T.let(:other, T.nilable(Symbol))

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Type < Increase::Enum
            abstract!

            CARD_AUTHORIZATION = :card_authorization

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Verification < Increase::BaseModel
            sig do
              returns(
                Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode
              )
            end
            def card_verification_code
            end

            sig do
              params(
                _: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode
              )
                .returns(
                  Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode
                )
            end
            def card_verification_code=(_)
            end

            sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress) }
            def cardholder_address
            end

            sig do
              params(
                _: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress
              )
                .returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress)
            end
            def cardholder_address=(_)
            end

            sig do
              params(
                card_verification_code: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode,
                cardholder_address: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress
              )
                .void
            end
            def initialize(card_verification_code:, cardholder_address:)
            end

            sig do
              override
                .returns(
                  {
                    card_verification_code: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode,
                    cardholder_address: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress
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

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
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
              def initialize(
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

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end
        end

        class Category < Increase::Enum
          abstract!

          # Account Transfer Instruction: details will be under the `account_transfer_instruction` object.
          ACCOUNT_TRANSFER_INSTRUCTION = :account_transfer_instruction

          # ACH Transfer Instruction: details will be under the `ach_transfer_instruction` object.
          ACH_TRANSFER_INSTRUCTION = :ach_transfer_instruction

          # Card Authorization: details will be under the `card_authorization` object.
          CARD_AUTHORIZATION = :card_authorization

          # Check Deposit Instruction: details will be under the `check_deposit_instruction` object.
          CHECK_DEPOSIT_INSTRUCTION = :check_deposit_instruction

          # Check Transfer Instruction: details will be under the `check_transfer_instruction` object.
          CHECK_TRANSFER_INSTRUCTION = :check_transfer_instruction

          # Inbound Funds Hold: details will be under the `inbound_funds_hold` object.
          INBOUND_FUNDS_HOLD = :inbound_funds_hold

          # Real-Time Payments Transfer Instruction: details will be under the `real_time_payments_transfer_instruction` object.
          REAL_TIME_PAYMENTS_TRANSFER_INSTRUCTION = :real_time_payments_transfer_instruction

          # Wire Transfer Instruction: details will be under the `wire_transfer_instruction` object.
          WIRE_TRANSFER_INSTRUCTION = :wire_transfer_instruction

          # Inbound Wire Transfer Reversal: details will be under the `inbound_wire_transfer_reversal` object.
          INBOUND_WIRE_TRANSFER_REVERSAL = :inbound_wire_transfer_reversal

          # The Pending Transaction was made for an undocumented or deprecated reason.
          OTHER = :other

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class CheckDepositInstruction < Increase::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(T.nilable(String)) }
          def back_image_file_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def back_image_file_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def check_deposit_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def check_deposit_id=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(String) }
          def front_image_file_id
          end

          sig { params(_: String).returns(String) }
          def front_image_file_id=(_)
          end

          sig do
            params(
              amount: Integer,
              back_image_file_id: T.nilable(String),
              check_deposit_id: T.nilable(String),
              currency: Symbol,
              front_image_file_id: String
            )
              .void
          end
          def initialize(amount:, back_image_file_id:, check_deposit_id:, currency:, front_image_file_id:)
          end

          sig do
            override
              .returns(
                {
                  amount: Integer,
                  back_image_file_id: T.nilable(String),
                  check_deposit_id: T.nilable(String),
                  currency: Symbol,
                  front_image_file_id: String
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class CheckTransferInstruction < Increase::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(Symbol) }
          def currency
          end

          sig { params(_: Symbol).returns(Symbol) }
          def currency=(_)
          end

          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          sig { params(amount: Integer, currency: Symbol, transfer_id: String).void }
          def initialize(amount:, currency:, transfer_id:)
          end

          sig { override.returns({amount: Integer, currency: Symbol, transfer_id: String}) }
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class InboundFundsHold < Increase::BaseModel
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

          sig { returns(Time) }
          def automatically_releases_at
          end

          sig { params(_: Time).returns(Time) }
          def automatically_releases_at=(_)
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

          sig { returns(T.nilable(String)) }
          def held_transaction_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def held_transaction_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def pending_transaction_id
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def pending_transaction_id=(_)
          end

          sig { returns(T.nilable(Time)) }
          def released_at
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def released_at=(_)
          end

          sig { returns(Symbol) }
          def status
          end

          sig { params(_: Symbol).returns(Symbol) }
          def status=(_)
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
              automatically_releases_at: Time,
              created_at: Time,
              currency: Symbol,
              held_transaction_id: T.nilable(String),
              pending_transaction_id: T.nilable(String),
              released_at: T.nilable(Time),
              status: Symbol,
              type: Symbol
            )
              .void
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
            override
              .returns(
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

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Status < Increase::Enum
            abstract!

            # Funds are still being held.
            HELD = :held

            # Funds have been released.
            COMPLETE = :complete

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class Type < Increase::Enum
            abstract!

            INBOUND_FUNDS_HOLD = :inbound_funds_hold

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class InboundWireTransferReversal < Increase::BaseModel
          sig { returns(String) }
          def inbound_wire_transfer_id
          end

          sig { params(_: String).returns(String) }
          def inbound_wire_transfer_id=(_)
          end

          sig { params(inbound_wire_transfer_id: String).void }
          def initialize(inbound_wire_transfer_id:)
          end

          sig { override.returns({inbound_wire_transfer_id: String}) }
          def to_hash
          end
        end

        class RealTimePaymentsTransferInstruction < Increase::BaseModel
          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          sig { params(amount: Integer, transfer_id: String).void }
          def initialize(amount:, transfer_id:)
          end

          sig { override.returns({amount: Integer, transfer_id: String}) }
          def to_hash
          end
        end

        class WireTransferInstruction < Increase::BaseModel
          sig { returns(String) }
          def account_number
          end

          sig { params(_: String).returns(String) }
          def account_number=(_)
          end

          sig { returns(Integer) }
          def amount
          end

          sig { params(_: Integer).returns(Integer) }
          def amount=(_)
          end

          sig { returns(String) }
          def message_to_recipient
          end

          sig { params(_: String).returns(String) }
          def message_to_recipient=(_)
          end

          sig { returns(String) }
          def routing_number
          end

          sig { params(_: String).returns(String) }
          def routing_number=(_)
          end

          sig { returns(String) }
          def transfer_id
          end

          sig { params(_: String).returns(String) }
          def transfer_id=(_)
          end

          sig do
            params(
              account_number: String,
              amount: Integer,
              message_to_recipient: String,
              routing_number: String,
              transfer_id: String
            )
              .void
          end
          def initialize(account_number:, amount:, message_to_recipient:, routing_number:, transfer_id:)
          end

          sig do
            override
              .returns(
                {
                  account_number: String,
                  amount: Integer,
                  message_to_recipient: String,
                  routing_number: String,
                  transfer_id: String
                }
              )
          end
          def to_hash
          end
        end
      end

      class Status < Increase::Enum
        abstract!

        # The Pending Transaction is still awaiting confirmation.
        PENDING = :pending

        # The Pending Transaction is confirmed. An associated Transaction exists for this object. The Pending Transaction will no longer count against your balance and can generally be hidden from UIs, etc.
        COMPLETE = :complete

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Type < Increase::Enum
        abstract!

        PENDING_TRANSACTION = :pending_transaction

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
