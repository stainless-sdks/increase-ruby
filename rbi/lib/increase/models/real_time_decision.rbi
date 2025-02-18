# typed: strong

module Increase
  module Models
    class RealTimeDecision < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthentication)) }
      def card_authentication
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimeDecision::CardAuthentication)).returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthentication))
      end
      def card_authentication=(_)
      end

      sig { returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthenticationChallenge)) }
      def card_authentication_challenge
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimeDecision::CardAuthenticationChallenge)).returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthenticationChallenge))
      end
      def card_authentication_challenge=(_)
      end

      sig { returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthorization)) }
      def card_authorization
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization)).returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthorization))
      end
      def card_authorization=(_)
      end

      sig { returns(Symbol) }
      def category
      end

      sig { params(_: Symbol).returns(Symbol) }
      def category=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(Increase::Models::RealTimeDecision::DigitalWalletAuthentication)) }
      def digital_wallet_authentication
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimeDecision::DigitalWalletAuthentication)).returns(T.nilable(Increase::Models::RealTimeDecision::DigitalWalletAuthentication))
      end
      def digital_wallet_authentication=(_)
      end

      sig { returns(T.nilable(Increase::Models::RealTimeDecision::DigitalWalletToken)) }
      def digital_wallet_token
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimeDecision::DigitalWalletToken)).returns(T.nilable(Increase::Models::RealTimeDecision::DigitalWalletToken))
      end
      def digital_wallet_token=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(Time) }
      def timeout_at
      end

      sig { params(_: Time).returns(Time) }
      def timeout_at=(_)
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
          card_authentication: T.nilable(Increase::Models::RealTimeDecision::CardAuthentication),
          card_authentication_challenge: T.nilable(Increase::Models::RealTimeDecision::CardAuthenticationChallenge),
          card_authorization: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization),
          category: Symbol,
          created_at: Time,
          digital_wallet_authentication: T.nilable(Increase::Models::RealTimeDecision::DigitalWalletAuthentication),
          digital_wallet_token: T.nilable(Increase::Models::RealTimeDecision::DigitalWalletToken),
          status: Symbol,
          timeout_at: Time,
          type: Symbol
        ).void
      end
      def initialize(
        id:,
        card_authentication:,
        card_authentication_challenge:,
        card_authorization:,
        category:,
        created_at:,
        digital_wallet_authentication:,
        digital_wallet_token:,
        status:,
        timeout_at:,
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            card_authentication: T.nilable(Increase::Models::RealTimeDecision::CardAuthentication),
            card_authentication_challenge: T.nilable(Increase::Models::RealTimeDecision::CardAuthenticationChallenge),
            card_authorization: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization),
            category: Symbol,
            created_at: Time,
            digital_wallet_authentication: T.nilable(Increase::Models::RealTimeDecision::DigitalWalletAuthentication),
            digital_wallet_token: T.nilable(Increase::Models::RealTimeDecision::DigitalWalletToken),
            status: Symbol,
            timeout_at: Time,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class CardAuthentication < Increase::BaseModel
        sig { returns(String) }
        def account_id
        end

        sig { params(_: String).returns(String) }
        def account_id=(_)
        end

        sig { returns(String) }
        def card_id
        end

        sig { params(_: String).returns(String) }
        def card_id=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def decision
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def decision=(_)
        end

        sig { returns(String) }
        def upcoming_card_payment_id
        end

        sig { params(_: String).returns(String) }
        def upcoming_card_payment_id=(_)
        end

        sig do
          params(
            account_id: String,
            card_id: String,
            decision: T.nilable(Symbol),
            upcoming_card_payment_id: String
          ).void
        end
        def initialize(account_id:, card_id:, decision:, upcoming_card_payment_id:)
        end

        sig do
          override.returns(
            {
              account_id: String,
              card_id: String,
              decision: T.nilable(Symbol),
              upcoming_card_payment_id: String
            }
          )
        end
        def to_hash
        end

        class Decision < Increase::Enum
          abstract!

          # Approve the authentication attempt without triggering a challenge.
          APPROVE = T.let(:approve, T.nilable(Symbol))

          # Request further validation before approving the authentication attempt.
          CHALLENGE = T.let(:challenge, T.nilable(Symbol))

          # Deny the authentication attempt.
          DENY = T.let(:deny, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class CardAuthenticationChallenge < Increase::BaseModel
        sig { returns(String) }
        def account_id
        end

        sig { params(_: String).returns(String) }
        def account_id=(_)
        end

        sig { returns(String) }
        def card_id
        end

        sig { params(_: String).returns(String) }
        def card_id=(_)
        end

        sig { returns(String) }
        def card_payment_id
        end

        sig { params(_: String).returns(String) }
        def card_payment_id=(_)
        end

        sig { returns(String) }
        def one_time_code
        end

        sig { params(_: String).returns(String) }
        def one_time_code=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def result
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def result=(_)
        end

        sig do
          params(
            account_id: String,
            card_id: String,
            card_payment_id: String,
            one_time_code: String,
            result: T.nilable(Symbol)
          ).void
        end
        def initialize(account_id:, card_id:, card_payment_id:, one_time_code:, result:)
        end

        sig do
          override.returns(
            {
              account_id: String,
              card_id: String,
              card_payment_id: String,
              one_time_code: String,
              result: T.nilable(Symbol)
            }
          )
        end
        def to_hash
        end

        class Result < Increase::Enum
          abstract!

          # Your application successfully delivered the one-time code to the cardholder.
          SUCCESS = T.let(:success, T.nilable(Symbol))

          # Your application was unable to deliver the one-time code to the cardholder.
          FAILURE = T.let(:failure, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class CardAuthorization < Increase::BaseModel
        sig { returns(String) }
        def account_id
        end

        sig { params(_: String).returns(String) }
        def account_id=(_)
        end

        sig { returns(String) }
        def card_id
        end

        sig { params(_: String).returns(String) }
        def card_id=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def decision
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def decision=(_)
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

        sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails) }
        def network_details
        end

        sig do
          params(_: Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails).returns(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails)
        end
        def network_details=(_)
        end

        sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::NetworkIdentifiers) }
        def network_identifiers
        end

        sig do
          params(_: Increase::Models::RealTimeDecision::CardAuthorization::NetworkIdentifiers).returns(Increase::Models::RealTimeDecision::CardAuthorization::NetworkIdentifiers)
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

        sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails) }
        def request_details
        end

        sig do
          params(_: Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails).returns(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails)
        end
        def request_details=(_)
        end

        sig { returns(Integer) }
        def settlement_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def settlement_amount=(_)
        end

        sig { returns(String) }
        def settlement_currency
        end

        sig { params(_: String).returns(String) }
        def settlement_currency=(_)
        end

        sig { returns(T.nilable(String)) }
        def terminal_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def terminal_id=(_)
        end

        sig { returns(String) }
        def upcoming_card_payment_id
        end

        sig { params(_: String).returns(String) }
        def upcoming_card_payment_id=(_)
        end

        sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::Verification) }
        def verification
        end

        sig do
          params(_: Increase::Models::RealTimeDecision::CardAuthorization::Verification).returns(Increase::Models::RealTimeDecision::CardAuthorization::Verification)
        end
        def verification=(_)
        end

        sig do
          params(
            account_id: String,
            card_id: String,
            decision: T.nilable(Symbol),
            digital_wallet_token_id: T.nilable(String),
            direction: Symbol,
            merchant_acceptor_id: String,
            merchant_category_code: String,
            merchant_city: T.nilable(String),
            merchant_country: String,
            merchant_descriptor: String,
            merchant_postal_code: T.nilable(String),
            merchant_state: T.nilable(String),
            network_details: Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails,
            network_identifiers: Increase::Models::RealTimeDecision::CardAuthorization::NetworkIdentifiers,
            network_risk_score: T.nilable(Integer),
            physical_card_id: T.nilable(String),
            presentment_amount: Integer,
            presentment_currency: String,
            processing_category: Symbol,
            request_details: Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails,
            settlement_amount: Integer,
            settlement_currency: String,
            terminal_id: T.nilable(String),
            upcoming_card_payment_id: String,
            verification: Increase::Models::RealTimeDecision::CardAuthorization::Verification
          ).void
        end
        def initialize(
          account_id:,
          card_id:,
          decision:,
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
          request_details:,
          settlement_amount:,
          settlement_currency:,
          terminal_id:,
          upcoming_card_payment_id:,
          verification:
        )
        end

        sig do
          override.returns(
            {
              account_id: String,
              card_id: String,
              decision: T.nilable(Symbol),
              digital_wallet_token_id: T.nilable(String),
              direction: Symbol,
              merchant_acceptor_id: String,
              merchant_category_code: String,
              merchant_city: T.nilable(String),
              merchant_country: String,
              merchant_descriptor: String,
              merchant_postal_code: T.nilable(String),
              merchant_state: T.nilable(String),
              network_details: Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails,
              network_identifiers: Increase::Models::RealTimeDecision::CardAuthorization::NetworkIdentifiers,
              network_risk_score: T.nilable(Integer),
              physical_card_id: T.nilable(String),
              presentment_amount: Integer,
              presentment_currency: String,
              processing_category: Symbol,
              request_details: Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails,
              settlement_amount: Integer,
              settlement_currency: String,
              terminal_id: T.nilable(String),
              upcoming_card_payment_id: String,
              verification: Increase::Models::RealTimeDecision::CardAuthorization::Verification
            }
          )
        end
        def to_hash
        end

        class Decision < Increase::Enum
          abstract!

          # Approve the authorization.
          APPROVE = T.let(:approve, T.nilable(Symbol))

          # Decline the authorization.
          DECLINE = T.let(:decline, T.nilable(Symbol))

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

          sig do
            returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa))
          end
          def visa
          end

          sig do
            params(_: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa)).returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa))
          end
          def visa=(_)
          end

          sig do
            params(
              category: Symbol,
              visa: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa)
            ).void
          end
          def initialize(category:, visa:)
          end

          sig do
            override.returns(
              {
                category: Symbol,
                visa: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa)
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

        class RequestDetails < Increase::BaseModel
          sig { returns(Symbol) }
          def category
          end

          sig { params(_: Symbol).returns(Symbol) }
          def category=(_)
          end

          sig do
            returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::IncrementalAuthorization))
          end
          def incremental_authorization
          end

          sig do
            params(
              _: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::IncrementalAuthorization)
            ).returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::IncrementalAuthorization))
          end
          def incremental_authorization=(_)
          end

          sig { returns(T.nilable(T.anything)) }
          def initial_authorization
          end

          sig { params(_: T.nilable(T.anything)).returns(T.nilable(T.anything)) }
          def initial_authorization=(_)
          end

          sig do
            params(
              category: Symbol,
              incremental_authorization: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::IncrementalAuthorization),
              initial_authorization: T.nilable(T.anything)
            ).void
          end
          def initialize(category:, incremental_authorization:, initial_authorization:)
          end

          sig do
            override.returns(
              {
                category: Symbol,
                incremental_authorization: T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::IncrementalAuthorization),
                initial_authorization: T.nilable(T.anything)
              }
            )
          end
          def to_hash
          end

          class Category < Increase::Enum
            abstract!

            # A regular, standalone authorization.
            INITIAL_AUTHORIZATION = :initial_authorization

            # An incremental request to increase the amount of an existing authorization.
            INCREMENTAL_AUTHORIZATION = :incremental_authorization

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class IncrementalAuthorization < Increase::BaseModel
            sig { returns(String) }
            def card_payment_id
            end

            sig { params(_: String).returns(String) }
            def card_payment_id=(_)
            end

            sig { returns(String) }
            def original_card_authorization_id
            end

            sig { params(_: String).returns(String) }
            def original_card_authorization_id=(_)
            end

            sig { params(card_payment_id: String, original_card_authorization_id: String).void }
            def initialize(card_payment_id:, original_card_authorization_id:)
            end

            sig { override.returns({card_payment_id: String, original_card_authorization_id: String}) }
            def to_hash
            end
          end
        end

        class Verification < Increase::BaseModel
          sig do
            returns(Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode)
          end
          def card_verification_code
          end

          sig do
            params(_: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode).returns(Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode)
          end
          def card_verification_code=(_)
          end

          sig do
            returns(Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress)
          end
          def cardholder_address
          end

          sig do
            params(_: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress).returns(Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress)
          end
          def cardholder_address=(_)
          end

          sig do
            params(
              card_verification_code: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode,
              cardholder_address: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress
            ).void
          end
          def initialize(card_verification_code:, cardholder_address:)
          end

          sig do
            override.returns(
              {
                card_verification_code: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode, cardholder_address: Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress
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

        # A card is being authorized.
        CARD_AUTHORIZATION_REQUESTED = :card_authorization_requested

        # 3DS authentication is requested.
        CARD_AUTHENTICATION_REQUESTED = :card_authentication_requested

        # 3DS authentication challenge requires cardholder involvement.
        CARD_AUTHENTICATION_CHALLENGE_REQUESTED = :card_authentication_challenge_requested

        # A card is being loaded into a digital wallet.
        DIGITAL_WALLET_TOKEN_REQUESTED = :digital_wallet_token_requested

        # A card is being loaded into a digital wallet and requires cardholder authentication.
        DIGITAL_WALLET_AUTHENTICATION_REQUESTED = :digital_wallet_authentication_requested

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class DigitalWalletAuthentication < Increase::BaseModel
        sig { returns(String) }
        def card_id
        end

        sig { params(_: String).returns(String) }
        def card_id=(_)
        end

        sig { returns(Symbol) }
        def channel
        end

        sig { params(_: Symbol).returns(Symbol) }
        def channel=(_)
        end

        sig { returns(Symbol) }
        def digital_wallet
        end

        sig { params(_: Symbol).returns(Symbol) }
        def digital_wallet=(_)
        end

        sig { returns(T.nilable(String)) }
        def email
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def email=(_)
        end

        sig { returns(String) }
        def one_time_passcode
        end

        sig { params(_: String).returns(String) }
        def one_time_passcode=(_)
        end

        sig { returns(T.nilable(String)) }
        def phone
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def result
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def result=(_)
        end

        sig do
          params(
            card_id: String,
            channel: Symbol,
            digital_wallet: Symbol,
            email: T.nilable(String),
            one_time_passcode: String,
            phone: T.nilable(String),
            result: T.nilable(Symbol)
          ).void
        end
        def initialize(card_id:, channel:, digital_wallet:, email:, one_time_passcode:, phone:, result:)
        end

        sig do
          override.returns(
            {
              card_id: String,
              channel: Symbol,
              digital_wallet: Symbol,
              email: T.nilable(String),
              one_time_passcode: String,
              phone: T.nilable(String),
              result: T.nilable(Symbol)
            }
          )
        end
        def to_hash
        end

        class Channel < Increase::Enum
          abstract!

          # Send one-time passcodes over SMS.
          SMS = :sms

          # Send one-time passcodes over email.
          EMAIL = :email

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DigitalWallet < Increase::Enum
          abstract!

          # Apple Pay
          APPLE_PAY = :apple_pay

          # Google Pay
          GOOGLE_PAY = :google_pay

          # Samsung Pay
          SAMSUNG_PAY = :samsung_pay

          # Unknown
          UNKNOWN = :unknown

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Result < Increase::Enum
          abstract!

          # Your application successfully delivered the one-time passcode to the cardholder.
          SUCCESS = T.let(:success, T.nilable(Symbol))

          # Your application failed to deliver the one-time passcode to the cardholder.
          FAILURE = T.let(:failure, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class DigitalWalletToken < Increase::BaseModel
        sig { returns(String) }
        def card_id
        end

        sig { params(_: String).returns(String) }
        def card_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def card_profile_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def card_profile_id=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def decision
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def decision=(_)
        end

        sig { returns(Symbol) }
        def digital_wallet
        end

        sig { params(_: Symbol).returns(Symbol) }
        def digital_wallet=(_)
        end

        sig do
          params(
            card_id: String,
            card_profile_id: T.nilable(String),
            decision: T.nilable(Symbol),
            digital_wallet: Symbol
          ).void
        end
        def initialize(card_id:, card_profile_id:, decision:, digital_wallet:)
        end

        sig do
          override.returns(
            {
              card_id: String,
              card_profile_id: T.nilable(String),
              decision: T.nilable(Symbol),
              digital_wallet: Symbol
            }
          )
        end
        def to_hash
        end

        class Decision < Increase::Enum
          abstract!

          # Approve the provisioning request.
          APPROVE = T.let(:approve, T.nilable(Symbol))

          # Decline the provisioning request.
          DECLINE = T.let(:decline, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class DigitalWallet < Increase::Enum
          abstract!

          # Apple Pay
          APPLE_PAY = :apple_pay

          # Google Pay
          GOOGLE_PAY = :google_pay

          # Samsung Pay
          SAMSUNG_PAY = :samsung_pay

          # Unknown
          UNKNOWN = :unknown

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Status < Increase::Enum
        abstract!

        # The decision is pending action via real-time webhook.
        PENDING = :pending

        # Your webhook actioned the real-time decision.
        RESPONDED = :responded

        # Your webhook failed to respond to the authorization in time.
        TIMED_OUT = :timed_out

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        REAL_TIME_DECISION = :real_time_decision

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
