# typed: strong

module Increase
  module Models
    class RealTimeDecision < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthentication)) }
      attr_accessor :card_authentication

      sig { returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthenticationChallenge)) }
      attr_accessor :card_authentication_challenge

      sig { returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthorization)) }
      attr_accessor :card_authorization

      sig { returns(Symbol) }
      attr_accessor :category

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Increase::Models::RealTimeDecision::DigitalWalletAuthentication)) }
      attr_accessor :digital_wallet_authentication

      sig { returns(T.nilable(Increase::Models::RealTimeDecision::DigitalWalletToken)) }
      attr_accessor :digital_wallet_token

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(Time) }
      attr_accessor :timeout_at

      sig { returns(Symbol) }
      attr_accessor :type

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
        attr_accessor :account_id

        sig { returns(String) }
        attr_accessor :card_id

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :decision

        sig { returns(String) }
        attr_accessor :upcoming_card_payment_id

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
        attr_accessor :account_id

        sig { returns(String) }
        attr_accessor :card_id

        sig { returns(String) }
        attr_accessor :card_payment_id

        sig { returns(String) }
        attr_accessor :one_time_code

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :result

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
        attr_accessor :account_id

        sig { returns(String) }
        attr_accessor :card_id

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :decision

        sig { returns(T.nilable(String)) }
        attr_accessor :digital_wallet_token_id

        sig { returns(Symbol) }
        attr_accessor :direction

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

        sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails) }
        attr_accessor :network_details

        sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::NetworkIdentifiers) }
        attr_accessor :network_identifiers

        sig { returns(T.nilable(Integer)) }
        attr_accessor :network_risk_score

        sig { returns(T.nilable(String)) }
        attr_accessor :physical_card_id

        sig { returns(Integer) }
        attr_accessor :presentment_amount

        sig { returns(String) }
        attr_accessor :presentment_currency

        sig { returns(Symbol) }
        attr_accessor :processing_category

        sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails) }
        attr_accessor :request_details

        sig { returns(Integer) }
        attr_accessor :settlement_amount

        sig { returns(String) }
        attr_accessor :settlement_currency

        sig { returns(T.nilable(String)) }
        attr_accessor :terminal_id

        sig { returns(String) }
        attr_accessor :upcoming_card_payment_id

        sig { returns(Increase::Models::RealTimeDecision::CardAuthorization::Verification) }
        attr_accessor :verification

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
          attr_accessor :category

          sig do
            returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa))
          end
          attr_accessor :visa

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

        class RequestDetails < Increase::BaseModel
          sig { returns(Symbol) }
          attr_accessor :category

          sig do
            returns(T.nilable(Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::IncrementalAuthorization))
          end
          attr_accessor :incremental_authorization

          sig { returns(T.nilable(T.anything)) }
          attr_accessor :initial_authorization

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
            attr_accessor :card_payment_id

            sig { returns(String) }
            attr_accessor :original_card_authorization_id

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
          attr_accessor :card_verification_code

          sig do
            returns(Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress)
          end
          attr_accessor :cardholder_address

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
        attr_accessor :card_id

        sig { returns(Symbol) }
        attr_accessor :channel

        sig { returns(Symbol) }
        attr_accessor :digital_wallet

        sig { returns(T.nilable(String)) }
        attr_accessor :email

        sig { returns(String) }
        attr_accessor :one_time_passcode

        sig { returns(T.nilable(String)) }
        attr_accessor :phone

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :result

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
        attr_accessor :card_id

        sig { returns(T.nilable(String)) }
        attr_accessor :card_profile_id

        sig { returns(T.nilable(Symbol)) }
        attr_accessor :decision

        sig { returns(Symbol) }
        attr_accessor :digital_wallet

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
