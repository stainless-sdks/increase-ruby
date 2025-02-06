# typed: strong

module Increase
  module Models
    class PendingTransaction < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(T.nilable(Time)) }
      attr_accessor :completed_at

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Symbol) }
      attr_accessor :currency

      sig { returns(String) }
      attr_accessor :description

      sig { returns(T.nilable(String)) }
      attr_accessor :route_id

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :route_type

      sig { returns(Increase::Models::PendingTransaction::Source) }
      attr_accessor :source

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Symbol) }
      attr_accessor :type

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
        ).void
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
        override.returns(
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
        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::AccountTransferInstruction)) }
        attr_accessor :account_transfer_instruction

        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::ACHTransferInstruction)) }
        attr_accessor :ach_transfer_instruction

        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::CardAuthorization)) }
        attr_accessor :card_authorization

        sig { returns(Symbol) }
        attr_accessor :category

        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::CheckDepositInstruction)) }
        attr_accessor :check_deposit_instruction

        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::CheckTransferInstruction)) }
        attr_accessor :check_transfer_instruction

        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::InboundFundsHold)) }
        attr_accessor :inbound_funds_hold

        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::InboundWireTransferReversal)) }
        attr_accessor :inbound_wire_transfer_reversal

        sig { returns(T.nilable(T.anything)) }
        attr_accessor :other

        sig do
          returns(T.nilable(Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction))
        end
        attr_accessor :real_time_payments_transfer_instruction

        sig { returns(T.nilable(Increase::Models::PendingTransaction::Source::WireTransferInstruction)) }
        attr_accessor :wire_transfer_instruction

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
          ).void
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
          override.returns(
            {
              account_transfer_instruction: T.nilable(Increase::Models::PendingTransaction::Source::AccountTransferInstruction), ach_transfer_instruction: T.nilable(Increase::Models::PendingTransaction::Source::ACHTransferInstruction), card_authorization: T.nilable(Increase::Models::PendingTransaction::Source::CardAuthorization), category: Symbol, check_deposit_instruction: T.nilable(Increase::Models::PendingTransaction::Source::CheckDepositInstruction), check_transfer_instruction: T.nilable(Increase::Models::PendingTransaction::Source::CheckTransferInstruction), inbound_funds_hold: T.nilable(Increase::Models::PendingTransaction::Source::InboundFundsHold), inbound_wire_transfer_reversal: T.nilable(Increase::Models::PendingTransaction::Source::InboundWireTransferReversal), other: T.nilable(T.anything), real_time_payments_transfer_instruction: T.nilable(Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction), wire_transfer_instruction: T.nilable(Increase::Models::PendingTransaction::Source::WireTransferInstruction)
            }
          )
        end
        def to_hash
        end

        class AccountTransferInstruction < Increase::BaseModel
          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(Symbol) }
          attr_accessor :currency

          sig { returns(String) }
          attr_accessor :transfer_id

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class ACHTransferInstruction < Increase::BaseModel
          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :transfer_id

          sig { params(amount: Integer, transfer_id: String).void }
          def initialize(amount:, transfer_id:)
          end

          sig { override.returns({amount: Integer, transfer_id: String}) }
          def to_hash
          end
        end

        class CardAuthorization < Increase::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :actioner

          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :card_payment_id

          sig { returns(Symbol) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :digital_wallet_token_id

          sig { returns(Symbol) }
          attr_accessor :direction

          sig { returns(Time) }
          attr_accessor :expires_at

          sig { returns(String) }
          attr_accessor :merchant_acceptor_id

          sig { returns(String) }
          attr_accessor :merchant_category_code

          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_city

          sig { returns(String) }
          attr_accessor :merchant_country

          sig { returns(String) }
          attr_accessor :merchant_descriptor

          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_postal_code

          sig { returns(T.nilable(String)) }
          attr_accessor :merchant_state

          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails) }
          attr_accessor :network_details

          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers) }
          attr_accessor :network_identifiers

          sig { returns(T.nilable(Integer)) }
          attr_accessor :network_risk_score

          sig { returns(T.nilable(String)) }
          attr_accessor :pending_transaction_id

          sig { returns(T.nilable(String)) }
          attr_accessor :physical_card_id

          sig { returns(Integer) }
          attr_accessor :presentment_amount

          sig { returns(String) }
          attr_accessor :presentment_currency

          sig { returns(Symbol) }
          attr_accessor :processing_category

          sig { returns(T.nilable(String)) }
          attr_accessor :real_time_decision_id

          sig { returns(T.nilable(String)) }
          attr_accessor :terminal_id

          sig { returns(Symbol) }
          attr_accessor :type

          sig { returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Verification) }
          attr_accessor :verification

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
            ).void
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
            override.returns(
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
            attr_accessor :category

            sig do
              returns(T.nilable(Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa))
            end
            attr_accessor :visa

            sig do
              params(
                category: Symbol,
                visa: T.nilable(Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa)
              ).void
            end
            def initialize(category:, visa:)
            end

            sig do
              override.returns(
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

              sig { override.returns(T::Array[Symbol]) }
              def self.values
              end
            end

            class Visa < Increase::BaseModel
              sig { returns(T.nilable(Symbol)) }
              attr_accessor :electronic_commerce_indicator

              sig { returns(T.nilable(Symbol)) }
              attr_accessor :point_of_service_entry_mode

              sig { returns(T.nilable(Symbol)) }
              attr_accessor :stand_in_processing_reason

              sig do
                params(
                  electronic_commerce_indicator: T.nilable(Symbol),
                  point_of_service_entry_mode: T.nilable(Symbol),
                  stand_in_processing_reason: T.nilable(Symbol)
                ).void
              end
              def initialize(
                electronic_commerce_indicator:,
                point_of_service_entry_mode:,
                stand_in_processing_reason:
              )
              end

              sig do
                override.returns(
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

                sig { override.returns(T::Array[Symbol]) }
                def self.values
                end
              end
            end
          end

          class NetworkIdentifiers < Increase::BaseModel
            sig { returns(T.nilable(String)) }
            attr_accessor :retrieval_reference_number

            sig { returns(T.nilable(String)) }
            attr_accessor :trace_number

            sig { returns(T.nilable(String)) }
            attr_accessor :transaction_id

            sig do
              params(
                retrieval_reference_number: T.nilable(String),
                trace_number: T.nilable(String),
                transaction_id: T.nilable(String)
              ).void
            end
            def initialize(retrieval_reference_number:, trace_number:, transaction_id:)
            end

            sig do
              override.returns(
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

          class Type < Increase::Enum
            abstract!

            CARD_AUTHORIZATION = :card_authorization

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class Verification < Increase::BaseModel
            sig do
              returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode)
            end
            attr_accessor :card_verification_code

            sig do
              returns(Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress)
            end
            attr_accessor :cardholder_address

            sig do
              params(
                card_verification_code: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode,
                cardholder_address: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress
              ).void
            end
            def initialize(card_verification_code:, cardholder_address:)
            end

            sig do
              override.returns(
                {
                  card_verification_code: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode, cardholder_address: Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress
                }
              )
            end
            def to_hash
            end

            class CardVerificationCode < Increase::BaseModel
              sig { returns(Symbol) }
              attr_accessor :result

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
              attr_accessor :actual_line1

              sig { returns(T.nilable(String)) }
              attr_accessor :actual_postal_code

              sig { returns(T.nilable(String)) }
              attr_accessor :provided_line1

              sig { returns(T.nilable(String)) }
              attr_accessor :provided_postal_code

              sig { returns(Symbol) }
              attr_accessor :result

              sig do
                params(
                  actual_line1: T.nilable(String),
                  actual_postal_code: T.nilable(String),
                  provided_line1: T.nilable(String),
                  provided_postal_code: T.nilable(String),
                  result: Symbol
                ).void
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
                override.returns(
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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class CheckDepositInstruction < Increase::BaseModel
          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(T.nilable(String)) }
          attr_accessor :back_image_file_id

          sig { returns(T.nilable(String)) }
          attr_accessor :check_deposit_id

          sig { returns(Symbol) }
          attr_accessor :currency

          sig { returns(String) }
          attr_accessor :front_image_file_id

          sig do
            params(
              amount: Integer,
              back_image_file_id: T.nilable(String),
              check_deposit_id: T.nilable(String),
              currency: Symbol,
              front_image_file_id: String
            ).void
          end
          def initialize(amount:, back_image_file_id:, check_deposit_id:, currency:, front_image_file_id:)
          end

          sig do
            override.returns(
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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class CheckTransferInstruction < Increase::BaseModel
          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(Symbol) }
          attr_accessor :currency

          sig { returns(String) }
          attr_accessor :transfer_id

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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
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

        class InboundWireTransferReversal < Increase::BaseModel
          sig { returns(String) }
          attr_accessor :inbound_wire_transfer_id

          sig { params(inbound_wire_transfer_id: String).void }
          def initialize(inbound_wire_transfer_id:)
          end

          sig { override.returns({inbound_wire_transfer_id: String}) }
          def to_hash
          end
        end

        class RealTimePaymentsTransferInstruction < Increase::BaseModel
          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :transfer_id

          sig { params(amount: Integer, transfer_id: String).void }
          def initialize(amount:, transfer_id:)
          end

          sig { override.returns({amount: Integer, transfer_id: String}) }
          def to_hash
          end
        end

        class WireTransferInstruction < Increase::BaseModel
          sig { returns(String) }
          attr_accessor :account_number

          sig { returns(Integer) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :message_to_recipient

          sig { returns(String) }
          attr_accessor :routing_number

          sig { returns(String) }
          attr_accessor :transfer_id

          sig do
            params(
              account_number: String,
              amount: Integer,
              message_to_recipient: String,
              routing_number: String,
              transfer_id: String
            ).void
          end
          def initialize(account_number:, amount:, message_to_recipient:, routing_number:, transfer_id:)
          end

          sig do
            override.returns(
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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        PENDING_TRANSACTION = :pending_transaction

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
