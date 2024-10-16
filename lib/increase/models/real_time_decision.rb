# frozen_string_literal: true

module Increase
  module Models
    class RealTimeDecision < BaseModel
      # @!attribute [rw] id
      #   The Real-Time Decision identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] card_authentication
      #   Fields related to a 3DS authentication attempt.
      #   @return [Increase::Models::RealTimeDecision::CardAuthentication]
      required :card_authentication, -> { Increase::Models::RealTimeDecision::CardAuthentication }

      # @!attribute [rw] card_authentication_challenge
      #   Fields related to a 3DS authentication attempt.
      #   @return [Increase::Models::RealTimeDecision::CardAuthenticationChallenge]
      required :card_authentication_challenge,
               -> { Increase::Models::RealTimeDecision::CardAuthenticationChallenge }

      # @!attribute [rw] card_authorization
      #   Fields related to a card authorization.
      #   @return [Increase::Models::RealTimeDecision::CardAuthorization]
      required :card_authorization, -> { Increase::Models::RealTimeDecision::CardAuthorization }

      # @!attribute [rw] category
      #   The category of the Real-Time Decision.
      #   @return [Symbol, Increase::Models::RealTimeDecision::Category]
      required :category, enum: -> { Increase::Models::RealTimeDecision::Category }

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Real-Time Decision was created.
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] digital_wallet_authentication
      #   Fields related to a digital wallet authentication attempt.
      #   @return [Increase::Models::RealTimeDecision::DigitalWalletAuthentication]
      required :digital_wallet_authentication,
               -> { Increase::Models::RealTimeDecision::DigitalWalletAuthentication }

      # @!attribute [rw] digital_wallet_token
      #   Fields related to a digital wallet token provisioning attempt.
      #   @return [Increase::Models::RealTimeDecision::DigitalWalletToken]
      required :digital_wallet_token, -> { Increase::Models::RealTimeDecision::DigitalWalletToken }

      # @!attribute [rw] status
      #   The status of the Real-Time Decision.
      #   @return [Symbol, Increase::Models::RealTimeDecision::Status]
      required :status, enum: -> { Increase::Models::RealTimeDecision::Status }

      # @!attribute [rw] timeout_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which your application can no longer respond to the Real-Time Decision.
      #   @return [Time]
      required :timeout_at, Time

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `real_time_decision`.
      #   @return [Symbol, Increase::Models::RealTimeDecision::Type]
      required :type, enum: -> { Increase::Models::RealTimeDecision::Type }

      class CardAuthentication < BaseModel
        # @!attribute [rw] account_id
        #   The identifier of the Account the card belongs to.
        #   @return [String]
        required :account_id, String

        # @!attribute [rw] card_id
        #   The identifier of the Card that is being tokenized.
        #   @return [String]
        required :card_id, String

        # @!attribute [rw] decision
        #   Whether or not the authentication attempt was approved.
        #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthentication::Decision]
        required :decision, enum: -> { Increase::Models::RealTimeDecision::CardAuthentication::Decision }

        # @!attribute [rw] upcoming_card_payment_id
        #   The identifier of the Card Payment this authentication attempt will belong to. Available in the API once the card authentication has completed.
        #   @return [String]
        required :upcoming_card_payment_id, String

        # Whether or not the authentication attempt was approved.
        class Decision < Increase::Enum
          # Approve the authentication attempt without triggering a challenge.
          APPROVE = :approve

          # Request further validation before approving the authentication attempt.
          CHALLENGE = :challenge

          # Deny the authentication attempt.
          DENY = :deny
        end

        # Create a new instance of CardAuthentication from a Hash of raw data.
        #
        # @overload initialize(account_id: nil, card_id: nil, decision: nil, upcoming_card_payment_id: nil)
        # @param account_id [String] The identifier of the Account the card belongs to.
        # @param card_id [String] The identifier of the Card that is being tokenized.
        # @param decision [String] Whether or not the authentication attempt was approved.
        # @param upcoming_card_payment_id [String] The identifier of the Card Payment this authentication attempt will belong to.
        #   Available in the API once the card authentication has completed.
        def initialize(data = {})
          super
        end
      end

      class CardAuthenticationChallenge < BaseModel
        # @!attribute [rw] account_id
        #   The identifier of the Account the card belongs to.
        #   @return [String]
        required :account_id, String

        # @!attribute [rw] card_id
        #   The identifier of the Card that is being tokenized.
        #   @return [String]
        required :card_id, String

        # @!attribute [rw] card_payment_id
        #   The identifier of the Card Payment this authentication challenge attempt belongs to.
        #   @return [String]
        required :card_payment_id, String

        # @!attribute [rw] one_time_code
        #   The one-time code delivered to the cardholder.
        #   @return [String]
        required :one_time_code, String

        # @!attribute [rw] result
        #   Whether or not the challenge was delivered to the cardholder.
        #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthenticationChallenge::Result]
        required :result, enum: -> { Increase::Models::RealTimeDecision::CardAuthenticationChallenge::Result }

        # Whether or not the challenge was delivered to the cardholder.
        class Result < Increase::Enum
          # Your application successfully delivered the one-time code to the cardholder.
          SUCCESS = :success

          # Your application was unable to deliver the one-time code to the cardholder.
          FAILURE = :failure
        end

        # Create a new instance of CardAuthenticationChallenge from a Hash of raw data.
        #
        # @overload initialize(account_id: nil, card_id: nil, card_payment_id: nil, one_time_code: nil, result: nil)
        # @param account_id [String] The identifier of the Account the card belongs to.
        # @param card_id [String] The identifier of the Card that is being tokenized.
        # @param card_payment_id [String] The identifier of the Card Payment this authentication challenge attempt belongs
        #   to.
        # @param one_time_code [String] The one-time code delivered to the cardholder.
        # @param result [String] Whether or not the challenge was delivered to the cardholder.
        def initialize(data = {})
          super
        end
      end

      class CardAuthorization < BaseModel
        # @!attribute [rw] account_id
        #   The identifier of the Account the authorization will debit.
        #   @return [String]
        required :account_id, String

        # @!attribute [rw] card_id
        #   The identifier of the Card that is being authorized.
        #   @return [String]
        required :card_id, String

        # @!attribute [rw] decision
        #   Whether or not the authorization was approved.
        #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Decision]
        required :decision, enum: -> { Increase::Models::RealTimeDecision::CardAuthorization::Decision }

        # @!attribute [rw] digital_wallet_token_id
        #   If the authorization was made via a Digital Wallet Token (such as an Apple Pay purchase), the identifier of the token that was used.
        #   @return [String]
        required :digital_wallet_token_id, String

        # @!attribute [rw] direction
        #   The direction describes the direction the funds will move, either from the cardholder to the merchant or from the merchant to the cardholder.
        #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Direction]
        required :direction, enum: -> { Increase::Models::RealTimeDecision::CardAuthorization::Direction }

        # @!attribute [rw] merchant_acceptor_id
        #   The merchant identifier (commonly abbreviated as MID) of the merchant the card is transacting with.
        #   @return [String]
        required :merchant_acceptor_id, String

        # @!attribute [rw] merchant_category_code
        #   The Merchant Category Code (commonly abbreviated as MCC) of the merchant the card is transacting with.
        #   @return [String]
        required :merchant_category_code, String

        # @!attribute [rw] merchant_city
        #   The city the merchant resides in.
        #   @return [String]
        required :merchant_city, String

        # @!attribute [rw] merchant_country
        #   The country the merchant resides in.
        #   @return [String]
        required :merchant_country, String

        # @!attribute [rw] merchant_descriptor
        #   The merchant descriptor of the merchant the card is transacting with.
        #   @return [String]
        required :merchant_descriptor, String

        # @!attribute [rw] merchant_postal_code
        #   The merchant's postal code. For US merchants this is either a 5-digit or 9-digit ZIP code, where the first 5 and last 4 are separated by a dash.
        #   @return [String]
        required :merchant_postal_code, String

        # @!attribute [rw] merchant_state
        #   The state the merchant resides in.
        #   @return [String]
        required :merchant_state, String

        # @!attribute [rw] network_details
        #   Fields specific to the `network`.
        #   @return [Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails]
        required :network_details,
                 lambda {
                   Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails
                 }

        # @!attribute [rw] network_identifiers
        #   Network-specific identifiers for a specific request or transaction.
        #   @return [Increase::Models::RealTimeDecision::CardAuthorization::NetworkIdentifiers]
        required :network_identifiers,
                 -> { Increase::Models::RealTimeDecision::CardAuthorization::NetworkIdentifiers }

        # @!attribute [rw] network_risk_score
        #   The risk score generated by the card network. For Visa this is the Visa Advanced Authorization risk score, from 0 to 99, where 99 is the riskiest.
        #   @return [Integer]
        required :network_risk_score, Integer

        # @!attribute [rw] physical_card_id
        #   If the authorization was made in-person with a physical card, the Physical Card that was used.
        #   @return [String]
        required :physical_card_id, String

        # @!attribute [rw] presentment_amount
        #   The amount of the attempted authorization in the currency the card user sees at the time of purchase, in the minor unit of that currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :presentment_amount, Integer

        # @!attribute [rw] presentment_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the currency the user sees at the time of purchase.
        #   @return [String]
        required :presentment_currency, String

        # @!attribute [rw] processing_category
        #   The processing category describes the intent behind the authorization, such as whether it was used for bill payments or an automatic fuel dispenser.
        #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory]
        required :processing_category,
                 enum: -> { Increase::Models::RealTimeDecision::CardAuthorization::ProcessingCategory }

        # @!attribute [rw] request_details
        #   Fields specific to the type of request, such as an incremental authorization.
        #   @return [Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails]
        required :request_details,
                 lambda {
                   Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails
                 }

        # @!attribute [rw] settlement_amount
        #   The amount of the attempted authorization in the currency it will be settled in. This currency is the same as that of the Account the card belongs to.
        #   @return [Integer]
        required :settlement_amount, Integer

        # @!attribute [rw] settlement_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the currency the transaction will be settled in.
        #   @return [String]
        required :settlement_currency, String

        # @!attribute [rw] upcoming_card_payment_id
        #   The identifier of the Card Payment this authorization will belong to. Available in the API once the card authorization has completed.
        #   @return [String]
        required :upcoming_card_payment_id, String

        # @!attribute [rw] verification
        #   Fields related to verification of cardholder-provided values.
        #   @return [Increase::Models::RealTimeDecision::CardAuthorization::Verification]
        required :verification, -> { Increase::Models::RealTimeDecision::CardAuthorization::Verification }

        # Whether or not the authorization was approved.
        class Decision < Increase::Enum
          # Approve the authorization.
          APPROVE = :approve

          # Decline the authorization.
          DECLINE = :decline
        end

        # The direction describes the direction the funds will move, either from the cardholder to the merchant or from the merchant to the cardholder.
        class Direction < Increase::Enum
          # A regular card authorization where funds are debited from the cardholder.
          SETTLEMENT = :settlement

          # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
          REFUND = :refund
        end

        class NetworkDetails < BaseModel
          # @!attribute [rw] category
          #   The payment network used to process this card authorization.
          #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Category]
          required :category,
                   enum: lambda {
                     Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Category
                   }

          # @!attribute [rw] visa
          #   Fields specific to the `visa` network.
          #   @return [Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa]
          required :visa, -> { Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa }

          # The payment network used to process this card authorization.
          class Category < Increase::Enum
            # Visa
            VISA = :visa
          end

          class Visa < BaseModel
            # @!attribute [rw] electronic_commerce_indicator
            #   For electronic commerce transactions, this identifies the level of security used in obtaining the customer's payment credential. For mail or telephone order transactions, identifies the type of mail or telephone order.
            #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator]
            required :electronic_commerce_indicator,
                     enum: lambda {
                       Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator
                     }

            # @!attribute [rw] point_of_service_entry_mode
            #   The method used to enter the cardholder's primary account number and card expiration date.
            #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode]
            required :point_of_service_entry_mode,
                     enum: lambda {
                       Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode
                     }

            # For electronic commerce transactions, this identifies the level of security used in obtaining the customer's payment credential. For mail or telephone order transactions, identifies the type of mail or telephone order.
            class ElectronicCommerceIndicator < Increase::Enum
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
              NON_AUTHENTICATED_SECURITY_TRANSACTION_AT_3DS_CAPABLE_MERCHANT = :non_authenticated_security_transaction_at_3ds_capable_merchant

              # Non-authenticated security transaction: Use to identify an electronic commerce transaction that uses data encryption for security however , cardholder authentication is not performed using 3-D Secure.
              NON_AUTHENTICATED_SECURITY_TRANSACTION = :non_authenticated_security_transaction

              # Non-secure transaction: Use to identify an electronic commerce transaction that has no data protection.
              NON_SECURE_TRANSACTION = :non_secure_transaction
            end

            # The method used to enter the cardholder's primary account number and card expiration date.
            class PointOfServiceEntryMode < Increase::Enum
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
            end

            # Create a new instance of Visa from a Hash of raw data.
            #
            # @overload initialize(electronic_commerce_indicator: nil, point_of_service_entry_mode: nil)
            # @param electronic_commerce_indicator [String] For electronic commerce transactions, this identifies the level of security used
            #   in obtaining the customer's payment credential. For mail or telephone order
            #   transactions, identifies the type of mail or telephone order.
            # @param point_of_service_entry_mode [String] The method used to enter the cardholder's primary account number and card
            #   expiration date.
            def initialize(data = {})
              super
            end
          end

          # Create a new instance of NetworkDetails from a Hash of raw data.
          #
          # @overload initialize(category: nil, visa: nil)
          # @param category [String] The payment network used to process this card authorization.
          # @param visa [Object] Fields specific to the `visa` network.
          def initialize(data = {})
            super
          end
        end

        class NetworkIdentifiers < BaseModel
          # @!attribute [rw] retrieval_reference_number
          #   A life-cycle identifier used across e.g., an authorization and a reversal. Expected to be unique per acquirer within a window of time. For some card networks the retrieval reference number includes the trace counter.
          #   @return [String]
          required :retrieval_reference_number, String

          # @!attribute [rw] trace_number
          #   A counter used to verify an individual authorization. Expected to be unique per acquirer within a window of time.
          #   @return [String]
          required :trace_number, String

          # @!attribute [rw] transaction_id
          #   A globally unique transaction identifier provided by the card network, used across multiple life-cycle requests.
          #   @return [String]
          required :transaction_id, String

          # Create a new instance of NetworkIdentifiers from a Hash of raw data.
          #
          # @overload initialize(retrieval_reference_number: nil, trace_number: nil, transaction_id: nil)
          # @param retrieval_reference_number [String] A life-cycle identifier used across e.g., an authorization and a reversal.
          #   Expected to be unique per acquirer within a window of time. For some card
          #   networks the retrieval reference number includes the trace counter.
          # @param trace_number [String] A counter used to verify an individual authorization. Expected to be unique per
          #   acquirer within a window of time.
          # @param transaction_id [String] A globally unique transaction identifier provided by the card network, used
          #   across multiple life-cycle requests.
          def initialize(data = {})
            super
          end
        end

        # The processing category describes the intent behind the authorization, such as whether it was used for bill payments or an automatic fuel dispenser.
        class ProcessingCategory < Increase::Enum
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
        end

        class RequestDetails < BaseModel
          # @!attribute [rw] category
          #   The type of this request (e.g., an initial authorization or an incremental authorization).
          #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::Category]
          required :category,
                   enum: lambda {
                     Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::Category
                   }

          # @!attribute [rw] incremental_authorization
          #   Fields specific to the category `incremental_authorization`.
          #   @return [Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::IncrementalAuthorization]
          required :incremental_authorization,
                   -> { Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::IncrementalAuthorization }

          # @!attribute [rw] initial_authorization
          #   Fields specific to the category `initial_authorization`.
          #   @return [Object]
          required :initial_authorization, Increase::Unknown

          # The type of this request (e.g., an initial authorization or an incremental authorization).
          class Category < Increase::Enum
            # A regular, standalone authorization.
            INITIAL_AUTHORIZATION = :initial_authorization

            # An incremental request to increase the amount of an existing authorization.
            INCREMENTAL_AUTHORIZATION = :incremental_authorization
          end

          class IncrementalAuthorization < BaseModel
            # @!attribute [rw] card_payment_id
            #   The card payment for this authorization and increment.
            #   @return [String]
            required :card_payment_id, String

            # @!attribute [rw] original_card_authorization_id
            #   The identifier of the card authorization this request is attempting to increment.
            #   @return [String]
            required :original_card_authorization_id, String

            # Create a new instance of IncrementalAuthorization from a Hash of raw data.
            #
            # @overload initialize(card_payment_id: nil, original_card_authorization_id: nil)
            # @param card_payment_id [String] The card payment for this authorization and increment.
            # @param original_card_authorization_id [String] The identifier of the card authorization this request is attempting to
            #   increment.
            def initialize(data = {})
              super
            end
          end

          # Create a new instance of RequestDetails from a Hash of raw data.
          #
          # @overload initialize(category: nil, incremental_authorization: nil, initial_authorization: nil)
          # @param category [String] The type of this request (e.g., an initial authorization or an incremental
          #   authorization).
          # @param incremental_authorization [Object] Fields specific to the category `incremental_authorization`.
          # @param initial_authorization [Object] Fields specific to the category `initial_authorization`.
          def initialize(data = {})
            super
          end
        end

        class Verification < BaseModel
          # @!attribute [rw] card_verification_code
          #   Fields related to verification of the Card Verification Code, a 3-digit code on the back of the card.
          #   @return [Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode]
          required :card_verification_code,
                   -> { Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode }

          # @!attribute [rw] cardholder_address
          #   Cardholder address provided in the authorization request and the address on file we verified it against.
          #   @return [Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress]
          required :cardholder_address,
                   -> { Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress }

          class CardVerificationCode < BaseModel
            # @!attribute [rw] result
            #   The result of verifying the Card Verification Code.
            #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode::Result]
            required :result,
                     enum: lambda {
                       Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardVerificationCode::Result
                     }

            # The result of verifying the Card Verification Code.
            class Result < Increase::Enum
              # No card verification code was provided in the authorization request.
              NOT_CHECKED = :not_checked

              # The card verification code matched the one on file.
              MATCH = :match

              # The card verification code did not match the one on file.
              NO_MATCH = :no_match
            end

            # Create a new instance of CardVerificationCode from a Hash of raw data.
            #
            # @overload initialize(result: nil)
            # @param result [String] The result of verifying the Card Verification Code.
            def initialize(data = {})
              super
            end
          end

          class CardholderAddress < BaseModel
            # @!attribute [rw] actual_line1
            #   Line 1 of the address on file for the cardholder.
            #   @return [String]
            required :actual_line1, String

            # @!attribute [rw] actual_postal_code
            #   The postal code of the address on file for the cardholder.
            #   @return [String]
            required :actual_postal_code, String

            # @!attribute [rw] provided_line1
            #   The cardholder address line 1 provided for verification in the authorization request.
            #   @return [String]
            required :provided_line1, String

            # @!attribute [rw] provided_postal_code
            #   The postal code provided for verification in the authorization request.
            #   @return [String]
            required :provided_postal_code, String

            # @!attribute [rw] result
            #   The address verification result returned to the card network.
            #   @return [Symbol, Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result]
            required :result,
                     enum: lambda {
                       Increase::Models::RealTimeDecision::CardAuthorization::Verification::CardholderAddress::Result
                     }

            # The address verification result returned to the card network.
            class Result < Increase::Enum
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
            end

            # Create a new instance of CardholderAddress from a Hash of raw data.
            #
            # @overload initialize(actual_line1: nil, actual_postal_code: nil, provided_line1: nil, provided_postal_code: nil, result: nil)
            # @param actual_line1 [String] Line 1 of the address on file for the cardholder.
            # @param actual_postal_code [String] The postal code of the address on file for the cardholder.
            # @param provided_line1 [String] The cardholder address line 1 provided for verification in the authorization
            #   request.
            # @param provided_postal_code [String] The postal code provided for verification in the authorization request.
            # @param result [String] The address verification result returned to the card network.
            def initialize(data = {})
              super
            end
          end

          # Create a new instance of Verification from a Hash of raw data.
          #
          # @overload initialize(card_verification_code: nil, cardholder_address: nil)
          # @param card_verification_code [Object] Fields related to verification of the Card Verification Code, a 3-digit code on
          #   the back of the card.
          # @param cardholder_address [Object] Cardholder address provided in the authorization request and the address on file
          #   we verified it against.
          def initialize(data = {})
            super
          end
        end

        # Create a new instance of CardAuthorization from a Hash of raw data.
        #
        # @overload initialize(account_id: nil, card_id: nil, decision: nil, digital_wallet_token_id: nil, direction: nil, merchant_acceptor_id: nil, merchant_category_code: nil, merchant_city: nil, merchant_country: nil, merchant_descriptor: nil, merchant_postal_code: nil, merchant_state: nil, network_details: nil, network_identifiers: nil, network_risk_score: nil, physical_card_id: nil, presentment_amount: nil, presentment_currency: nil, processing_category: nil, request_details: nil, settlement_amount: nil, settlement_currency: nil, upcoming_card_payment_id: nil, verification: nil)
        # @param account_id [String] The identifier of the Account the authorization will debit.
        # @param card_id [String] The identifier of the Card that is being authorized.
        # @param decision [String] Whether or not the authorization was approved.
        # @param digital_wallet_token_id [String] If the authorization was made via a Digital Wallet Token (such as an Apple Pay
        #   purchase), the identifier of the token that was used.
        # @param direction [String] The direction describes the direction the funds will move, either from the
        #   cardholder to the merchant or from the merchant to the cardholder.
        # @param merchant_acceptor_id [String] The merchant identifier (commonly abbreviated as MID) of the merchant the card
        #   is transacting with.
        # @param merchant_category_code [String] The Merchant Category Code (commonly abbreviated as MCC) of the merchant the
        #   card is transacting with.
        # @param merchant_city [String] The city the merchant resides in.
        # @param merchant_country [String] The country the merchant resides in.
        # @param merchant_descriptor [String] The merchant descriptor of the merchant the card is transacting with.
        # @param merchant_postal_code [String] The merchant's postal code. For US merchants this is either a 5-digit or 9-digit
        #   ZIP code, where the first 5 and last 4 are separated by a dash.
        # @param merchant_state [String] The state the merchant resides in.
        # @param network_details [Object] Fields specific to the `network`.
        # @param network_identifiers [Object] Network-specific identifiers for a specific request or transaction.
        # @param network_risk_score [Integer] The risk score generated by the card network. For Visa this is the Visa Advanced
        #   Authorization risk score, from 0 to 99, where 99 is the riskiest.
        # @param physical_card_id [String] If the authorization was made in-person with a physical card, the Physical Card
        #   that was used.
        # @param presentment_amount [Integer] The amount of the attempted authorization in the currency the card user sees at
        #   the time of purchase, in the minor unit of that currency. For dollars, for
        #   example, this is cents.
        # @param presentment_currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the currency the
        #   user sees at the time of purchase.
        # @param processing_category [String] The processing category describes the intent behind the authorization, such as
        #   whether it was used for bill payments or an automatic fuel dispenser.
        # @param request_details [Object] Fields specific to the type of request, such as an incremental authorization.
        # @param settlement_amount [Integer] The amount of the attempted authorization in the currency it will be settled in.
        #   This currency is the same as that of the Account the card belongs to.
        # @param settlement_currency [String] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the currency the
        #   transaction will be settled in.
        # @param upcoming_card_payment_id [String] The identifier of the Card Payment this authorization will belong to. Available
        #   in the API once the card authorization has completed.
        # @param verification [Object] Fields related to verification of cardholder-provided values.
        def initialize(data = {})
          super
        end
      end

      # The category of the Real-Time Decision.
      class Category < Increase::Enum
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
      end

      class DigitalWalletAuthentication < BaseModel
        # @!attribute [rw] card_id
        #   The identifier of the Card that is being tokenized.
        #   @return [String]
        required :card_id, String

        # @!attribute [rw] channel
        #   The channel to send the card user their one-time passcode.
        #   @return [Symbol, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Channel]
        required :channel,
                 enum: lambda {
                   Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Channel
                 }

        # @!attribute [rw] digital_wallet
        #   The digital wallet app being used.
        #   @return [Symbol, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::DigitalWallet]
        required :digital_wallet,
                 enum: -> { Increase::Models::RealTimeDecision::DigitalWalletAuthentication::DigitalWallet }

        # @!attribute [rw] email
        #   The email to send the one-time passcode to if `channel` is equal to `email`.
        #   @return [String]
        required :email, String

        # @!attribute [rw] one_time_passcode
        #   The one-time passcode to send the card user.
        #   @return [String]
        required :one_time_passcode, String

        # @!attribute [rw] phone
        #   The phone number to send the one-time passcode to if `channel` is equal to `sms`.
        #   @return [String]
        required :phone, String

        # @!attribute [rw] result
        #   Whether your application successfully delivered the one-time passcode.
        #   @return [Symbol, Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Result]
        required :result, enum: -> { Increase::Models::RealTimeDecision::DigitalWalletAuthentication::Result }

        # The channel to send the card user their one-time passcode.
        class Channel < Increase::Enum
          # Send one-time passcodes over SMS.
          SMS = :sms

          # Send one-time passcodes over email.
          EMAIL = :email
        end

        # The digital wallet app being used.
        class DigitalWallet < Increase::Enum
          # Apple Pay
          APPLE_PAY = :apple_pay

          # Google Pay
          GOOGLE_PAY = :google_pay

          # Samsung Pay
          SAMSUNG_PAY = :samsung_pay

          # Unknown
          UNKNOWN = :unknown
        end

        # Whether your application successfully delivered the one-time passcode.
        class Result < Increase::Enum
          # Your application successfully delivered the one-time passcode to the cardholder.
          SUCCESS = :success

          # Your application failed to deliver the one-time passcode to the cardholder.
          FAILURE = :failure
        end

        # Create a new instance of DigitalWalletAuthentication from a Hash of raw data.
        #
        # @overload initialize(card_id: nil, channel: nil, digital_wallet: nil, email: nil, one_time_passcode: nil, phone: nil, result: nil)
        # @param card_id [String] The identifier of the Card that is being tokenized.
        # @param channel [String] The channel to send the card user their one-time passcode.
        # @param digital_wallet [String] The digital wallet app being used.
        # @param email [String] The email to send the one-time passcode to if `channel` is equal to `email`.
        # @param one_time_passcode [String] The one-time passcode to send the card user.
        # @param phone [String] The phone number to send the one-time passcode to if `channel` is equal to
        #   `sms`.
        # @param result [String] Whether your application successfully delivered the one-time passcode.
        def initialize(data = {})
          super
        end
      end

      class DigitalWalletToken < BaseModel
        # @!attribute [rw] card_id
        #   The identifier of the Card that is being tokenized.
        #   @return [String]
        required :card_id, String

        # @!attribute [rw] card_profile_id
        #   The identifier of the Card Profile that was set via the real time decision. This will be null until the real time decision is responded to or if the real time decision did not set a card profile.
        #   @return [String]
        required :card_profile_id, String

        # @!attribute [rw] decision
        #   Whether or not the provisioning request was approved. This will be null until the real time decision is responded to.
        #   @return [Symbol, Increase::Models::RealTimeDecision::DigitalWalletToken::Decision]
        required :decision, enum: -> { Increase::Models::RealTimeDecision::DigitalWalletToken::Decision }

        # @!attribute [rw] digital_wallet
        #   The digital wallet app being used.
        #   @return [Symbol, Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet]
        required :digital_wallet,
                 enum: -> { Increase::Models::RealTimeDecision::DigitalWalletToken::DigitalWallet }

        # Whether or not the provisioning request was approved. This will be null until the real time decision is responded to.
        class Decision < Increase::Enum
          # Approve the provisioning request.
          APPROVE = :approve

          # Decline the provisioning request.
          DECLINE = :decline
        end

        # The digital wallet app being used.
        class DigitalWallet < Increase::Enum
          # Apple Pay
          APPLE_PAY = :apple_pay

          # Google Pay
          GOOGLE_PAY = :google_pay

          # Samsung Pay
          SAMSUNG_PAY = :samsung_pay

          # Unknown
          UNKNOWN = :unknown
        end

        # Create a new instance of DigitalWalletToken from a Hash of raw data.
        #
        # @overload initialize(card_id: nil, card_profile_id: nil, decision: nil, digital_wallet: nil)
        # @param card_id [String] The identifier of the Card that is being tokenized.
        # @param card_profile_id [String] The identifier of the Card Profile that was set via the real time decision. This
        #   will be null until the real time decision is responded to or if the real time
        #   decision did not set a card profile.
        # @param decision [String] Whether or not the provisioning request was approved. This will be null until
        #   the real time decision is responded to.
        # @param digital_wallet [String] The digital wallet app being used.
        def initialize(data = {})
          super
        end
      end

      # The status of the Real-Time Decision.
      class Status < Increase::Enum
        # The decision is pending action via real-time webhook.
        PENDING = :pending

        # Your webhook actioned the real-time decision.
        RESPONDED = :responded

        # Your webhook failed to respond to the authorization in time.
        TIMED_OUT = :timed_out
      end

      # A constant representing the object's type. For this resource it will always be `real_time_decision`.
      class Type < Increase::Enum
        REAL_TIME_DECISION = :real_time_decision
      end

      # Create a new instance of RealTimeDecision from a Hash of raw data.
      #
      # @overload initialize(id: nil, card_authentication: nil, card_authentication_challenge: nil, card_authorization: nil, category: nil, created_at: nil, digital_wallet_authentication: nil, digital_wallet_token: nil, status: nil, timeout_at: nil, type: nil)
      # @param id [String] The Real-Time Decision identifier.
      # @param card_authentication [Object] Fields related to a 3DS authentication attempt.
      # @param card_authentication_challenge [Object] Fields related to a 3DS authentication attempt.
      # @param card_authorization [Object] Fields related to a card authorization.
      # @param category [String] The category of the Real-Time Decision.
      # @param created_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the Real-Time Decision was created.
      # @param digital_wallet_authentication [Object] Fields related to a digital wallet authentication attempt.
      # @param digital_wallet_token [Object] Fields related to a digital wallet token provisioning attempt.
      # @param status [String] The status of the Real-Time Decision.
      # @param timeout_at [String] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   your application can no longer respond to the Real-Time Decision.
      # @param type [String] A constant representing the object's type. For this resource it will always be
      #   `real_time_decision`.
      def initialize(data = {})
        super
      end
    end
  end
end
