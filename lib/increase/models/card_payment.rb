# frozen_string_literal: true

module Increase
  module Models
    class CardPayment < Increase::BaseModel
      # @!attribute [rw] id
      #   The Card Payment identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The identifier for the Account the Transaction belongs to.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] card_id
      #   The Card identifier for this payment.
      #   @return [String]
      required :card_id, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Card Payment was created.
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] digital_wallet_token_id
      #   The Digital Wallet Token identifier for this payment.
      #   @return [String]
      required :digital_wallet_token_id, String

      # @!attribute [rw] elements
      #   The interactions related to this card payment.
      #   @return [Array<Increase::Models::CardPayment::Element>]
      required :elements, Increase::ArrayOf.new(-> { Increase::Models::CardPayment::Element })

      # @!attribute [rw] physical_card_id
      #   The Physical Card identifier for this payment.
      #   @return [String]
      required :physical_card_id, String

      # @!attribute [rw] state
      #   The summarized state of this card payment.
      #   @return [Increase::Models::CardPayment::State]
      required :state, -> { Increase::Models::CardPayment::State }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `card_payment`.
      #   @return [Symbol, Increase::Models::CardPayment::Type]
      required :type, enum: -> { Increase::Models::CardPayment::Type }

      class Element < Increase::BaseModel
        # @!attribute [rw] card_authorization
        #   A Card Authorization object. This field will be present in the JSON response if and only if `category` is equal to `card_authorization`.
        #   @return [Increase::Models::CardPayment::Element::CardAuthorization]
        required :card_authorization, -> { Increase::Models::CardPayment::Element::CardAuthorization }

        # @!attribute [rw] card_authorization_expiration
        #   A Card Authorization Expiration object. This field will be present in the JSON response if and only if `category` is equal to `card_authorization_expiration`.
        #   @return [Increase::Models::CardPayment::Element::CardAuthorizationExpiration]
        required :card_authorization_expiration,
                 -> { Increase::Models::CardPayment::Element::CardAuthorizationExpiration }

        # @!attribute [rw] card_decline
        #   A Card Decline object. This field will be present in the JSON response if and only if `category` is equal to `card_decline`.
        #   @return [Increase::Models::CardPayment::Element::CardDecline]
        required :card_decline, -> { Increase::Models::CardPayment::Element::CardDecline }

        # @!attribute [rw] card_fuel_confirmation
        #   A Card Fuel Confirmation object. This field will be present in the JSON response if and only if `category` is equal to `card_fuel_confirmation`.
        #   @return [Increase::Models::CardPayment::Element::CardFuelConfirmation]
        required :card_fuel_confirmation, -> { Increase::Models::CardPayment::Element::CardFuelConfirmation }

        # @!attribute [rw] card_increment
        #   A Card Increment object. This field will be present in the JSON response if and only if `category` is equal to `card_increment`.
        #   @return [Increase::Models::CardPayment::Element::CardIncrement]
        required :card_increment, -> { Increase::Models::CardPayment::Element::CardIncrement }

        # @!attribute [rw] card_refund
        #   A Card Refund object. This field will be present in the JSON response if and only if `category` is equal to `card_refund`.
        #   @return [Increase::Models::CardPayment::Element::CardRefund]
        required :card_refund, -> { Increase::Models::CardPayment::Element::CardRefund }

        # @!attribute [rw] card_reversal
        #   A Card Reversal object. This field will be present in the JSON response if and only if `category` is equal to `card_reversal`.
        #   @return [Increase::Models::CardPayment::Element::CardReversal]
        required :card_reversal, -> { Increase::Models::CardPayment::Element::CardReversal }

        # @!attribute [rw] card_settlement
        #   A Card Settlement object. This field will be present in the JSON response if and only if `category` is equal to `card_settlement`.
        #   @return [Increase::Models::CardPayment::Element::CardSettlement]
        required :card_settlement, -> { Increase::Models::CardPayment::Element::CardSettlement }

        # @!attribute [rw] card_validation
        #   A Card Validation object. This field will be present in the JSON response if and only if `category` is equal to `card_validation`.
        #   @return [Increase::Models::CardPayment::Element::CardValidation]
        required :card_validation, -> { Increase::Models::CardPayment::Element::CardValidation }

        # @!attribute [rw] category
        #   The type of the resource. We may add additional possible values for this enum over time; your application should be able to handle such additions gracefully.
        #   @return [Symbol, Increase::Models::CardPayment::Element::Category]
        required :category, enum: -> { Increase::Models::CardPayment::Element::Category }

        # @!attribute [rw] created_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the card payment element was created.
        #   @return [Time]
        required :created_at, Time

        # @!attribute [rw] other
        #   If the category of this Transaction source is equal to `other`, this field will contain an empty object, otherwise it will contain null.
        #   @return [Object]
        required :other, Increase::Unknown

        class CardAuthorization < Increase::BaseModel
          # @!attribute [rw] id
          #   The Card Authorization identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] actioner
          #   Whether this authorization was approved by Increase, the card network through stand-in processing, or the user through a real-time decision.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Actioner]
          required :actioner, enum: -> { Increase::Models::CardPayment::Element::CardAuthorization::Actioner }

          # @!attribute [rw] amount
          #   The pending amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] card_payment_id
          #   The ID of the Card Payment this transaction belongs to.
          #   @return [String]
          required :card_payment_id, String

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's currency.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Currency]
          required :currency, enum: -> { Increase::Models::CardPayment::Element::CardAuthorization::Currency }

          # @!attribute [rw] digital_wallet_token_id
          #   If the authorization was made via a Digital Wallet Token (such as an Apple Pay purchase), the identifier of the token that was used.
          #   @return [String]
          required :digital_wallet_token_id, String

          # @!attribute [rw] direction
          #   The direction describes the direction the funds will move, either from the cardholder to the merchant or from the merchant to the cardholder.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Direction]
          required :direction,
                   enum: -> {
                     Increase::Models::CardPayment::Element::CardAuthorization::Direction
                   }

          # @!attribute [rw] expires_at
          #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) when this authorization will expire and the pending transaction will be released.
          #   @return [Time]
          required :expires_at, Time

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
          #   @return [Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails]
          required :network_details,
                   -> { Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails }

          # @!attribute [rw] network_identifiers
          #   Network-specific identifiers for a specific request or transaction.
          #   @return [Increase::Models::CardPayment::Element::CardAuthorization::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::CardPayment::Element::CardAuthorization::NetworkIdentifiers }

          # @!attribute [rw] network_risk_score
          #   The risk score generated by the card network. For Visa this is the Visa Advanced Authorization risk score, from 0 to 99, where 99 is the riskiest.
          #   @return [Integer]
          required :network_risk_score, Integer

          # @!attribute [rw] pending_transaction_id
          #   The identifier of the Pending Transaction associated with this Transaction.
          #   @return [String]
          required :pending_transaction_id, String

          # @!attribute [rw] physical_card_id
          #   If the authorization was made in-person with a physical card, the Physical Card that was used.
          #   @return [String]
          required :physical_card_id, String

          # @!attribute [rw] presentment_amount
          #   The pending amount in the minor unit of the transaction's presentment currency.
          #   @return [Integer]
          required :presentment_amount, Integer

          # @!attribute [rw] presentment_currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's presentment currency.
          #   @return [String]
          required :presentment_currency, String

          # @!attribute [rw] processing_category
          #   The processing category describes the intent behind the authorization, such as whether it was used for bill payments or an automatic fuel dispenser.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::ProcessingCategory]
          required :processing_category,
                   enum: -> { Increase::Models::CardPayment::Element::CardAuthorization::ProcessingCategory }

          # @!attribute [rw] real_time_decision_id
          #   The identifier of the Real-Time Decision sent to approve or decline this transaction.
          #   @return [String]
          required :real_time_decision_id, String

          # @!attribute [rw] terminal_id
          #   The terminal identifier (commonly abbreviated as TID) of the terminal the card is transacting with.
          #   @return [String]
          required :terminal_id, String

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `card_authorization`.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Type]
          required :type, enum: -> { Increase::Models::CardPayment::Element::CardAuthorization::Type }

          # @!attribute [rw] verification
          #   Fields related to verification of cardholder-provided values.
          #   @return [Increase::Models::CardPayment::Element::CardAuthorization::Verification]
          required :verification,
                   -> {
                     Increase::Models::CardPayment::Element::CardAuthorization::Verification
                   }

          # Whether this authorization was approved by Increase, the card network through stand-in processing, or the user through a real-time decision.
          class Actioner < Increase::Enum
            # This object was actioned by the user through a real-time decision.
            USER = :user

            # This object was actioned by Increase without user intervention.
            INCREASE = :increase

            # This object was actioned by the network, through stand-in processing.
            NETWORK = :network
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's currency.
          class Currency < Increase::Enum
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
          end

          # The direction describes the direction the funds will move, either from the cardholder to the merchant or from the merchant to the cardholder.
          class Direction < Increase::Enum
            # A regular card authorization where funds are debited from the cardholder.
            SETTLEMENT = :settlement

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND = :refund
          end

          class NetworkDetails < Increase::BaseModel
            # @!attribute [rw] category
            #   The payment network used to process this card authorization.
            #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Category]
            required :category,
                     enum: -> {
                       Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Category
                     }

            # @!attribute [rw] visa
            #   Fields specific to the `visa` network.
            #   @return [Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa]
            required :visa,
                     -> {
                       Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa
                     }

            # The payment network used to process this card authorization.
            class Category < Increase::Enum
              # Visa
              VISA = :visa
            end

            class Visa < Increase::BaseModel
              # @!attribute [rw] electronic_commerce_indicator
              #   For electronic commerce transactions, this identifies the level of security used in obtaining the customer's payment credential. For mail or telephone order transactions, identifies the type of mail or telephone order.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator]
              required :electronic_commerce_indicator,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator
                       }

              # @!attribute [rw] point_of_service_entry_mode
              #   The method used to enter the cardholder's primary account number and card expiration date.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode]
              required :point_of_service_entry_mode,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode
                       }

              # @!attribute [rw] stand_in_processing_reason
              #   Only present when `actioner: network`. Describes why a card authorization was approved or declined by Visa through stand-in processing.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason]
              required :stand_in_processing_reason,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason
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

              # Only present when `actioner: network`. Describes why a card authorization was approved or declined by Visa through stand-in processing.
              class StandInProcessingReason < Increase::Enum
                # Increase failed to process the authorization in a timely manner.
                ISSUER_ERROR = :issuer_error

                # The physical card read had an invalid CVV, dCVV, or authorization request cryptogram.
                INVALID_PHYSICAL_CARD = :invalid_physical_card

                # The 3DS cardholder authentication verification value was invalid.
                INVALID_CARDHOLDER_AUTHENTICATION_VERIFICATION_VALUE = :invalid_cardholder_authentication_verification_value

                # An internal Visa error occurred. Visa uses this reason code for certain expected occurrences as well, such as Application Transaction Counter (ATC) replays.
                INTERNAL_VISA_ERROR = :internal_visa_error

                # The merchant has enabled Visa's Transaction Advisory Service and requires further authentication to perform the transaction. In practice this is often utilized at fuel pumps to tell the cardholder to see the cashier.
                MERCHANT_TRANSACTION_ADVISORY_SERVICE_AUTHENTICATION_REQUIRED = :merchant_transaction_advisory_service_authentication_required

                # An unspecific reason for stand-in processing.
                OTHER = :other
              end

              # @!parse
              #   # Create a new instance of Visa from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :electronic_commerce_indicator For electronic commerce transactions, this identifies the level of security used
              #   #     in obtaining the customer's payment credential. For mail or telephone order
              #   #     transactions, identifies the type of mail or telephone order.
              #   #   @option data [String] :point_of_service_entry_mode The method used to enter the cardholder's primary account number and card
              #   #     expiration date.
              #   #   @option data [String] :stand_in_processing_reason Only present when `actioner: network`. Describes why a card authorization was
              #   #     approved or declined by Visa through stand-in processing.
              #   def initialize(data = {}) = super
            end

            # @!parse
            #   # Create a new instance of NetworkDetails from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :category The payment network used to process this card authorization.
            #   #   @option data [Object] :visa Fields specific to the `visa` network.
            #   def initialize(data = {}) = super
          end

          class NetworkIdentifiers < Increase::BaseModel
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

            # @!parse
            #   # Create a new instance of NetworkIdentifiers from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :retrieval_reference_number A life-cycle identifier used across e.g., an authorization and a reversal.
            #   #     Expected to be unique per acquirer within a window of time. For some card
            #   #     networks the retrieval reference number includes the trace counter.
            #   #   @option data [String] :trace_number A counter used to verify an individual authorization. Expected to be unique per
            #   #     acquirer within a window of time.
            #   #   @option data [String] :transaction_id A globally unique transaction identifier provided by the card network, used
            #   #     across multiple life-cycle requests.
            #   def initialize(data = {}) = super
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

          # A constant representing the object's type. For this resource it will always be `card_authorization`.
          class Type < Increase::Enum
            CARD_AUTHORIZATION = :card_authorization
          end

          class Verification < Increase::BaseModel
            # @!attribute [rw] card_verification_code
            #   Fields related to verification of the Card Verification Code, a 3-digit code on the back of the card.
            #   @return [Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode]
            required :card_verification_code,
                     -> { Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode }

            # @!attribute [rw] cardholder_address
            #   Cardholder address provided in the authorization request and the address on file we verified it against.
            #   @return [Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress]
            required :cardholder_address,
                     -> { Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress }

            class CardVerificationCode < Increase::BaseModel
              # @!attribute [rw] result
              #   The result of verifying the Card Verification Code.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode::Result]
              required :result,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardVerificationCode::Result
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

              # @!parse
              #   # Create a new instance of CardVerificationCode from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :result The result of verifying the Card Verification Code.
              #   def initialize(data = {}) = super
            end

            class CardholderAddress < Increase::BaseModel
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
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress::Result]
              required :result,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardAuthorization::Verification::CardholderAddress::Result
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

              # @!parse
              #   # Create a new instance of CardholderAddress from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :actual_line1 Line 1 of the address on file for the cardholder.
              #   #   @option data [String] :actual_postal_code The postal code of the address on file for the cardholder.
              #   #   @option data [String] :provided_line1 The cardholder address line 1 provided for verification in the authorization
              #   #     request.
              #   #   @option data [String] :provided_postal_code The postal code provided for verification in the authorization request.
              #   #   @option data [String] :result The address verification result returned to the card network.
              #   def initialize(data = {}) = super
            end

            # @!parse
            #   # Create a new instance of Verification from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Object] :card_verification_code Fields related to verification of the Card Verification Code, a 3-digit code on
            #   #     the back of the card.
            #   #   @option data [Object] :cardholder_address Cardholder address provided in the authorization request and the address on file
            #   #     we verified it against.
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of CardAuthorization from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :id The Card Authorization identifier.
          #   #   @option data [String] :actioner Whether this authorization was approved by Increase, the card network through
          #   #     stand-in processing, or the user through a real-time decision.
          #   #   @option data [Integer] :amount The pending amount in the minor unit of the transaction's currency. For dollars,
          #   #     for example, this is cents.
          #   #   @option data [String] :card_payment_id The ID of the Card Payment this transaction belongs to.
          #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   #     transaction's currency.
          #   #   @option data [String] :digital_wallet_token_id If the authorization was made via a Digital Wallet Token (such as an Apple Pay
          #   #     purchase), the identifier of the token that was used.
          #   #   @option data [String] :direction The direction describes the direction the funds will move, either from the
          #   #     cardholder to the merchant or from the merchant to the cardholder.
          #   #   @option data [String] :expires_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) when this authorization
          #   #     will expire and the pending transaction will be released.
          #   #   @option data [String] :merchant_acceptor_id The merchant identifier (commonly abbreviated as MID) of the merchant the card
          #   #     is transacting with.
          #   #   @option data [String] :merchant_category_code The Merchant Category Code (commonly abbreviated as MCC) of the merchant the
          #   #     card is transacting with.
          #   #   @option data [String] :merchant_city The city the merchant resides in.
          #   #   @option data [String] :merchant_country The country the merchant resides in.
          #   #   @option data [String] :merchant_descriptor The merchant descriptor of the merchant the card is transacting with.
          #   #   @option data [String] :merchant_postal_code The merchant's postal code. For US merchants this is either a 5-digit or 9-digit
          #   #     ZIP code, where the first 5 and last 4 are separated by a dash.
          #   #   @option data [String] :merchant_state The state the merchant resides in.
          #   #   @option data [Object] :network_details Fields specific to the `network`.
          #   #   @option data [Object] :network_identifiers Network-specific identifiers for a specific request or transaction.
          #   #   @option data [Integer] :network_risk_score The risk score generated by the card network. For Visa this is the Visa Advanced
          #   #     Authorization risk score, from 0 to 99, where 99 is the riskiest.
          #   #   @option data [String] :pending_transaction_id The identifier of the Pending Transaction associated with this Transaction.
          #   #   @option data [String] :physical_card_id If the authorization was made in-person with a physical card, the Physical Card
          #   #     that was used.
          #   #   @option data [Integer] :presentment_amount The pending amount in the minor unit of the transaction's presentment currency.
          #   #   @option data [String] :presentment_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   #     transaction's presentment currency.
          #   #   @option data [String] :processing_category The processing category describes the intent behind the authorization, such as
          #   #     whether it was used for bill payments or an automatic fuel dispenser.
          #   #   @option data [String] :real_time_decision_id The identifier of the Real-Time Decision sent to approve or decline this
          #   #     transaction.
          #   #   @option data [String] :terminal_id The terminal identifier (commonly abbreviated as TID) of the terminal the card
          #   #     is transacting with.
          #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
          #   #     `card_authorization`.
          #   #   @option data [Object] :verification Fields related to verification of cardholder-provided values.
          #   def initialize(data = {}) = super
        end

        class CardAuthorizationExpiration < Increase::BaseModel
          # @!attribute [rw] id
          #   The Card Authorization Expiration identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] card_authorization_id
          #   The identifier for the Card Authorization this reverses.
          #   @return [String]
          required :card_authorization_id, String

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Currency]
          required :currency,
                   enum: -> { Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Currency }

          # @!attribute [rw] expired_amount
          #   The amount of this authorization expiration in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :expired_amount, Integer

          # @!attribute [rw] network
          #   The card network used to process this card authorization.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Network]
          required :network,
                   enum: -> { Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Network }

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `card_authorization_expiration`.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Type]
          required :type,
                   enum: -> {
                     Increase::Models::CardPayment::Element::CardAuthorizationExpiration::Type
                   }

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
          class Currency < Increase::Enum
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
          end

          # The card network used to process this card authorization.
          class Network < Increase::Enum
            # Visa
            VISA = :visa
          end

          # A constant representing the object's type. For this resource it will always be `card_authorization_expiration`.
          class Type < Increase::Enum
            CARD_AUTHORIZATION_EXPIRATION = :card_authorization_expiration
          end

          # @!parse
          #   # Create a new instance of CardAuthorizationExpiration from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :id The Card Authorization Expiration identifier.
          #   #   @option data [String] :card_authorization_id The identifier for the Card Authorization this reverses.
          #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's
          #   #     currency.
          #   #   @option data [Integer] :expired_amount The amount of this authorization expiration in the minor unit of the
          #   #     transaction's currency. For dollars, for example, this is cents.
          #   #   @option data [String] :network The card network used to process this card authorization.
          #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
          #   #     `card_authorization_expiration`.
          #   def initialize(data = {}) = super
        end

        class CardDecline < Increase::BaseModel
          # @!attribute [rw] id
          #   The Card Decline identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] actioner
          #   Whether this authorization was approved by Increase, the card network through stand-in processing, or the user through a real-time decision.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::Actioner]
          required :actioner, enum: -> { Increase::Models::CardPayment::Element::CardDecline::Actioner }

          # @!attribute [rw] amount
          #   The declined amount in the minor unit of the destination account currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] card_payment_id
          #   The ID of the Card Payment this transaction belongs to.
          #   @return [String]
          required :card_payment_id, String

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination account currency.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::Currency]
          required :currency, enum: -> { Increase::Models::CardPayment::Element::CardDecline::Currency }

          # @!attribute [rw] declined_transaction_id
          #   The identifier of the declined transaction created for this Card Decline.
          #   @return [String]
          required :declined_transaction_id, String

          # @!attribute [rw] digital_wallet_token_id
          #   If the authorization was made via a Digital Wallet Token (such as an Apple Pay purchase), the identifier of the token that was used.
          #   @return [String]
          required :digital_wallet_token_id, String

          # @!attribute [rw] direction
          #   The direction describes the direction the funds will move, either from the cardholder to the merchant or from the merchant to the cardholder.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::Direction]
          required :direction, enum: -> { Increase::Models::CardPayment::Element::CardDecline::Direction }

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
          #   @return [Increase::Models::CardPayment::Element::CardDecline::NetworkDetails]
          required :network_details,
                   -> {
                     Increase::Models::CardPayment::Element::CardDecline::NetworkDetails
                   }

          # @!attribute [rw] network_identifiers
          #   Network-specific identifiers for a specific request or transaction.
          #   @return [Increase::Models::CardPayment::Element::CardDecline::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::CardPayment::Element::CardDecline::NetworkIdentifiers }

          # @!attribute [rw] network_risk_score
          #   The risk score generated by the card network. For Visa this is the Visa Advanced Authorization risk score, from 0 to 99, where 99 is the riskiest.
          #   @return [Integer]
          required :network_risk_score, Integer

          # @!attribute [rw] physical_card_id
          #   If the authorization was made in-person with a physical card, the Physical Card that was used.
          #   @return [String]
          required :physical_card_id, String

          # @!attribute [rw] presentment_amount
          #   The declined amount in the minor unit of the transaction's presentment currency.
          #   @return [Integer]
          required :presentment_amount, Integer

          # @!attribute [rw] presentment_currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's presentment currency.
          #   @return [String]
          required :presentment_currency, String

          # @!attribute [rw] processing_category
          #   The processing category describes the intent behind the authorization, such as whether it was used for bill payments or an automatic fuel dispenser.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::ProcessingCategory]
          required :processing_category,
                   enum: -> { Increase::Models::CardPayment::Element::CardDecline::ProcessingCategory }

          # @!attribute [rw] real_time_decision_id
          #   The identifier of the Real-Time Decision sent to approve or decline this transaction.
          #   @return [String]
          required :real_time_decision_id, String

          # @!attribute [rw] real_time_decision_reason
          #   This is present if a specific decline reason was given in the real-time decision.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::RealTimeDecisionReason]
          required :real_time_decision_reason,
                   enum: -> { Increase::Models::CardPayment::Element::CardDecline::RealTimeDecisionReason }

          # @!attribute [rw] reason
          #   Why the transaction was declined.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::Reason]
          required :reason, enum: -> { Increase::Models::CardPayment::Element::CardDecline::Reason }

          # @!attribute [rw] terminal_id
          #   The terminal identifier (commonly abbreviated as TID) of the terminal the card is transacting with.
          #   @return [String]
          required :terminal_id, String

          # @!attribute [rw] verification
          #   Fields related to verification of cardholder-provided values.
          #   @return [Increase::Models::CardPayment::Element::CardDecline::Verification]
          required :verification, -> { Increase::Models::CardPayment::Element::CardDecline::Verification }

          # Whether this authorization was approved by Increase, the card network through stand-in processing, or the user through a real-time decision.
          class Actioner < Increase::Enum
            # This object was actioned by the user through a real-time decision.
            USER = :user

            # This object was actioned by Increase without user intervention.
            INCREASE = :increase

            # This object was actioned by the network, through stand-in processing.
            NETWORK = :network
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination account currency.
          class Currency < Increase::Enum
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
          end

          # The direction describes the direction the funds will move, either from the cardholder to the merchant or from the merchant to the cardholder.
          class Direction < Increase::Enum
            # A regular card authorization where funds are debited from the cardholder.
            SETTLEMENT = :settlement

            # A refund card authorization, sometimes referred to as a credit voucher authorization, where funds are credited to the cardholder.
            REFUND = :refund
          end

          class NetworkDetails < Increase::BaseModel
            # @!attribute [rw] category
            #   The payment network used to process this card authorization.
            #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Category]
            required :category,
                     enum: -> {
                       Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Category
                     }

            # @!attribute [rw] visa
            #   Fields specific to the `visa` network.
            #   @return [Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa]
            required :visa, -> { Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa }

            # The payment network used to process this card authorization.
            class Category < Increase::Enum
              # Visa
              VISA = :visa
            end

            class Visa < Increase::BaseModel
              # @!attribute [rw] electronic_commerce_indicator
              #   For electronic commerce transactions, this identifies the level of security used in obtaining the customer's payment credential. For mail or telephone order transactions, identifies the type of mail or telephone order.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator]
              required :electronic_commerce_indicator,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator
                       }

              # @!attribute [rw] point_of_service_entry_mode
              #   The method used to enter the cardholder's primary account number and card expiration date.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode]
              required :point_of_service_entry_mode,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode
                       }

              # @!attribute [rw] stand_in_processing_reason
              #   Only present when `actioner: network`. Describes why a card authorization was approved or declined by Visa through stand-in processing.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::StandInProcessingReason]
              required :stand_in_processing_reason,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa::StandInProcessingReason
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

              # Only present when `actioner: network`. Describes why a card authorization was approved or declined by Visa through stand-in processing.
              class StandInProcessingReason < Increase::Enum
                # Increase failed to process the authorization in a timely manner.
                ISSUER_ERROR = :issuer_error

                # The physical card read had an invalid CVV, dCVV, or authorization request cryptogram.
                INVALID_PHYSICAL_CARD = :invalid_physical_card

                # The 3DS cardholder authentication verification value was invalid.
                INVALID_CARDHOLDER_AUTHENTICATION_VERIFICATION_VALUE = :invalid_cardholder_authentication_verification_value

                # An internal Visa error occurred. Visa uses this reason code for certain expected occurrences as well, such as Application Transaction Counter (ATC) replays.
                INTERNAL_VISA_ERROR = :internal_visa_error

                # The merchant has enabled Visa's Transaction Advisory Service and requires further authentication to perform the transaction. In practice this is often utilized at fuel pumps to tell the cardholder to see the cashier.
                MERCHANT_TRANSACTION_ADVISORY_SERVICE_AUTHENTICATION_REQUIRED = :merchant_transaction_advisory_service_authentication_required

                # An unspecific reason for stand-in processing.
                OTHER = :other
              end

              # @!parse
              #   # Create a new instance of Visa from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :electronic_commerce_indicator For electronic commerce transactions, this identifies the level of security used
              #   #     in obtaining the customer's payment credential. For mail or telephone order
              #   #     transactions, identifies the type of mail or telephone order.
              #   #   @option data [String] :point_of_service_entry_mode The method used to enter the cardholder's primary account number and card
              #   #     expiration date.
              #   #   @option data [String] :stand_in_processing_reason Only present when `actioner: network`. Describes why a card authorization was
              #   #     approved or declined by Visa through stand-in processing.
              #   def initialize(data = {}) = super
            end

            # @!parse
            #   # Create a new instance of NetworkDetails from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :category The payment network used to process this card authorization.
            #   #   @option data [Object] :visa Fields specific to the `visa` network.
            #   def initialize(data = {}) = super
          end

          class NetworkIdentifiers < Increase::BaseModel
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

            # @!parse
            #   # Create a new instance of NetworkIdentifiers from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :retrieval_reference_number A life-cycle identifier used across e.g., an authorization and a reversal.
            #   #     Expected to be unique per acquirer within a window of time. For some card
            #   #     networks the retrieval reference number includes the trace counter.
            #   #   @option data [String] :trace_number A counter used to verify an individual authorization. Expected to be unique per
            #   #     acquirer within a window of time.
            #   #   @option data [String] :transaction_id A globally unique transaction identifier provided by the card network, used
            #   #     across multiple life-cycle requests.
            #   def initialize(data = {}) = super
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

          # This is present if a specific decline reason was given in the real-time decision.
          class RealTimeDecisionReason < Increase::Enum
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
          end

          # Why the transaction was declined.
          class Reason < Increase::Enum
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
          end

          class Verification < Increase::BaseModel
            # @!attribute [rw] card_verification_code
            #   Fields related to verification of the Card Verification Code, a 3-digit code on the back of the card.
            #   @return [Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode]
            required :card_verification_code,
                     -> { Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode }

            # @!attribute [rw] cardholder_address
            #   Cardholder address provided in the authorization request and the address on file we verified it against.
            #   @return [Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress]
            required :cardholder_address,
                     -> { Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress }

            class CardVerificationCode < Increase::BaseModel
              # @!attribute [rw] result
              #   The result of verifying the Card Verification Code.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode::Result]
              required :result,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardDecline::Verification::CardVerificationCode::Result
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

              # @!parse
              #   # Create a new instance of CardVerificationCode from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :result The result of verifying the Card Verification Code.
              #   def initialize(data = {}) = super
            end

            class CardholderAddress < Increase::BaseModel
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
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress::Result]
              required :result,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardDecline::Verification::CardholderAddress::Result
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

              # @!parse
              #   # Create a new instance of CardholderAddress from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :actual_line1 Line 1 of the address on file for the cardholder.
              #   #   @option data [String] :actual_postal_code The postal code of the address on file for the cardholder.
              #   #   @option data [String] :provided_line1 The cardholder address line 1 provided for verification in the authorization
              #   #     request.
              #   #   @option data [String] :provided_postal_code The postal code provided for verification in the authorization request.
              #   #   @option data [String] :result The address verification result returned to the card network.
              #   def initialize(data = {}) = super
            end

            # @!parse
            #   # Create a new instance of Verification from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Object] :card_verification_code Fields related to verification of the Card Verification Code, a 3-digit code on
            #   #     the back of the card.
            #   #   @option data [Object] :cardholder_address Cardholder address provided in the authorization request and the address on file
            #   #     we verified it against.
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of CardDecline from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :id The Card Decline identifier.
          #   #   @option data [String] :actioner Whether this authorization was approved by Increase, the card network through
          #   #     stand-in processing, or the user through a real-time decision.
          #   #   @option data [Integer] :amount The declined amount in the minor unit of the destination account currency. For
          #   #     dollars, for example, this is cents.
          #   #   @option data [String] :card_payment_id The ID of the Card Payment this transaction belongs to.
          #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination
          #   #     account currency.
          #   #   @option data [String] :declined_transaction_id The identifier of the declined transaction created for this Card Decline.
          #   #   @option data [String] :digital_wallet_token_id If the authorization was made via a Digital Wallet Token (such as an Apple Pay
          #   #     purchase), the identifier of the token that was used.
          #   #   @option data [String] :direction The direction describes the direction the funds will move, either from the
          #   #     cardholder to the merchant or from the merchant to the cardholder.
          #   #   @option data [String] :merchant_acceptor_id The merchant identifier (commonly abbreviated as MID) of the merchant the card
          #   #     is transacting with.
          #   #   @option data [String] :merchant_category_code The Merchant Category Code (commonly abbreviated as MCC) of the merchant the
          #   #     card is transacting with.
          #   #   @option data [String] :merchant_city The city the merchant resides in.
          #   #   @option data [String] :merchant_country The country the merchant resides in.
          #   #   @option data [String] :merchant_descriptor The merchant descriptor of the merchant the card is transacting with.
          #   #   @option data [String] :merchant_postal_code The merchant's postal code. For US merchants this is either a 5-digit or 9-digit
          #   #     ZIP code, where the first 5 and last 4 are separated by a dash.
          #   #   @option data [String] :merchant_state The state the merchant resides in.
          #   #   @option data [Object] :network_details Fields specific to the `network`.
          #   #   @option data [Object] :network_identifiers Network-specific identifiers for a specific request or transaction.
          #   #   @option data [Integer] :network_risk_score The risk score generated by the card network. For Visa this is the Visa Advanced
          #   #     Authorization risk score, from 0 to 99, where 99 is the riskiest.
          #   #   @option data [String] :physical_card_id If the authorization was made in-person with a physical card, the Physical Card
          #   #     that was used.
          #   #   @option data [Integer] :presentment_amount The declined amount in the minor unit of the transaction's presentment currency.
          #   #   @option data [String] :presentment_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   #     transaction's presentment currency.
          #   #   @option data [String] :processing_category The processing category describes the intent behind the authorization, such as
          #   #     whether it was used for bill payments or an automatic fuel dispenser.
          #   #   @option data [String] :real_time_decision_id The identifier of the Real-Time Decision sent to approve or decline this
          #   #     transaction.
          #   #   @option data [String] :real_time_decision_reason This is present if a specific decline reason was given in the real-time
          #   #     decision.
          #   #   @option data [String] :reason Why the transaction was declined.
          #   #   @option data [String] :terminal_id The terminal identifier (commonly abbreviated as TID) of the terminal the card
          #   #     is transacting with.
          #   #   @option data [Object] :verification Fields related to verification of cardholder-provided values.
          #   def initialize(data = {}) = super
        end

        class CardFuelConfirmation < Increase::BaseModel
          # @!attribute [rw] id
          #   The Card Fuel Confirmation identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] card_authorization_id
          #   The identifier for the Card Authorization this updates.
          #   @return [String]
          required :card_authorization_id, String

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the increment's currency.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardFuelConfirmation::Currency]
          required :currency,
                   enum: -> {
                     Increase::Models::CardPayment::Element::CardFuelConfirmation::Currency
                   }

          # @!attribute [rw] network
          #   The card network used to process this card authorization.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardFuelConfirmation::Network]
          required :network,
                   enum: -> {
                     Increase::Models::CardPayment::Element::CardFuelConfirmation::Network
                   }

          # @!attribute [rw] network_identifiers
          #   Network-specific identifiers for a specific request or transaction.
          #   @return [Increase::Models::CardPayment::Element::CardFuelConfirmation::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::CardPayment::Element::CardFuelConfirmation::NetworkIdentifiers }

          # @!attribute [rw] pending_transaction_id
          #   The identifier of the Pending Transaction associated with this Card Fuel Confirmation.
          #   @return [String]
          required :pending_transaction_id, String

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `card_fuel_confirmation`.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardFuelConfirmation::Type]
          required :type, enum: -> { Increase::Models::CardPayment::Element::CardFuelConfirmation::Type }

          # @!attribute [rw] updated_authorization_amount
          #   The updated authorization amount after this fuel confirmation, in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :updated_authorization_amount, Integer

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the increment's currency.
          class Currency < Increase::Enum
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
          end

          # The card network used to process this card authorization.
          class Network < Increase::Enum
            # Visa
            VISA = :visa
          end

          class NetworkIdentifiers < Increase::BaseModel
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

            # @!parse
            #   # Create a new instance of NetworkIdentifiers from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :retrieval_reference_number A life-cycle identifier used across e.g., an authorization and a reversal.
            #   #     Expected to be unique per acquirer within a window of time. For some card
            #   #     networks the retrieval reference number includes the trace counter.
            #   #   @option data [String] :trace_number A counter used to verify an individual authorization. Expected to be unique per
            #   #     acquirer within a window of time.
            #   #   @option data [String] :transaction_id A globally unique transaction identifier provided by the card network, used
            #   #     across multiple life-cycle requests.
            #   def initialize(data = {}) = super
          end

          # A constant representing the object's type. For this resource it will always be `card_fuel_confirmation`.
          class Type < Increase::Enum
            CARD_FUEL_CONFIRMATION = :card_fuel_confirmation
          end

          # @!parse
          #   # Create a new instance of CardFuelConfirmation from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :id The Card Fuel Confirmation identifier.
          #   #   @option data [String] :card_authorization_id The identifier for the Card Authorization this updates.
          #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the increment's
          #   #     currency.
          #   #   @option data [String] :network The card network used to process this card authorization.
          #   #   @option data [Object] :network_identifiers Network-specific identifiers for a specific request or transaction.
          #   #   @option data [String] :pending_transaction_id The identifier of the Pending Transaction associated with this Card Fuel
          #   #     Confirmation.
          #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
          #   #     `card_fuel_confirmation`.
          #   #   @option data [Integer] :updated_authorization_amount The updated authorization amount after this fuel confirmation, in the minor unit
          #   #     of the transaction's currency. For dollars, for example, this is cents.
          #   def initialize(data = {}) = super
        end

        class CardIncrement < Increase::BaseModel
          # @!attribute [rw] id
          #   The Card Increment identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] actioner
          #   Whether this authorization was approved by Increase, the card network through stand-in processing, or the user through a real-time decision.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardIncrement::Actioner]
          required :actioner, enum: -> { Increase::Models::CardPayment::Element::CardIncrement::Actioner }

          # @!attribute [rw] amount
          #   The amount of this increment in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] card_authorization_id
          #   The identifier for the Card Authorization this increments.
          #   @return [String]
          required :card_authorization_id, String

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the increment's currency.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardIncrement::Currency]
          required :currency, enum: -> { Increase::Models::CardPayment::Element::CardIncrement::Currency }

          # @!attribute [rw] network
          #   The card network used to process this card authorization.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardIncrement::Network]
          required :network, enum: -> { Increase::Models::CardPayment::Element::CardIncrement::Network }

          # @!attribute [rw] network_identifiers
          #   Network-specific identifiers for a specific request or transaction.
          #   @return [Increase::Models::CardPayment::Element::CardIncrement::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::CardPayment::Element::CardIncrement::NetworkIdentifiers }

          # @!attribute [rw] network_risk_score
          #   The risk score generated by the card network. For Visa this is the Visa Advanced Authorization risk score, from 0 to 99, where 99 is the riskiest.
          #   @return [Integer]
          required :network_risk_score, Integer

          # @!attribute [rw] pending_transaction_id
          #   The identifier of the Pending Transaction associated with this Card Increment.
          #   @return [String]
          required :pending_transaction_id, String

          # @!attribute [rw] real_time_decision_id
          #   The identifier of the Real-Time Decision sent to approve or decline this incremental authorization.
          #   @return [String]
          required :real_time_decision_id, String

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `card_increment`.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardIncrement::Type]
          required :type, enum: -> { Increase::Models::CardPayment::Element::CardIncrement::Type }

          # @!attribute [rw] updated_authorization_amount
          #   The updated authorization amount after this increment, in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :updated_authorization_amount, Integer

          # Whether this authorization was approved by Increase, the card network through stand-in processing, or the user through a real-time decision.
          class Actioner < Increase::Enum
            # This object was actioned by the user through a real-time decision.
            USER = :user

            # This object was actioned by Increase without user intervention.
            INCREASE = :increase

            # This object was actioned by the network, through stand-in processing.
            NETWORK = :network
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the increment's currency.
          class Currency < Increase::Enum
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
          end

          # The card network used to process this card authorization.
          class Network < Increase::Enum
            # Visa
            VISA = :visa
          end

          class NetworkIdentifiers < Increase::BaseModel
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

            # @!parse
            #   # Create a new instance of NetworkIdentifiers from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :retrieval_reference_number A life-cycle identifier used across e.g., an authorization and a reversal.
            #   #     Expected to be unique per acquirer within a window of time. For some card
            #   #     networks the retrieval reference number includes the trace counter.
            #   #   @option data [String] :trace_number A counter used to verify an individual authorization. Expected to be unique per
            #   #     acquirer within a window of time.
            #   #   @option data [String] :transaction_id A globally unique transaction identifier provided by the card network, used
            #   #     across multiple life-cycle requests.
            #   def initialize(data = {}) = super
          end

          # A constant representing the object's type. For this resource it will always be `card_increment`.
          class Type < Increase::Enum
            CARD_INCREMENT = :card_increment
          end

          # @!parse
          #   # Create a new instance of CardIncrement from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :id The Card Increment identifier.
          #   #   @option data [String] :actioner Whether this authorization was approved by Increase, the card network through
          #   #     stand-in processing, or the user through a real-time decision.
          #   #   @option data [Integer] :amount The amount of this increment in the minor unit of the transaction's currency.
          #   #     For dollars, for example, this is cents.
          #   #   @option data [String] :card_authorization_id The identifier for the Card Authorization this increments.
          #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the increment's
          #   #     currency.
          #   #   @option data [String] :network The card network used to process this card authorization.
          #   #   @option data [Object] :network_identifiers Network-specific identifiers for a specific request or transaction.
          #   #   @option data [Integer] :network_risk_score The risk score generated by the card network. For Visa this is the Visa Advanced
          #   #     Authorization risk score, from 0 to 99, where 99 is the riskiest.
          #   #   @option data [String] :pending_transaction_id The identifier of the Pending Transaction associated with this Card Increment.
          #   #   @option data [String] :real_time_decision_id The identifier of the Real-Time Decision sent to approve or decline this
          #   #     incremental authorization.
          #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
          #   #     `card_increment`.
          #   #   @option data [Integer] :updated_authorization_amount The updated authorization amount after this increment, in the minor unit of the
          #   #     transaction's currency. For dollars, for example, this is cents.
          #   def initialize(data = {}) = super
        end

        class CardRefund < Increase::BaseModel
          # @!attribute [rw] id
          #   The Card Refund identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] amount
          #   The amount in the minor unit of the transaction's settlement currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] card_payment_id
          #   The ID of the Card Payment this transaction belongs to.
          #   @return [String]
          required :card_payment_id, String

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's settlement currency.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::Currency]
          required :currency, enum: -> { Increase::Models::CardPayment::Element::CardRefund::Currency }

          # @!attribute [rw] interchange
          #   Interchange assessed as a part of this transaciton.
          #   @return [Increase::Models::CardPayment::Element::CardRefund::Interchange]
          required :interchange, -> { Increase::Models::CardPayment::Element::CardRefund::Interchange }

          # @!attribute [rw] merchant_acceptor_id
          #   The merchant identifier (commonly abbreviated as MID) of the merchant the card is transacting with.
          #   @return [String]
          required :merchant_acceptor_id, String

          # @!attribute [rw] merchant_category_code
          #   The 4-digit MCC describing the merchant's business.
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

          # @!attribute [rw] merchant_name
          #   The name of the merchant.
          #   @return [String]
          required :merchant_name, String

          # @!attribute [rw] merchant_postal_code
          #   The merchant's postal code. For US merchants this is always a 5-digit ZIP code.
          #   @return [String]
          required :merchant_postal_code, String

          # @!attribute [rw] merchant_state
          #   The state the merchant resides in.
          #   @return [String]
          required :merchant_state, String

          # @!attribute [rw] network_identifiers
          #   Network-specific identifiers for this refund.
          #   @return [Increase::Models::CardPayment::Element::CardRefund::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::CardPayment::Element::CardRefund::NetworkIdentifiers }

          # @!attribute [rw] presentment_amount
          #   The amount in the minor unit of the transaction's presentment currency.
          #   @return [Integer]
          required :presentment_amount, Integer

          # @!attribute [rw] presentment_currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's presentment currency.
          #   @return [String]
          required :presentment_currency, String

          # @!attribute [rw] purchase_details
          #   Additional details about the card purchase, such as tax and industry-specific fields.
          #   @return [Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails]
          required :purchase_details,
                   -> {
                     Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails
                   }

          # @!attribute [rw] transaction_id
          #   The identifier of the Transaction associated with this Transaction.
          #   @return [String]
          required :transaction_id, String

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `card_refund`.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::Type]
          required :type, enum: -> { Increase::Models::CardPayment::Element::CardRefund::Type }

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's settlement currency.
          class Currency < Increase::Enum
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
          end

          class Interchange < Increase::BaseModel
            # @!attribute [rw] amount
            #   The interchange amount given as a string containing a decimal number. The amount is a positive number if it is credited to Increase (e.g., settlements) and a negative number if it is debited (e.g., refunds).
            #   @return [String]
            required :amount, String

            # @!attribute [rw] code
            #   The card network specific interchange code.
            #   @return [String]
            required :code, String

            # @!attribute [rw] currency
            #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange reimbursement.
            #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::Interchange::Currency]
            required :currency,
                     enum: -> {
                       Increase::Models::CardPayment::Element::CardRefund::Interchange::Currency
                     }

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange reimbursement.
            class Currency < Increase::Enum
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
            end

            # @!parse
            #   # Create a new instance of Interchange from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :amount The interchange amount given as a string containing a decimal number. The amount
            #   #     is a positive number if it is credited to Increase (e.g., settlements) and a
            #   #     negative number if it is debited (e.g., refunds).
            #   #   @option data [String] :code The card network specific interchange code.
            #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange
            #   #     reimbursement.
            #   def initialize(data = {}) = super
          end

          class NetworkIdentifiers < Increase::BaseModel
            # @!attribute [rw] acquirer_business_id
            #   A network assigned business ID that identifies the acquirer that processed this transaction.
            #   @return [String]
            required :acquirer_business_id, String

            # @!attribute [rw] acquirer_reference_number
            #   A globally unique identifier for this settlement.
            #   @return [String]
            required :acquirer_reference_number, String

            # @!attribute [rw] transaction_id
            #   A globally unique transaction identifier provided by the card network, used across multiple life-cycle requests.
            #   @return [String]
            required :transaction_id, String

            # @!parse
            #   # Create a new instance of NetworkIdentifiers from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :acquirer_business_id A network assigned business ID that identifies the acquirer that processed this
            #   #     transaction.
            #   #   @option data [String] :acquirer_reference_number A globally unique identifier for this settlement.
            #   #   @option data [String] :transaction_id A globally unique transaction identifier provided by the card network, used
            #   #     across multiple life-cycle requests.
            #   def initialize(data = {}) = super
          end

          class PurchaseDetails < Increase::BaseModel
            # @!attribute [rw] car_rental
            #   Fields specific to car rentals.
            #   @return [Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental]
            required :car_rental,
                     -> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental }

            # @!attribute [rw] customer_reference_identifier
            #   An identifier from the merchant for the customer or consumer.
            #   @return [String]
            required :customer_reference_identifier, String

            # @!attribute [rw] local_tax_amount
            #   The state or provincial tax amount in minor units.
            #   @return [Integer]
            required :local_tax_amount, Integer

            # @!attribute [rw] local_tax_currency
            #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax assessed.
            #   @return [String]
            required :local_tax_currency, String

            # @!attribute [rw] lodging
            #   Fields specific to lodging.
            #   @return [Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging]
            required :lodging,
                     -> {
                       Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging
                     }

            # @!attribute [rw] national_tax_amount
            #   The national tax amount in minor units.
            #   @return [Integer]
            required :national_tax_amount, Integer

            # @!attribute [rw] national_tax_currency
            #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax assessed.
            #   @return [String]
            required :national_tax_currency, String

            # @!attribute [rw] purchase_identifier
            #   An identifier from the merchant for the purchase to the issuer and cardholder.
            #   @return [String]
            required :purchase_identifier, String

            # @!attribute [rw] purchase_identifier_format
            #   The format of the purchase identifier.
            #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::PurchaseIdentifierFormat]
            required :purchase_identifier_format,
                     enum: -> {
                       Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::PurchaseIdentifierFormat
                     }

            # @!attribute [rw] travel
            #   Fields specific to travel.
            #   @return [Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel]
            required :travel,
                     -> {
                       Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel
                     }

            class CarRental < Increase::BaseModel
              # @!attribute [rw] car_class_code
              #   Code indicating the vehicle's class.
              #   @return [String]
              required :car_class_code, String

              # @!attribute [rw] checkout_date
              #   Date the customer picked up the car or, in the case of a no-show or pre-pay transaction, the scheduled pick up date.
              #   @return [Date]
              required :checkout_date, Date

              # @!attribute [rw] daily_rental_rate_amount
              #   Daily rate being charged for the vehicle.
              #   @return [Integer]
              required :daily_rental_rate_amount, Integer

              # @!attribute [rw] daily_rental_rate_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily rental rate.
              #   @return [String]
              required :daily_rental_rate_currency, String

              # @!attribute [rw] days_rented
              #   Number of days the vehicle was rented.
              #   @return [Integer]
              required :days_rented, Integer

              # @!attribute [rw] extra_charges
              #   Additional charges (gas, late fee, etc.) being billed.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::ExtraCharges]
              required :extra_charges,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::ExtraCharges
                       }

              # @!attribute [rw] fuel_charges_amount
              #   Fuel charges for the vehicle.
              #   @return [Integer]
              required :fuel_charges_amount, Integer

              # @!attribute [rw] fuel_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the fuel charges assessed.
              #   @return [String]
              required :fuel_charges_currency, String

              # @!attribute [rw] insurance_charges_amount
              #   Any insurance being charged for the vehicle.
              #   @return [Integer]
              required :insurance_charges_amount, Integer

              # @!attribute [rw] insurance_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the insurance charges assessed.
              #   @return [String]
              required :insurance_charges_currency, String

              # @!attribute [rw] no_show_indicator
              #   An indicator that the cardholder is being billed for a reserved vehicle that was not actually rented (that is, a "no-show" charge).
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::NoShowIndicator]
              required :no_show_indicator,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::CarRental::NoShowIndicator
                       }

              # @!attribute [rw] one_way_drop_off_charges_amount
              #   Charges for returning the vehicle at a different location than where it was picked up.
              #   @return [Integer]
              required :one_way_drop_off_charges_amount, Integer

              # @!attribute [rw] one_way_drop_off_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the one-way drop-off charges assessed.
              #   @return [String]
              required :one_way_drop_off_charges_currency, String

              # @!attribute [rw] renter_name
              #   Name of the person renting the vehicle.
              #   @return [String]
              required :renter_name, String

              # @!attribute [rw] weekly_rental_rate_amount
              #   Weekly rate being charged for the vehicle.
              #   @return [Integer]
              required :weekly_rental_rate_amount, Integer

              # @!attribute [rw] weekly_rental_rate_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the weekly rental rate.
              #   @return [String]
              required :weekly_rental_rate_currency, String

              # Additional charges (gas, late fee, etc.) being billed.
              class ExtraCharges < Increase::Enum
                # No extra charge
                NO_EXTRA_CHARGE = :no_extra_charge

                # Gas
                GAS = :gas

                # Extra mileage
                EXTRA_MILEAGE = :extra_mileage

                # Late return
                LATE_RETURN = :late_return

                # One way service fee
                ONE_WAY_SERVICE_FEE = :one_way_service_fee

                # Parking violation
                PARKING_VIOLATION = :parking_violation
              end

              # An indicator that the cardholder is being billed for a reserved vehicle that was not actually rented (that is, a "no-show" charge).
              class NoShowIndicator < Increase::Enum
                # Not applicable
                NOT_APPLICABLE = :not_applicable

                # No show for specialized vehicle
                NO_SHOW_FOR_SPECIALIZED_VEHICLE = :no_show_for_specialized_vehicle
              end

              # @!parse
              #   # Create a new instance of CarRental from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :car_class_code Code indicating the vehicle's class.
              #   #   @option data [String] :checkout_date Date the customer picked up the car or, in the case of a no-show or pre-pay
              #   #     transaction, the scheduled pick up date.
              #   #   @option data [Integer] :daily_rental_rate_amount Daily rate being charged for the vehicle.
              #   #   @option data [String] :daily_rental_rate_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily rental
              #   #     rate.
              #   #   @option data [Integer] :days_rented Number of days the vehicle was rented.
              #   #   @option data [String] :extra_charges Additional charges (gas, late fee, etc.) being billed.
              #   #   @option data [Integer] :fuel_charges_amount Fuel charges for the vehicle.
              #   #   @option data [String] :fuel_charges_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the fuel charges
              #   #     assessed.
              #   #   @option data [Integer] :insurance_charges_amount Any insurance being charged for the vehicle.
              #   #   @option data [String] :insurance_charges_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the insurance
              #   #     charges assessed.
              #   #   @option data [String] :no_show_indicator An indicator that the cardholder is being billed for a reserved vehicle that was
              #   #     not actually rented (that is, a "no-show" charge).
              #   #   @option data [Integer] :one_way_drop_off_charges_amount Charges for returning the vehicle at a different location than where it was
              #   #     picked up.
              #   #   @option data [String] :one_way_drop_off_charges_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the one-way
              #   #     drop-off charges assessed.
              #   #   @option data [String] :renter_name Name of the person renting the vehicle.
              #   #   @option data [Integer] :weekly_rental_rate_amount Weekly rate being charged for the vehicle.
              #   #   @option data [String] :weekly_rental_rate_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the weekly
              #   #     rental rate.
              #   def initialize(data = {}) = super
            end

            class Lodging < Increase::BaseModel
              # @!attribute [rw] check_in_date
              #   Date the customer checked in.
              #   @return [Date]
              required :check_in_date, Date

              # @!attribute [rw] daily_room_rate_amount
              #   Daily rate being charged for the room.
              #   @return [Integer]
              required :daily_room_rate_amount, Integer

              # @!attribute [rw] daily_room_rate_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily room rate.
              #   @return [String]
              required :daily_room_rate_currency, String

              # @!attribute [rw] extra_charges
              #   Additional charges (phone, late check-out, etc.) being billed.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::ExtraCharges]
              required :extra_charges,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::ExtraCharges
                       }

              # @!attribute [rw] folio_cash_advances_amount
              #   Folio cash advances for the room.
              #   @return [Integer]
              required :folio_cash_advances_amount, Integer

              # @!attribute [rw] folio_cash_advances_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the folio cash advances.
              #   @return [String]
              required :folio_cash_advances_currency, String

              # @!attribute [rw] food_beverage_charges_amount
              #   Food and beverage charges for the room.
              #   @return [Integer]
              required :food_beverage_charges_amount, Integer

              # @!attribute [rw] food_beverage_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the food and beverage charges.
              #   @return [String]
              required :food_beverage_charges_currency, String

              # @!attribute [rw] no_show_indicator
              #   Indicator that the cardholder is being billed for a reserved room that was not actually used.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::NoShowIndicator]
              required :no_show_indicator,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging::NoShowIndicator
                       }

              # @!attribute [rw] prepaid_expenses_amount
              #   Prepaid expenses being charged for the room.
              #   @return [Integer]
              required :prepaid_expenses_amount, Integer

              # @!attribute [rw] prepaid_expenses_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the prepaid expenses.
              #   @return [String]
              required :prepaid_expenses_currency, String

              # @!attribute [rw] room_nights
              #   Number of nights the room was rented.
              #   @return [Integer]
              required :room_nights, Integer

              # @!attribute [rw] total_room_tax_amount
              #   Total room tax being charged.
              #   @return [Integer]
              required :total_room_tax_amount, Integer

              # @!attribute [rw] total_room_tax_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total room tax.
              #   @return [String]
              required :total_room_tax_currency, String

              # @!attribute [rw] total_tax_amount
              #   Total tax being charged for the room.
              #   @return [Integer]
              required :total_tax_amount, Integer

              # @!attribute [rw] total_tax_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total tax assessed.
              #   @return [String]
              required :total_tax_currency, String

              # Additional charges (phone, late check-out, etc.) being billed.
              class ExtraCharges < Increase::Enum
                # No extra charge
                NO_EXTRA_CHARGE = :no_extra_charge

                # Restaurant
                RESTAURANT = :restaurant

                # Gift shop
                GIFT_SHOP = :gift_shop

                # Mini bar
                MINI_BAR = :mini_bar

                # Telephone
                TELEPHONE = :telephone

                # Other
                OTHER = :other

                # Laundry
                LAUNDRY = :laundry
              end

              # Indicator that the cardholder is being billed for a reserved room that was not actually used.
              class NoShowIndicator < Increase::Enum
                # Not applicable
                NOT_APPLICABLE = :not_applicable

                # No show
                NO_SHOW = :no_show
              end

              # @!parse
              #   # Create a new instance of Lodging from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :check_in_date Date the customer checked in.
              #   #   @option data [Integer] :daily_room_rate_amount Daily rate being charged for the room.
              #   #   @option data [String] :daily_room_rate_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily room
              #   #     rate.
              #   #   @option data [String] :extra_charges Additional charges (phone, late check-out, etc.) being billed.
              #   #   @option data [Integer] :folio_cash_advances_amount Folio cash advances for the room.
              #   #   @option data [String] :folio_cash_advances_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the folio cash
              #   #     advances.
              #   #   @option data [Integer] :food_beverage_charges_amount Food and beverage charges for the room.
              #   #   @option data [String] :food_beverage_charges_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the food and
              #   #     beverage charges.
              #   #   @option data [String] :no_show_indicator Indicator that the cardholder is being billed for a reserved room that was not
              #   #     actually used.
              #   #   @option data [Integer] :prepaid_expenses_amount Prepaid expenses being charged for the room.
              #   #   @option data [String] :prepaid_expenses_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the prepaid
              #   #     expenses.
              #   #   @option data [Integer] :room_nights Number of nights the room was rented.
              #   #   @option data [Integer] :total_room_tax_amount Total room tax being charged.
              #   #   @option data [String] :total_room_tax_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total room
              #   #     tax.
              #   #   @option data [Integer] :total_tax_amount Total tax being charged for the room.
              #   #   @option data [String] :total_tax_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total tax
              #   #     assessed.
              #   def initialize(data = {}) = super
            end

            # The format of the purchase identifier.
            class PurchaseIdentifierFormat < Increase::Enum
              # Free text
              FREE_TEXT = :free_text

              # Order number
              ORDER_NUMBER = :order_number

              # Rental agreement number
              RENTAL_AGREEMENT_NUMBER = :rental_agreement_number

              # Hotel folio number
              HOTEL_FOLIO_NUMBER = :hotel_folio_number

              # Invoice number
              INVOICE_NUMBER = :invoice_number
            end

            class Travel < Increase::BaseModel
              # @!attribute [rw] ancillary
              #   Ancillary purchases in addition to the airfare.
              #   @return [Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary]
              required :ancillary,
                       -> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary }

              # @!attribute [rw] computerized_reservation_system
              #   Indicates the computerized reservation system used to book the ticket.
              #   @return [String]
              required :computerized_reservation_system, String

              # @!attribute [rw] credit_reason_indicator
              #   Indicates the reason for a credit to the cardholder.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator]
              required :credit_reason_indicator,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::CreditReasonIndicator
                       }

              # @!attribute [rw] departure_date
              #   Date of departure.
              #   @return [Date]
              required :departure_date, Date

              # @!attribute [rw] origination_city_airport_code
              #   Code for the originating city or airport.
              #   @return [String]
              required :origination_city_airport_code, String

              # @!attribute [rw] passenger_name
              #   Name of the passenger.
              #   @return [String]
              required :passenger_name, String

              # @!attribute [rw] restricted_ticket_indicator
              #   Indicates whether this ticket is non-refundable.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator]
              required :restricted_ticket_indicator,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::RestrictedTicketIndicator
                       }

              # @!attribute [rw] ticket_change_indicator
              #   Indicates why a ticket was changed.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator]
              required :ticket_change_indicator,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TicketChangeIndicator
                       }

              # @!attribute [rw] ticket_number
              #   Ticket number.
              #   @return [String]
              required :ticket_number, String

              # @!attribute [rw] travel_agency_code
              #   Code for the travel agency if the ticket was issued by a travel agency.
              #   @return [String]
              required :travel_agency_code, String

              # @!attribute [rw] travel_agency_name
              #   Name of the travel agency if the ticket was issued by a travel agency.
              #   @return [String]
              required :travel_agency_name, String

              # @!attribute [rw] trip_legs
              #   Fields specific to each leg of the journey.
              #   @return [Array<Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg>]
              required :trip_legs,
                       Increase::ArrayOf.new(
                         -> {
                           Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg
                         }
                       )

              class Ancillary < Increase::BaseModel
                # @!attribute [rw] connected_ticket_document_number
                #   If this purchase has a connection or relationship to another purchase, such as a baggage fee for a passenger transport ticket, this field should contain the ticket document number for the other purchase.
                #   @return [String]
                required :connected_ticket_document_number, String

                # @!attribute [rw] credit_reason_indicator
                #   Indicates the reason for a credit to the cardholder.
                #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator]
                required :credit_reason_indicator,
                         enum: -> {
                           Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator
                         }

                # @!attribute [rw] passenger_name_or_description
                #   Name of the passenger or description of the ancillary purchase.
                #   @return [String]
                required :passenger_name_or_description, String

                # @!attribute [rw] services
                #   Additional travel charges, such as baggage fees.
                #   @return [Array<Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service>]
                required :services,
                         Increase::ArrayOf.new(
                           -> {
                             Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service
                           }
                         )

                # @!attribute [rw] ticket_document_number
                #   Ticket document number.
                #   @return [String]
                required :ticket_document_number, String

                # Indicates the reason for a credit to the cardholder.
                class CreditReasonIndicator < Increase::Enum
                  # No credit
                  NO_CREDIT = :no_credit

                  # Passenger transport ancillary purchase cancellation
                  PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :passenger_transport_ancillary_purchase_cancellation

                  # Airline ticket and passenger transport ancillary purchase cancellation
                  AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation

                  # Other
                  OTHER = :other
                end

                class Service < Increase::BaseModel
                  # @!attribute [rw] category
                  #   Category of the ancillary service.
                  #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category]
                  required :category,
                           enum: -> {
                             Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service::Category
                           }

                  # @!attribute [rw] sub_category
                  #   Sub-category of the ancillary service, free-form.
                  #   @return [String]
                  required :sub_category, String

                  # Category of the ancillary service.
                  class Category < Increase::Enum
                    # None
                    NONE = :none

                    # Bundled service
                    BUNDLED_SERVICE = :bundled_service

                    # Baggage fee
                    BAGGAGE_FEE = :baggage_fee

                    # Change fee
                    CHANGE_FEE = :change_fee

                    # Cargo
                    CARGO = :cargo

                    # Carbon offset
                    CARBON_OFFSET = :carbon_offset

                    # Frequent flyer
                    FREQUENT_FLYER = :frequent_flyer

                    # Gift card
                    GIFT_CARD = :gift_card

                    # Ground transport
                    GROUND_TRANSPORT = :ground_transport

                    # In-flight entertainment
                    IN_FLIGHT_ENTERTAINMENT = :in_flight_entertainment

                    # Lounge
                    LOUNGE = :lounge

                    # Medical
                    MEDICAL = :medical

                    # Meal beverage
                    MEAL_BEVERAGE = :meal_beverage

                    # Other
                    OTHER = :other

                    # Passenger assist fee
                    PASSENGER_ASSIST_FEE = :passenger_assist_fee

                    # Pets
                    PETS = :pets

                    # Seat fees
                    SEAT_FEES = :seat_fees

                    # Standby
                    STANDBY = :standby

                    # Service fee
                    SERVICE_FEE = :service_fee

                    # Store
                    STORE = :store

                    # Travel service
                    TRAVEL_SERVICE = :travel_service

                    # Unaccompanied travel
                    UNACCOMPANIED_TRAVEL = :unaccompanied_travel

                    # Upgrades
                    UPGRADES = :upgrades

                    # Wi-fi
                    WIFI = :wifi
                  end

                  # @!parse
                  #   # Create a new instance of Service from a Hash of raw data.
                  #   #
                  #   # @param data [Hash{Symbol => Object}] .
                  #   #   @option data [String] :category Category of the ancillary service.
                  #   #   @option data [String] :sub_category Sub-category of the ancillary service, free-form.
                  #   def initialize(data = {}) = super
                end

                # @!parse
                #   # Create a new instance of Ancillary from a Hash of raw data.
                #   #
                #   # @param data [Hash{Symbol => Object}] .
                #   #   @option data [String] :connected_ticket_document_number If this purchase has a connection or relationship to another purchase, such as a
                #   #     baggage fee for a passenger transport ticket, this field should contain the
                #   #     ticket document number for the other purchase.
                #   #   @option data [String] :credit_reason_indicator Indicates the reason for a credit to the cardholder.
                #   #   @option data [String] :passenger_name_or_description Name of the passenger or description of the ancillary purchase.
                #   #   @option data [Array<Object>] :services Additional travel charges, such as baggage fees.
                #   #   @option data [String] :ticket_document_number Ticket document number.
                #   def initialize(data = {}) = super
              end

              # Indicates the reason for a credit to the cardholder.
              class CreditReasonIndicator < Increase::Enum
                # No credit
                NO_CREDIT = :no_credit

                # Passenger transport ancillary purchase cancellation
                PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :passenger_transport_ancillary_purchase_cancellation

                # Airline ticket and passenger transport ancillary purchase cancellation
                AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation

                # Airline ticket cancellation
                AIRLINE_TICKET_CANCELLATION = :airline_ticket_cancellation

                # Other
                OTHER = :other

                # Partial refund of airline ticket
                PARTIAL_REFUND_OF_AIRLINE_TICKET = :partial_refund_of_airline_ticket
              end

              # Indicates whether this ticket is non-refundable.
              class RestrictedTicketIndicator < Increase::Enum
                # No restrictions
                NO_RESTRICTIONS = :no_restrictions

                # Restricted non-refundable ticket
                RESTRICTED_NON_REFUNDABLE_TICKET = :restricted_non_refundable_ticket
              end

              # Indicates why a ticket was changed.
              class TicketChangeIndicator < Increase::Enum
                # None
                NONE = :none

                # Change to existing ticket
                CHANGE_TO_EXISTING_TICKET = :change_to_existing_ticket

                # New ticket
                NEW_TICKET = :new_ticket
              end

              class TripLeg < Increase::BaseModel
                # @!attribute [rw] carrier_code
                #   Carrier code (e.g., United Airlines, Jet Blue, etc.).
                #   @return [String]
                required :carrier_code, String

                # @!attribute [rw] destination_city_airport_code
                #   Code for the destination city or airport.
                #   @return [String]
                required :destination_city_airport_code, String

                # @!attribute [rw] fare_basis_code
                #   Fare basis code.
                #   @return [String]
                required :fare_basis_code, String

                # @!attribute [rw] flight_number
                #   Flight number.
                #   @return [String]
                required :flight_number, String

                # @!attribute [rw] service_class
                #   Service class (e.g., first class, business class, etc.).
                #   @return [String]
                required :service_class, String

                # @!attribute [rw] stop_over_code
                #   Indicates whether a stopover is allowed on this ticket.
                #   @return [Symbol, Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode]
                required :stop_over_code,
                         enum: -> {
                           Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg::StopOverCode
                         }

                # Indicates whether a stopover is allowed on this ticket.
                class StopOverCode < Increase::Enum
                  # None
                  NONE = :none

                  # Stop over allowed
                  STOP_OVER_ALLOWED = :stop_over_allowed

                  # Stop over not allowed
                  STOP_OVER_NOT_ALLOWED = :stop_over_not_allowed
                end

                # @!parse
                #   # Create a new instance of TripLeg from a Hash of raw data.
                #   #
                #   # @param data [Hash{Symbol => Object}] .
                #   #   @option data [String] :carrier_code Carrier code (e.g., United Airlines, Jet Blue, etc.).
                #   #   @option data [String] :destination_city_airport_code Code for the destination city or airport.
                #   #   @option data [String] :fare_basis_code Fare basis code.
                #   #   @option data [String] :flight_number Flight number.
                #   #   @option data [String] :service_class Service class (e.g., first class, business class, etc.).
                #   #   @option data [String] :stop_over_code Indicates whether a stopover is allowed on this ticket.
                #   def initialize(data = {}) = super
              end

              # @!parse
              #   # Create a new instance of Travel from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [Object] :ancillary Ancillary purchases in addition to the airfare.
              #   #   @option data [String] :computerized_reservation_system Indicates the computerized reservation system used to book the ticket.
              #   #   @option data [String] :credit_reason_indicator Indicates the reason for a credit to the cardholder.
              #   #   @option data [String] :departure_date Date of departure.
              #   #   @option data [String] :origination_city_airport_code Code for the originating city or airport.
              #   #   @option data [String] :passenger_name Name of the passenger.
              #   #   @option data [String] :restricted_ticket_indicator Indicates whether this ticket is non-refundable.
              #   #   @option data [String] :ticket_change_indicator Indicates why a ticket was changed.
              #   #   @option data [String] :ticket_number Ticket number.
              #   #   @option data [String] :travel_agency_code Code for the travel agency if the ticket was issued by a travel agency.
              #   #   @option data [String] :travel_agency_name Name of the travel agency if the ticket was issued by a travel agency.
              #   #   @option data [Array<Object>] :trip_legs Fields specific to each leg of the journey.
              #   def initialize(data = {}) = super
            end

            # @!parse
            #   # Create a new instance of PurchaseDetails from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Object] :car_rental Fields specific to car rentals.
            #   #   @option data [String] :customer_reference_identifier An identifier from the merchant for the customer or consumer.
            #   #   @option data [Integer] :local_tax_amount The state or provincial tax amount in minor units.
            #   #   @option data [String] :local_tax_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax
            #   #     assessed.
            #   #   @option data [Object] :lodging Fields specific to lodging.
            #   #   @option data [Integer] :national_tax_amount The national tax amount in minor units.
            #   #   @option data [String] :national_tax_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax
            #   #     assessed.
            #   #   @option data [String] :purchase_identifier An identifier from the merchant for the purchase to the issuer and cardholder.
            #   #   @option data [String] :purchase_identifier_format The format of the purchase identifier.
            #   #   @option data [Object] :travel Fields specific to travel.
            #   def initialize(data = {}) = super
          end

          # A constant representing the object's type. For this resource it will always be `card_refund`.
          class Type < Increase::Enum
            CARD_REFUND = :card_refund
          end

          # @!parse
          #   # Create a new instance of CardRefund from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :id The Card Refund identifier.
          #   #   @option data [Integer] :amount The amount in the minor unit of the transaction's settlement currency. For
          #   #     dollars, for example, this is cents.
          #   #   @option data [String] :card_payment_id The ID of the Card Payment this transaction belongs to.
          #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   #     transaction's settlement currency.
          #   #   @option data [Object] :interchange Interchange assessed as a part of this transaciton.
          #   #   @option data [String] :merchant_acceptor_id The merchant identifier (commonly abbreviated as MID) of the merchant the card
          #   #     is transacting with.
          #   #   @option data [String] :merchant_category_code The 4-digit MCC describing the merchant's business.
          #   #   @option data [String] :merchant_city The city the merchant resides in.
          #   #   @option data [String] :merchant_country The country the merchant resides in.
          #   #   @option data [String] :merchant_name The name of the merchant.
          #   #   @option data [String] :merchant_postal_code The merchant's postal code. For US merchants this is always a 5-digit ZIP code.
          #   #   @option data [String] :merchant_state The state the merchant resides in.
          #   #   @option data [Object] :network_identifiers Network-specific identifiers for this refund.
          #   #   @option data [Integer] :presentment_amount The amount in the minor unit of the transaction's presentment currency.
          #   #   @option data [String] :presentment_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   #     transaction's presentment currency.
          #   #   @option data [Object] :purchase_details Additional details about the card purchase, such as tax and industry-specific
          #   #     fields.
          #   #   @option data [String] :transaction_id The identifier of the Transaction associated with this Transaction.
          #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
          #   #     `card_refund`.
          #   def initialize(data = {}) = super
        end

        class CardReversal < Increase::BaseModel
          # @!attribute [rw] id
          #   The Card Reversal identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] card_authorization_id
          #   The identifier for the Card Authorization this reverses.
          #   @return [String]
          required :card_authorization_id, String

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardReversal::Currency]
          required :currency, enum: -> { Increase::Models::CardPayment::Element::CardReversal::Currency }

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

          # @!attribute [rw] network
          #   The card network used to process this card authorization.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardReversal::Network]
          required :network, enum: -> { Increase::Models::CardPayment::Element::CardReversal::Network }

          # @!attribute [rw] network_identifiers
          #   Network-specific identifiers for a specific request or transaction.
          #   @return [Increase::Models::CardPayment::Element::CardReversal::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::CardPayment::Element::CardReversal::NetworkIdentifiers }

          # @!attribute [rw] pending_transaction_id
          #   The identifier of the Pending Transaction associated with this Card Reversal.
          #   @return [String]
          required :pending_transaction_id, String

          # @!attribute [rw] reversal_amount
          #   The amount of this reversal in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :reversal_amount, Integer

          # @!attribute [rw] reversal_reason
          #   Why this reversal was initiated.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardReversal::ReversalReason]
          required :reversal_reason,
                   enum: -> { Increase::Models::CardPayment::Element::CardReversal::ReversalReason }

          # @!attribute [rw] terminal_id
          #   The terminal identifier (commonly abbreviated as TID) of the terminal the card is transacting with.
          #   @return [String]
          required :terminal_id, String

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `card_reversal`.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardReversal::Type]
          required :type, enum: -> { Increase::Models::CardPayment::Element::CardReversal::Type }

          # @!attribute [rw] updated_authorization_amount
          #   The amount left pending on the Card Authorization in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :updated_authorization_amount, Integer

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's currency.
          class Currency < Increase::Enum
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
          end

          # The card network used to process this card authorization.
          class Network < Increase::Enum
            # Visa
            VISA = :visa
          end

          class NetworkIdentifiers < Increase::BaseModel
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

            # @!parse
            #   # Create a new instance of NetworkIdentifiers from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :retrieval_reference_number A life-cycle identifier used across e.g., an authorization and a reversal.
            #   #     Expected to be unique per acquirer within a window of time. For some card
            #   #     networks the retrieval reference number includes the trace counter.
            #   #   @option data [String] :trace_number A counter used to verify an individual authorization. Expected to be unique per
            #   #     acquirer within a window of time.
            #   #   @option data [String] :transaction_id A globally unique transaction identifier provided by the card network, used
            #   #     across multiple life-cycle requests.
            #   def initialize(data = {}) = super
          end

          # Why this reversal was initiated.
          class ReversalReason < Increase::Enum
            # The Card Reversal was initiated at the customer's request.
            REVERSED_BY_CUSTOMER = :reversed_by_customer

            # The Card Reversal was initiated by the network or acquirer.
            REVERSED_BY_NETWORK_OR_ACQUIRER = :reversed_by_network_or_acquirer

            # The Card Reversal was initiated by the point of sale device.
            REVERSED_BY_POINT_OF_SALE = :reversed_by_point_of_sale

            # The Card Reversal was a partial reversal, for any reason.
            PARTIAL_REVERSAL = :partial_reversal
          end

          # A constant representing the object's type. For this resource it will always be `card_reversal`.
          class Type < Increase::Enum
            CARD_REVERSAL = :card_reversal
          end

          # @!parse
          #   # Create a new instance of CardReversal from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :id The Card Reversal identifier.
          #   #   @option data [String] :card_authorization_id The identifier for the Card Authorization this reverses.
          #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the reversal's
          #   #     currency.
          #   #   @option data [String] :merchant_acceptor_id The merchant identifier (commonly abbreviated as MID) of the merchant the card
          #   #     is transacting with.
          #   #   @option data [String] :merchant_category_code The Merchant Category Code (commonly abbreviated as MCC) of the merchant the
          #   #     card is transacting with.
          #   #   @option data [String] :merchant_city The city the merchant resides in.
          #   #   @option data [String] :merchant_country The country the merchant resides in.
          #   #   @option data [String] :merchant_descriptor The merchant descriptor of the merchant the card is transacting with.
          #   #   @option data [String] :merchant_postal_code The merchant's postal code. For US merchants this is either a 5-digit or 9-digit
          #   #     ZIP code, where the first 5 and last 4 are separated by a dash.
          #   #   @option data [String] :merchant_state The state the merchant resides in.
          #   #   @option data [String] :network The card network used to process this card authorization.
          #   #   @option data [Object] :network_identifiers Network-specific identifiers for a specific request or transaction.
          #   #   @option data [String] :pending_transaction_id The identifier of the Pending Transaction associated with this Card Reversal.
          #   #   @option data [Integer] :reversal_amount The amount of this reversal in the minor unit of the transaction's currency. For
          #   #     dollars, for example, this is cents.
          #   #   @option data [String] :reversal_reason Why this reversal was initiated.
          #   #   @option data [String] :terminal_id The terminal identifier (commonly abbreviated as TID) of the terminal the card
          #   #     is transacting with.
          #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
          #   #     `card_reversal`.
          #   #   @option data [Integer] :updated_authorization_amount The amount left pending on the Card Authorization in the minor unit of the
          #   #     transaction's currency. For dollars, for example, this is cents.
          #   def initialize(data = {}) = super
        end

        class CardSettlement < Increase::BaseModel
          # @!attribute [rw] id
          #   The Card Settlement identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] amount
          #   The amount in the minor unit of the transaction's settlement currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] card_authorization
          #   The Card Authorization that was created prior to this Card Settlement, if one exists.
          #   @return [String]
          required :card_authorization, String

          # @!attribute [rw] card_payment_id
          #   The ID of the Card Payment this transaction belongs to.
          #   @return [String]
          required :card_payment_id, String

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's settlement currency.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::Currency]
          required :currency, enum: -> { Increase::Models::CardPayment::Element::CardSettlement::Currency }

          # @!attribute [rw] interchange
          #   Interchange assessed as a part of this transaciton.
          #   @return [Increase::Models::CardPayment::Element::CardSettlement::Interchange]
          required :interchange, -> { Increase::Models::CardPayment::Element::CardSettlement::Interchange }

          # @!attribute [rw] merchant_acceptor_id
          #   The merchant identifier (commonly abbreviated as MID) of the merchant the card is transacting with.
          #   @return [String]
          required :merchant_acceptor_id, String

          # @!attribute [rw] merchant_category_code
          #   The 4-digit MCC describing the merchant's business.
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

          # @!attribute [rw] merchant_name
          #   The name of the merchant.
          #   @return [String]
          required :merchant_name, String

          # @!attribute [rw] merchant_postal_code
          #   The merchant's postal code. For US merchants this is always a 5-digit ZIP code.
          #   @return [String]
          required :merchant_postal_code, String

          # @!attribute [rw] merchant_state
          #   The state the merchant resides in.
          #   @return [String]
          required :merchant_state, String

          # @!attribute [rw] network_identifiers
          #   Network-specific identifiers for this refund.
          #   @return [Increase::Models::CardPayment::Element::CardSettlement::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::CardPayment::Element::CardSettlement::NetworkIdentifiers }

          # @!attribute [rw] pending_transaction_id
          #   The identifier of the Pending Transaction associated with this Transaction.
          #   @return [String]
          required :pending_transaction_id, String

          # @!attribute [rw] presentment_amount
          #   The amount in the minor unit of the transaction's presentment currency.
          #   @return [Integer]
          required :presentment_amount, Integer

          # @!attribute [rw] presentment_currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's presentment currency.
          #   @return [String]
          required :presentment_currency, String

          # @!attribute [rw] purchase_details
          #   Additional details about the card purchase, such as tax and industry-specific fields.
          #   @return [Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails]
          required :purchase_details,
                   -> {
                     Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails
                   }

          # @!attribute [rw] transaction_id
          #   The identifier of the Transaction associated with this Transaction.
          #   @return [String]
          required :transaction_id, String

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `card_settlement`.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::Type]
          required :type, enum: -> { Increase::Models::CardPayment::Element::CardSettlement::Type }

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's settlement currency.
          class Currency < Increase::Enum
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
          end

          class Interchange < Increase::BaseModel
            # @!attribute [rw] amount
            #   The interchange amount given as a string containing a decimal number. The amount is a positive number if it is credited to Increase (e.g., settlements) and a negative number if it is debited (e.g., refunds).
            #   @return [String]
            required :amount, String

            # @!attribute [rw] code
            #   The card network specific interchange code.
            #   @return [String]
            required :code, String

            # @!attribute [rw] currency
            #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange reimbursement.
            #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::Interchange::Currency]
            required :currency,
                     enum: -> {
                       Increase::Models::CardPayment::Element::CardSettlement::Interchange::Currency
                     }

            # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange reimbursement.
            class Currency < Increase::Enum
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
            end

            # @!parse
            #   # Create a new instance of Interchange from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :amount The interchange amount given as a string containing a decimal number. The amount
            #   #     is a positive number if it is credited to Increase (e.g., settlements) and a
            #   #     negative number if it is debited (e.g., refunds).
            #   #   @option data [String] :code The card network specific interchange code.
            #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the interchange
            #   #     reimbursement.
            #   def initialize(data = {}) = super
          end

          class NetworkIdentifiers < Increase::BaseModel
            # @!attribute [rw] acquirer_business_id
            #   A network assigned business ID that identifies the acquirer that processed this transaction.
            #   @return [String]
            required :acquirer_business_id, String

            # @!attribute [rw] acquirer_reference_number
            #   A globally unique identifier for this settlement.
            #   @return [String]
            required :acquirer_reference_number, String

            # @!attribute [rw] transaction_id
            #   A globally unique transaction identifier provided by the card network, used across multiple life-cycle requests.
            #   @return [String]
            required :transaction_id, String

            # @!parse
            #   # Create a new instance of NetworkIdentifiers from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :acquirer_business_id A network assigned business ID that identifies the acquirer that processed this
            #   #     transaction.
            #   #   @option data [String] :acquirer_reference_number A globally unique identifier for this settlement.
            #   #   @option data [String] :transaction_id A globally unique transaction identifier provided by the card network, used
            #   #     across multiple life-cycle requests.
            #   def initialize(data = {}) = super
          end

          class PurchaseDetails < Increase::BaseModel
            # @!attribute [rw] car_rental
            #   Fields specific to car rentals.
            #   @return [Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental]
            required :car_rental,
                     -> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental }

            # @!attribute [rw] customer_reference_identifier
            #   An identifier from the merchant for the customer or consumer.
            #   @return [String]
            required :customer_reference_identifier, String

            # @!attribute [rw] local_tax_amount
            #   The state or provincial tax amount in minor units.
            #   @return [Integer]
            required :local_tax_amount, Integer

            # @!attribute [rw] local_tax_currency
            #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax assessed.
            #   @return [String]
            required :local_tax_currency, String

            # @!attribute [rw] lodging
            #   Fields specific to lodging.
            #   @return [Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging]
            required :lodging,
                     -> {
                       Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging
                     }

            # @!attribute [rw] national_tax_amount
            #   The national tax amount in minor units.
            #   @return [Integer]
            required :national_tax_amount, Integer

            # @!attribute [rw] national_tax_currency
            #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax assessed.
            #   @return [String]
            required :national_tax_currency, String

            # @!attribute [rw] purchase_identifier
            #   An identifier from the merchant for the purchase to the issuer and cardholder.
            #   @return [String]
            required :purchase_identifier, String

            # @!attribute [rw] purchase_identifier_format
            #   The format of the purchase identifier.
            #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat]
            required :purchase_identifier_format,
                     enum: -> {
                       Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::PurchaseIdentifierFormat
                     }

            # @!attribute [rw] travel
            #   Fields specific to travel.
            #   @return [Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel]
            required :travel,
                     -> {
                       Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel
                     }

            class CarRental < Increase::BaseModel
              # @!attribute [rw] car_class_code
              #   Code indicating the vehicle's class.
              #   @return [String]
              required :car_class_code, String

              # @!attribute [rw] checkout_date
              #   Date the customer picked up the car or, in the case of a no-show or pre-pay transaction, the scheduled pick up date.
              #   @return [Date]
              required :checkout_date, Date

              # @!attribute [rw] daily_rental_rate_amount
              #   Daily rate being charged for the vehicle.
              #   @return [Integer]
              required :daily_rental_rate_amount, Integer

              # @!attribute [rw] daily_rental_rate_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily rental rate.
              #   @return [String]
              required :daily_rental_rate_currency, String

              # @!attribute [rw] days_rented
              #   Number of days the vehicle was rented.
              #   @return [Integer]
              required :days_rented, Integer

              # @!attribute [rw] extra_charges
              #   Additional charges (gas, late fee, etc.) being billed.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::ExtraCharges]
              required :extra_charges,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::ExtraCharges
                       }

              # @!attribute [rw] fuel_charges_amount
              #   Fuel charges for the vehicle.
              #   @return [Integer]
              required :fuel_charges_amount, Integer

              # @!attribute [rw] fuel_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the fuel charges assessed.
              #   @return [String]
              required :fuel_charges_currency, String

              # @!attribute [rw] insurance_charges_amount
              #   Any insurance being charged for the vehicle.
              #   @return [Integer]
              required :insurance_charges_amount, Integer

              # @!attribute [rw] insurance_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the insurance charges assessed.
              #   @return [String]
              required :insurance_charges_currency, String

              # @!attribute [rw] no_show_indicator
              #   An indicator that the cardholder is being billed for a reserved vehicle that was not actually rented (that is, a "no-show" charge).
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator]
              required :no_show_indicator,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::CarRental::NoShowIndicator
                       }

              # @!attribute [rw] one_way_drop_off_charges_amount
              #   Charges for returning the vehicle at a different location than where it was picked up.
              #   @return [Integer]
              required :one_way_drop_off_charges_amount, Integer

              # @!attribute [rw] one_way_drop_off_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the one-way drop-off charges assessed.
              #   @return [String]
              required :one_way_drop_off_charges_currency, String

              # @!attribute [rw] renter_name
              #   Name of the person renting the vehicle.
              #   @return [String]
              required :renter_name, String

              # @!attribute [rw] weekly_rental_rate_amount
              #   Weekly rate being charged for the vehicle.
              #   @return [Integer]
              required :weekly_rental_rate_amount, Integer

              # @!attribute [rw] weekly_rental_rate_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the weekly rental rate.
              #   @return [String]
              required :weekly_rental_rate_currency, String

              # Additional charges (gas, late fee, etc.) being billed.
              class ExtraCharges < Increase::Enum
                # No extra charge
                NO_EXTRA_CHARGE = :no_extra_charge

                # Gas
                GAS = :gas

                # Extra mileage
                EXTRA_MILEAGE = :extra_mileage

                # Late return
                LATE_RETURN = :late_return

                # One way service fee
                ONE_WAY_SERVICE_FEE = :one_way_service_fee

                # Parking violation
                PARKING_VIOLATION = :parking_violation
              end

              # An indicator that the cardholder is being billed for a reserved vehicle that was not actually rented (that is, a "no-show" charge).
              class NoShowIndicator < Increase::Enum
                # Not applicable
                NOT_APPLICABLE = :not_applicable

                # No show for specialized vehicle
                NO_SHOW_FOR_SPECIALIZED_VEHICLE = :no_show_for_specialized_vehicle
              end

              # @!parse
              #   # Create a new instance of CarRental from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :car_class_code Code indicating the vehicle's class.
              #   #   @option data [String] :checkout_date Date the customer picked up the car or, in the case of a no-show or pre-pay
              #   #     transaction, the scheduled pick up date.
              #   #   @option data [Integer] :daily_rental_rate_amount Daily rate being charged for the vehicle.
              #   #   @option data [String] :daily_rental_rate_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily rental
              #   #     rate.
              #   #   @option data [Integer] :days_rented Number of days the vehicle was rented.
              #   #   @option data [String] :extra_charges Additional charges (gas, late fee, etc.) being billed.
              #   #   @option data [Integer] :fuel_charges_amount Fuel charges for the vehicle.
              #   #   @option data [String] :fuel_charges_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the fuel charges
              #   #     assessed.
              #   #   @option data [Integer] :insurance_charges_amount Any insurance being charged for the vehicle.
              #   #   @option data [String] :insurance_charges_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the insurance
              #   #     charges assessed.
              #   #   @option data [String] :no_show_indicator An indicator that the cardholder is being billed for a reserved vehicle that was
              #   #     not actually rented (that is, a "no-show" charge).
              #   #   @option data [Integer] :one_way_drop_off_charges_amount Charges for returning the vehicle at a different location than where it was
              #   #     picked up.
              #   #   @option data [String] :one_way_drop_off_charges_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the one-way
              #   #     drop-off charges assessed.
              #   #   @option data [String] :renter_name Name of the person renting the vehicle.
              #   #   @option data [Integer] :weekly_rental_rate_amount Weekly rate being charged for the vehicle.
              #   #   @option data [String] :weekly_rental_rate_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the weekly
              #   #     rental rate.
              #   def initialize(data = {}) = super
            end

            class Lodging < Increase::BaseModel
              # @!attribute [rw] check_in_date
              #   Date the customer checked in.
              #   @return [Date]
              required :check_in_date, Date

              # @!attribute [rw] daily_room_rate_amount
              #   Daily rate being charged for the room.
              #   @return [Integer]
              required :daily_room_rate_amount, Integer

              # @!attribute [rw] daily_room_rate_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily room rate.
              #   @return [String]
              required :daily_room_rate_currency, String

              # @!attribute [rw] extra_charges
              #   Additional charges (phone, late check-out, etc.) being billed.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::ExtraCharges]
              required :extra_charges,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::ExtraCharges
                       }

              # @!attribute [rw] folio_cash_advances_amount
              #   Folio cash advances for the room.
              #   @return [Integer]
              required :folio_cash_advances_amount, Integer

              # @!attribute [rw] folio_cash_advances_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the folio cash advances.
              #   @return [String]
              required :folio_cash_advances_currency, String

              # @!attribute [rw] food_beverage_charges_amount
              #   Food and beverage charges for the room.
              #   @return [Integer]
              required :food_beverage_charges_amount, Integer

              # @!attribute [rw] food_beverage_charges_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the food and beverage charges.
              #   @return [String]
              required :food_beverage_charges_currency, String

              # @!attribute [rw] no_show_indicator
              #   Indicator that the cardholder is being billed for a reserved room that was not actually used.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator]
              required :no_show_indicator,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging::NoShowIndicator
                       }

              # @!attribute [rw] prepaid_expenses_amount
              #   Prepaid expenses being charged for the room.
              #   @return [Integer]
              required :prepaid_expenses_amount, Integer

              # @!attribute [rw] prepaid_expenses_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the prepaid expenses.
              #   @return [String]
              required :prepaid_expenses_currency, String

              # @!attribute [rw] room_nights
              #   Number of nights the room was rented.
              #   @return [Integer]
              required :room_nights, Integer

              # @!attribute [rw] total_room_tax_amount
              #   Total room tax being charged.
              #   @return [Integer]
              required :total_room_tax_amount, Integer

              # @!attribute [rw] total_room_tax_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total room tax.
              #   @return [String]
              required :total_room_tax_currency, String

              # @!attribute [rw] total_tax_amount
              #   Total tax being charged for the room.
              #   @return [Integer]
              required :total_tax_amount, Integer

              # @!attribute [rw] total_tax_currency
              #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total tax assessed.
              #   @return [String]
              required :total_tax_currency, String

              # Additional charges (phone, late check-out, etc.) being billed.
              class ExtraCharges < Increase::Enum
                # No extra charge
                NO_EXTRA_CHARGE = :no_extra_charge

                # Restaurant
                RESTAURANT = :restaurant

                # Gift shop
                GIFT_SHOP = :gift_shop

                # Mini bar
                MINI_BAR = :mini_bar

                # Telephone
                TELEPHONE = :telephone

                # Other
                OTHER = :other

                # Laundry
                LAUNDRY = :laundry
              end

              # Indicator that the cardholder is being billed for a reserved room that was not actually used.
              class NoShowIndicator < Increase::Enum
                # Not applicable
                NOT_APPLICABLE = :not_applicable

                # No show
                NO_SHOW = :no_show
              end

              # @!parse
              #   # Create a new instance of Lodging from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :check_in_date Date the customer checked in.
              #   #   @option data [Integer] :daily_room_rate_amount Daily rate being charged for the room.
              #   #   @option data [String] :daily_room_rate_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the daily room
              #   #     rate.
              #   #   @option data [String] :extra_charges Additional charges (phone, late check-out, etc.) being billed.
              #   #   @option data [Integer] :folio_cash_advances_amount Folio cash advances for the room.
              #   #   @option data [String] :folio_cash_advances_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the folio cash
              #   #     advances.
              #   #   @option data [Integer] :food_beverage_charges_amount Food and beverage charges for the room.
              #   #   @option data [String] :food_beverage_charges_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the food and
              #   #     beverage charges.
              #   #   @option data [String] :no_show_indicator Indicator that the cardholder is being billed for a reserved room that was not
              #   #     actually used.
              #   #   @option data [Integer] :prepaid_expenses_amount Prepaid expenses being charged for the room.
              #   #   @option data [String] :prepaid_expenses_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the prepaid
              #   #     expenses.
              #   #   @option data [Integer] :room_nights Number of nights the room was rented.
              #   #   @option data [Integer] :total_room_tax_amount Total room tax being charged.
              #   #   @option data [String] :total_room_tax_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total room
              #   #     tax.
              #   #   @option data [Integer] :total_tax_amount Total tax being charged for the room.
              #   #   @option data [String] :total_tax_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total tax
              #   #     assessed.
              #   def initialize(data = {}) = super
            end

            # The format of the purchase identifier.
            class PurchaseIdentifierFormat < Increase::Enum
              # Free text
              FREE_TEXT = :free_text

              # Order number
              ORDER_NUMBER = :order_number

              # Rental agreement number
              RENTAL_AGREEMENT_NUMBER = :rental_agreement_number

              # Hotel folio number
              HOTEL_FOLIO_NUMBER = :hotel_folio_number

              # Invoice number
              INVOICE_NUMBER = :invoice_number
            end

            class Travel < Increase::BaseModel
              # @!attribute [rw] ancillary
              #   Ancillary purchases in addition to the airfare.
              #   @return [Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary]
              required :ancillary,
                       -> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary }

              # @!attribute [rw] computerized_reservation_system
              #   Indicates the computerized reservation system used to book the ticket.
              #   @return [String]
              required :computerized_reservation_system, String

              # @!attribute [rw] credit_reason_indicator
              #   Indicates the reason for a credit to the cardholder.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator]
              required :credit_reason_indicator,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::CreditReasonIndicator
                       }

              # @!attribute [rw] departure_date
              #   Date of departure.
              #   @return [Date]
              required :departure_date, Date

              # @!attribute [rw] origination_city_airport_code
              #   Code for the originating city or airport.
              #   @return [String]
              required :origination_city_airport_code, String

              # @!attribute [rw] passenger_name
              #   Name of the passenger.
              #   @return [String]
              required :passenger_name, String

              # @!attribute [rw] restricted_ticket_indicator
              #   Indicates whether this ticket is non-refundable.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator]
              required :restricted_ticket_indicator,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::RestrictedTicketIndicator
                       }

              # @!attribute [rw] ticket_change_indicator
              #   Indicates why a ticket was changed.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator]
              required :ticket_change_indicator,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TicketChangeIndicator
                       }

              # @!attribute [rw] ticket_number
              #   Ticket number.
              #   @return [String]
              required :ticket_number, String

              # @!attribute [rw] travel_agency_code
              #   Code for the travel agency if the ticket was issued by a travel agency.
              #   @return [String]
              required :travel_agency_code, String

              # @!attribute [rw] travel_agency_name
              #   Name of the travel agency if the ticket was issued by a travel agency.
              #   @return [String]
              required :travel_agency_name, String

              # @!attribute [rw] trip_legs
              #   Fields specific to each leg of the journey.
              #   @return [Array<Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg>]
              required :trip_legs,
                       Increase::ArrayOf.new(
                         -> {
                           Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg
                         }
                       )

              class Ancillary < Increase::BaseModel
                # @!attribute [rw] connected_ticket_document_number
                #   If this purchase has a connection or relationship to another purchase, such as a baggage fee for a passenger transport ticket, this field should contain the ticket document number for the other purchase.
                #   @return [String]
                required :connected_ticket_document_number, String

                # @!attribute [rw] credit_reason_indicator
                #   Indicates the reason for a credit to the cardholder.
                #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator]
                required :credit_reason_indicator,
                         enum: -> {
                           Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::CreditReasonIndicator
                         }

                # @!attribute [rw] passenger_name_or_description
                #   Name of the passenger or description of the ancillary purchase.
                #   @return [String]
                required :passenger_name_or_description, String

                # @!attribute [rw] services
                #   Additional travel charges, such as baggage fees.
                #   @return [Array<Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service>]
                required :services,
                         Increase::ArrayOf.new(
                           -> {
                             Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service
                           }
                         )

                # @!attribute [rw] ticket_document_number
                #   Ticket document number.
                #   @return [String]
                required :ticket_document_number, String

                # Indicates the reason for a credit to the cardholder.
                class CreditReasonIndicator < Increase::Enum
                  # No credit
                  NO_CREDIT = :no_credit

                  # Passenger transport ancillary purchase cancellation
                  PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :passenger_transport_ancillary_purchase_cancellation

                  # Airline ticket and passenger transport ancillary purchase cancellation
                  AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation

                  # Other
                  OTHER = :other
                end

                class Service < Increase::BaseModel
                  # @!attribute [rw] category
                  #   Category of the ancillary service.
                  #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category]
                  required :category,
                           enum: -> {
                             Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service::Category
                           }

                  # @!attribute [rw] sub_category
                  #   Sub-category of the ancillary service, free-form.
                  #   @return [String]
                  required :sub_category, String

                  # Category of the ancillary service.
                  class Category < Increase::Enum
                    # None
                    NONE = :none

                    # Bundled service
                    BUNDLED_SERVICE = :bundled_service

                    # Baggage fee
                    BAGGAGE_FEE = :baggage_fee

                    # Change fee
                    CHANGE_FEE = :change_fee

                    # Cargo
                    CARGO = :cargo

                    # Carbon offset
                    CARBON_OFFSET = :carbon_offset

                    # Frequent flyer
                    FREQUENT_FLYER = :frequent_flyer

                    # Gift card
                    GIFT_CARD = :gift_card

                    # Ground transport
                    GROUND_TRANSPORT = :ground_transport

                    # In-flight entertainment
                    IN_FLIGHT_ENTERTAINMENT = :in_flight_entertainment

                    # Lounge
                    LOUNGE = :lounge

                    # Medical
                    MEDICAL = :medical

                    # Meal beverage
                    MEAL_BEVERAGE = :meal_beverage

                    # Other
                    OTHER = :other

                    # Passenger assist fee
                    PASSENGER_ASSIST_FEE = :passenger_assist_fee

                    # Pets
                    PETS = :pets

                    # Seat fees
                    SEAT_FEES = :seat_fees

                    # Standby
                    STANDBY = :standby

                    # Service fee
                    SERVICE_FEE = :service_fee

                    # Store
                    STORE = :store

                    # Travel service
                    TRAVEL_SERVICE = :travel_service

                    # Unaccompanied travel
                    UNACCOMPANIED_TRAVEL = :unaccompanied_travel

                    # Upgrades
                    UPGRADES = :upgrades

                    # Wi-fi
                    WIFI = :wifi
                  end

                  # @!parse
                  #   # Create a new instance of Service from a Hash of raw data.
                  #   #
                  #   # @param data [Hash{Symbol => Object}] .
                  #   #   @option data [String] :category Category of the ancillary service.
                  #   #   @option data [String] :sub_category Sub-category of the ancillary service, free-form.
                  #   def initialize(data = {}) = super
                end

                # @!parse
                #   # Create a new instance of Ancillary from a Hash of raw data.
                #   #
                #   # @param data [Hash{Symbol => Object}] .
                #   #   @option data [String] :connected_ticket_document_number If this purchase has a connection or relationship to another purchase, such as a
                #   #     baggage fee for a passenger transport ticket, this field should contain the
                #   #     ticket document number for the other purchase.
                #   #   @option data [String] :credit_reason_indicator Indicates the reason for a credit to the cardholder.
                #   #   @option data [String] :passenger_name_or_description Name of the passenger or description of the ancillary purchase.
                #   #   @option data [Array<Object>] :services Additional travel charges, such as baggage fees.
                #   #   @option data [String] :ticket_document_number Ticket document number.
                #   def initialize(data = {}) = super
              end

              # Indicates the reason for a credit to the cardholder.
              class CreditReasonIndicator < Increase::Enum
                # No credit
                NO_CREDIT = :no_credit

                # Passenger transport ancillary purchase cancellation
                PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :passenger_transport_ancillary_purchase_cancellation

                # Airline ticket and passenger transport ancillary purchase cancellation
                AIRLINE_TICKET_AND_PASSENGER_TRANSPORT_ANCILLARY_PURCHASE_CANCELLATION = :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation

                # Airline ticket cancellation
                AIRLINE_TICKET_CANCELLATION = :airline_ticket_cancellation

                # Other
                OTHER = :other

                # Partial refund of airline ticket
                PARTIAL_REFUND_OF_AIRLINE_TICKET = :partial_refund_of_airline_ticket
              end

              # Indicates whether this ticket is non-refundable.
              class RestrictedTicketIndicator < Increase::Enum
                # No restrictions
                NO_RESTRICTIONS = :no_restrictions

                # Restricted non-refundable ticket
                RESTRICTED_NON_REFUNDABLE_TICKET = :restricted_non_refundable_ticket
              end

              # Indicates why a ticket was changed.
              class TicketChangeIndicator < Increase::Enum
                # None
                NONE = :none

                # Change to existing ticket
                CHANGE_TO_EXISTING_TICKET = :change_to_existing_ticket

                # New ticket
                NEW_TICKET = :new_ticket
              end

              class TripLeg < Increase::BaseModel
                # @!attribute [rw] carrier_code
                #   Carrier code (e.g., United Airlines, Jet Blue, etc.).
                #   @return [String]
                required :carrier_code, String

                # @!attribute [rw] destination_city_airport_code
                #   Code for the destination city or airport.
                #   @return [String]
                required :destination_city_airport_code, String

                # @!attribute [rw] fare_basis_code
                #   Fare basis code.
                #   @return [String]
                required :fare_basis_code, String

                # @!attribute [rw] flight_number
                #   Flight number.
                #   @return [String]
                required :flight_number, String

                # @!attribute [rw] service_class
                #   Service class (e.g., first class, business class, etc.).
                #   @return [String]
                required :service_class, String

                # @!attribute [rw] stop_over_code
                #   Indicates whether a stopover is allowed on this ticket.
                #   @return [Symbol, Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode]
                required :stop_over_code,
                         enum: -> {
                           Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg::StopOverCode
                         }

                # Indicates whether a stopover is allowed on this ticket.
                class StopOverCode < Increase::Enum
                  # None
                  NONE = :none

                  # Stop over allowed
                  STOP_OVER_ALLOWED = :stop_over_allowed

                  # Stop over not allowed
                  STOP_OVER_NOT_ALLOWED = :stop_over_not_allowed
                end

                # @!parse
                #   # Create a new instance of TripLeg from a Hash of raw data.
                #   #
                #   # @param data [Hash{Symbol => Object}] .
                #   #   @option data [String] :carrier_code Carrier code (e.g., United Airlines, Jet Blue, etc.).
                #   #   @option data [String] :destination_city_airport_code Code for the destination city or airport.
                #   #   @option data [String] :fare_basis_code Fare basis code.
                #   #   @option data [String] :flight_number Flight number.
                #   #   @option data [String] :service_class Service class (e.g., first class, business class, etc.).
                #   #   @option data [String] :stop_over_code Indicates whether a stopover is allowed on this ticket.
                #   def initialize(data = {}) = super
              end

              # @!parse
              #   # Create a new instance of Travel from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [Object] :ancillary Ancillary purchases in addition to the airfare.
              #   #   @option data [String] :computerized_reservation_system Indicates the computerized reservation system used to book the ticket.
              #   #   @option data [String] :credit_reason_indicator Indicates the reason for a credit to the cardholder.
              #   #   @option data [String] :departure_date Date of departure.
              #   #   @option data [String] :origination_city_airport_code Code for the originating city or airport.
              #   #   @option data [String] :passenger_name Name of the passenger.
              #   #   @option data [String] :restricted_ticket_indicator Indicates whether this ticket is non-refundable.
              #   #   @option data [String] :ticket_change_indicator Indicates why a ticket was changed.
              #   #   @option data [String] :ticket_number Ticket number.
              #   #   @option data [String] :travel_agency_code Code for the travel agency if the ticket was issued by a travel agency.
              #   #   @option data [String] :travel_agency_name Name of the travel agency if the ticket was issued by a travel agency.
              #   #   @option data [Array<Object>] :trip_legs Fields specific to each leg of the journey.
              #   def initialize(data = {}) = super
            end

            # @!parse
            #   # Create a new instance of PurchaseDetails from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Object] :car_rental Fields specific to car rentals.
            #   #   @option data [String] :customer_reference_identifier An identifier from the merchant for the customer or consumer.
            #   #   @option data [Integer] :local_tax_amount The state or provincial tax amount in minor units.
            #   #   @option data [String] :local_tax_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax
            #   #     assessed.
            #   #   @option data [Object] :lodging Fields specific to lodging.
            #   #   @option data [Integer] :national_tax_amount The national tax amount in minor units.
            #   #   @option data [String] :national_tax_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the local tax
            #   #     assessed.
            #   #   @option data [String] :purchase_identifier An identifier from the merchant for the purchase to the issuer and cardholder.
            #   #   @option data [String] :purchase_identifier_format The format of the purchase identifier.
            #   #   @option data [Object] :travel Fields specific to travel.
            #   def initialize(data = {}) = super
          end

          # A constant representing the object's type. For this resource it will always be `card_settlement`.
          class Type < Increase::Enum
            CARD_SETTLEMENT = :card_settlement
          end

          # @!parse
          #   # Create a new instance of CardSettlement from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :id The Card Settlement identifier.
          #   #   @option data [Integer] :amount The amount in the minor unit of the transaction's settlement currency. For
          #   #     dollars, for example, this is cents.
          #   #   @option data [String] :card_authorization The Card Authorization that was created prior to this Card Settlement, if one
          #   #     exists.
          #   #   @option data [String] :card_payment_id The ID of the Card Payment this transaction belongs to.
          #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   #     transaction's settlement currency.
          #   #   @option data [Object] :interchange Interchange assessed as a part of this transaciton.
          #   #   @option data [String] :merchant_acceptor_id The merchant identifier (commonly abbreviated as MID) of the merchant the card
          #   #     is transacting with.
          #   #   @option data [String] :merchant_category_code The 4-digit MCC describing the merchant's business.
          #   #   @option data [String] :merchant_city The city the merchant resides in.
          #   #   @option data [String] :merchant_country The country the merchant resides in.
          #   #   @option data [String] :merchant_name The name of the merchant.
          #   #   @option data [String] :merchant_postal_code The merchant's postal code. For US merchants this is always a 5-digit ZIP code.
          #   #   @option data [String] :merchant_state The state the merchant resides in.
          #   #   @option data [Object] :network_identifiers Network-specific identifiers for this refund.
          #   #   @option data [String] :pending_transaction_id The identifier of the Pending Transaction associated with this Transaction.
          #   #   @option data [Integer] :presentment_amount The amount in the minor unit of the transaction's presentment currency.
          #   #   @option data [String] :presentment_currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   #     transaction's presentment currency.
          #   #   @option data [Object] :purchase_details Additional details about the card purchase, such as tax and industry-specific
          #   #     fields.
          #   #   @option data [String] :transaction_id The identifier of the Transaction associated with this Transaction.
          #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
          #   #     `card_settlement`.
          #   def initialize(data = {}) = super
        end

        class CardValidation < Increase::BaseModel
          # @!attribute [rw] id
          #   The Card Validation identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] actioner
          #   Whether this authorization was approved by Increase, the card network through stand-in processing, or the user through a real-time decision.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardValidation::Actioner]
          required :actioner, enum: -> { Increase::Models::CardPayment::Element::CardValidation::Actioner }

          # @!attribute [rw] card_payment_id
          #   The ID of the Card Payment this transaction belongs to.
          #   @return [String]
          required :card_payment_id, String

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's currency.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardValidation::Currency]
          required :currency, enum: -> { Increase::Models::CardPayment::Element::CardValidation::Currency }

          # @!attribute [rw] digital_wallet_token_id
          #   If the authorization was made via a Digital Wallet Token (such as an Apple Pay purchase), the identifier of the token that was used.
          #   @return [String]
          required :digital_wallet_token_id, String

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
          #   @return [Increase::Models::CardPayment::Element::CardValidation::NetworkDetails]
          required :network_details,
                   -> {
                     Increase::Models::CardPayment::Element::CardValidation::NetworkDetails
                   }

          # @!attribute [rw] network_identifiers
          #   Network-specific identifiers for a specific request or transaction.
          #   @return [Increase::Models::CardPayment::Element::CardValidation::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::CardPayment::Element::CardValidation::NetworkIdentifiers }

          # @!attribute [rw] network_risk_score
          #   The risk score generated by the card network. For Visa this is the Visa Advanced Authorization risk score, from 0 to 99, where 99 is the riskiest.
          #   @return [Integer]
          required :network_risk_score, Integer

          # @!attribute [rw] physical_card_id
          #   If the authorization was made in-person with a physical card, the Physical Card that was used.
          #   @return [String]
          required :physical_card_id, String

          # @!attribute [rw] real_time_decision_id
          #   The identifier of the Real-Time Decision sent to approve or decline this transaction.
          #   @return [String]
          required :real_time_decision_id, String

          # @!attribute [rw] terminal_id
          #   The terminal identifier (commonly abbreviated as TID) of the terminal the card is transacting with.
          #   @return [String]
          required :terminal_id, String

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `card_validation`.
          #   @return [Symbol, Increase::Models::CardPayment::Element::CardValidation::Type]
          required :type, enum: -> { Increase::Models::CardPayment::Element::CardValidation::Type }

          # @!attribute [rw] verification
          #   Fields related to verification of cardholder-provided values.
          #   @return [Increase::Models::CardPayment::Element::CardValidation::Verification]
          required :verification, -> { Increase::Models::CardPayment::Element::CardValidation::Verification }

          # Whether this authorization was approved by Increase, the card network through stand-in processing, or the user through a real-time decision.
          class Actioner < Increase::Enum
            # This object was actioned by the user through a real-time decision.
            USER = :user

            # This object was actioned by Increase without user intervention.
            INCREASE = :increase

            # This object was actioned by the network, through stand-in processing.
            NETWORK = :network
          end

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's currency.
          class Currency < Increase::Enum
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
          end

          class NetworkDetails < Increase::BaseModel
            # @!attribute [rw] category
            #   The payment network used to process this card authorization.
            #   @return [Symbol, Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Category]
            required :category,
                     enum: -> {
                       Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Category
                     }

            # @!attribute [rw] visa
            #   Fields specific to the `visa` network.
            #   @return [Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa]
            required :visa,
                     -> {
                       Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa
                     }

            # The payment network used to process this card authorization.
            class Category < Increase::Enum
              # Visa
              VISA = :visa
            end

            class Visa < Increase::BaseModel
              # @!attribute [rw] electronic_commerce_indicator
              #   For electronic commerce transactions, this identifies the level of security used in obtaining the customer's payment credential. For mail or telephone order transactions, identifies the type of mail or telephone order.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::ElectronicCommerceIndicator]
              required :electronic_commerce_indicator,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::ElectronicCommerceIndicator
                       }

              # @!attribute [rw] point_of_service_entry_mode
              #   The method used to enter the cardholder's primary account number and card expiration date.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::PointOfServiceEntryMode]
              required :point_of_service_entry_mode,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::PointOfServiceEntryMode
                       }

              # @!attribute [rw] stand_in_processing_reason
              #   Only present when `actioner: network`. Describes why a card authorization was approved or declined by Visa through stand-in processing.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::StandInProcessingReason]
              required :stand_in_processing_reason,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa::StandInProcessingReason
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

              # Only present when `actioner: network`. Describes why a card authorization was approved or declined by Visa through stand-in processing.
              class StandInProcessingReason < Increase::Enum
                # Increase failed to process the authorization in a timely manner.
                ISSUER_ERROR = :issuer_error

                # The physical card read had an invalid CVV, dCVV, or authorization request cryptogram.
                INVALID_PHYSICAL_CARD = :invalid_physical_card

                # The 3DS cardholder authentication verification value was invalid.
                INVALID_CARDHOLDER_AUTHENTICATION_VERIFICATION_VALUE = :invalid_cardholder_authentication_verification_value

                # An internal Visa error occurred. Visa uses this reason code for certain expected occurrences as well, such as Application Transaction Counter (ATC) replays.
                INTERNAL_VISA_ERROR = :internal_visa_error

                # The merchant has enabled Visa's Transaction Advisory Service and requires further authentication to perform the transaction. In practice this is often utilized at fuel pumps to tell the cardholder to see the cashier.
                MERCHANT_TRANSACTION_ADVISORY_SERVICE_AUTHENTICATION_REQUIRED = :merchant_transaction_advisory_service_authentication_required

                # An unspecific reason for stand-in processing.
                OTHER = :other
              end

              # @!parse
              #   # Create a new instance of Visa from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :electronic_commerce_indicator For electronic commerce transactions, this identifies the level of security used
              #   #     in obtaining the customer's payment credential. For mail or telephone order
              #   #     transactions, identifies the type of mail or telephone order.
              #   #   @option data [String] :point_of_service_entry_mode The method used to enter the cardholder's primary account number and card
              #   #     expiration date.
              #   #   @option data [String] :stand_in_processing_reason Only present when `actioner: network`. Describes why a card authorization was
              #   #     approved or declined by Visa through stand-in processing.
              #   def initialize(data = {}) = super
            end

            # @!parse
            #   # Create a new instance of NetworkDetails from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :category The payment network used to process this card authorization.
            #   #   @option data [Object] :visa Fields specific to the `visa` network.
            #   def initialize(data = {}) = super
          end

          class NetworkIdentifiers < Increase::BaseModel
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

            # @!parse
            #   # Create a new instance of NetworkIdentifiers from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [String] :retrieval_reference_number A life-cycle identifier used across e.g., an authorization and a reversal.
            #   #     Expected to be unique per acquirer within a window of time. For some card
            #   #     networks the retrieval reference number includes the trace counter.
            #   #   @option data [String] :trace_number A counter used to verify an individual authorization. Expected to be unique per
            #   #     acquirer within a window of time.
            #   #   @option data [String] :transaction_id A globally unique transaction identifier provided by the card network, used
            #   #     across multiple life-cycle requests.
            #   def initialize(data = {}) = super
          end

          # A constant representing the object's type. For this resource it will always be `card_validation`.
          class Type < Increase::Enum
            CARD_VALIDATION = :card_validation
          end

          class Verification < Increase::BaseModel
            # @!attribute [rw] card_verification_code
            #   Fields related to verification of the Card Verification Code, a 3-digit code on the back of the card.
            #   @return [Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode]
            required :card_verification_code,
                     -> { Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode }

            # @!attribute [rw] cardholder_address
            #   Cardholder address provided in the authorization request and the address on file we verified it against.
            #   @return [Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress]
            required :cardholder_address,
                     -> { Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress }

            class CardVerificationCode < Increase::BaseModel
              # @!attribute [rw] result
              #   The result of verifying the Card Verification Code.
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode::Result]
              required :result,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardValidation::Verification::CardVerificationCode::Result
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

              # @!parse
              #   # Create a new instance of CardVerificationCode from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :result The result of verifying the Card Verification Code.
              #   def initialize(data = {}) = super
            end

            class CardholderAddress < Increase::BaseModel
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
              #   @return [Symbol, Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress::Result]
              required :result,
                       enum: -> {
                         Increase::Models::CardPayment::Element::CardValidation::Verification::CardholderAddress::Result
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

              # @!parse
              #   # Create a new instance of CardholderAddress from a Hash of raw data.
              #   #
              #   # @param data [Hash{Symbol => Object}] .
              #   #   @option data [String] :actual_line1 Line 1 of the address on file for the cardholder.
              #   #   @option data [String] :actual_postal_code The postal code of the address on file for the cardholder.
              #   #   @option data [String] :provided_line1 The cardholder address line 1 provided for verification in the authorization
              #   #     request.
              #   #   @option data [String] :provided_postal_code The postal code provided for verification in the authorization request.
              #   #   @option data [String] :result The address verification result returned to the card network.
              #   def initialize(data = {}) = super
            end

            # @!parse
            #   # Create a new instance of Verification from a Hash of raw data.
            #   #
            #   # @param data [Hash{Symbol => Object}] .
            #   #   @option data [Object] :card_verification_code Fields related to verification of the Card Verification Code, a 3-digit code on
            #   #     the back of the card.
            #   #   @option data [Object] :cardholder_address Cardholder address provided in the authorization request and the address on file
            #   #     we verified it against.
            #   def initialize(data = {}) = super
          end

          # @!parse
          #   # Create a new instance of CardValidation from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :id The Card Validation identifier.
          #   #   @option data [String] :actioner Whether this authorization was approved by Increase, the card network through
          #   #     stand-in processing, or the user through a real-time decision.
          #   #   @option data [String] :card_payment_id The ID of the Card Payment this transaction belongs to.
          #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   #     transaction's currency.
          #   #   @option data [String] :digital_wallet_token_id If the authorization was made via a Digital Wallet Token (such as an Apple Pay
          #   #     purchase), the identifier of the token that was used.
          #   #   @option data [String] :merchant_acceptor_id The merchant identifier (commonly abbreviated as MID) of the merchant the card
          #   #     is transacting with.
          #   #   @option data [String] :merchant_category_code The Merchant Category Code (commonly abbreviated as MCC) of the merchant the
          #   #     card is transacting with.
          #   #   @option data [String] :merchant_city The city the merchant resides in.
          #   #   @option data [String] :merchant_country The country the merchant resides in.
          #   #   @option data [String] :merchant_descriptor The merchant descriptor of the merchant the card is transacting with.
          #   #   @option data [String] :merchant_postal_code The merchant's postal code. For US merchants this is either a 5-digit or 9-digit
          #   #     ZIP code, where the first 5 and last 4 are separated by a dash.
          #   #   @option data [String] :merchant_state The state the merchant resides in.
          #   #   @option data [Object] :network_details Fields specific to the `network`.
          #   #   @option data [Object] :network_identifiers Network-specific identifiers for a specific request or transaction.
          #   #   @option data [Integer] :network_risk_score The risk score generated by the card network. For Visa this is the Visa Advanced
          #   #     Authorization risk score, from 0 to 99, where 99 is the riskiest.
          #   #   @option data [String] :physical_card_id If the authorization was made in-person with a physical card, the Physical Card
          #   #     that was used.
          #   #   @option data [String] :real_time_decision_id The identifier of the Real-Time Decision sent to approve or decline this
          #   #     transaction.
          #   #   @option data [String] :terminal_id The terminal identifier (commonly abbreviated as TID) of the terminal the card
          #   #     is transacting with.
          #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
          #   #     `card_validation`.
          #   #   @option data [Object] :verification Fields related to verification of cardholder-provided values.
          #   def initialize(data = {}) = super
        end

        # The type of the resource. We may add additional possible values for this enum over time; your application should be able to handle such additions gracefully.
        class Category < Increase::Enum
          # Card Authorization: details will be under the `card_authorization` object.
          CARD_AUTHORIZATION = :card_authorization

          # Card Authentication: details will be under the `card_authentication` object.
          CARD_AUTHENTICATION = :card_authentication

          # Card Validation: details will be under the `card_validation` object.
          CARD_VALIDATION = :card_validation

          # Card Decline: details will be under the `card_decline` object.
          CARD_DECLINE = :card_decline

          # Card Reversal: details will be under the `card_reversal` object.
          CARD_REVERSAL = :card_reversal

          # Card Authorization Expiration: details will be under the `card_authorization_expiration` object.
          CARD_AUTHORIZATION_EXPIRATION = :card_authorization_expiration

          # Card Increment: details will be under the `card_increment` object.
          CARD_INCREMENT = :card_increment

          # Card Settlement: details will be under the `card_settlement` object.
          CARD_SETTLEMENT = :card_settlement

          # Card Refund: details will be under the `card_refund` object.
          CARD_REFUND = :card_refund

          # Card Fuel Confirmation: details will be under the `card_fuel_confirmation` object.
          CARD_FUEL_CONFIRMATION = :card_fuel_confirmation

          # Unknown card payment element.
          OTHER = :other
        end

        # @!parse
        #   # Create a new instance of Element from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Object] :card_authorization A Card Authorization object. This field will be present in the JSON response if
        #   #     and only if `category` is equal to `card_authorization`.
        #   #   @option data [Object] :card_authorization_expiration A Card Authorization Expiration object. This field will be present in the JSON
        #   #     response if and only if `category` is equal to `card_authorization_expiration`.
        #   #   @option data [Object] :card_decline A Card Decline object. This field will be present in the JSON response if and
        #   #     only if `category` is equal to `card_decline`.
        #   #   @option data [Object] :card_fuel_confirmation A Card Fuel Confirmation object. This field will be present in the JSON response
        #   #     if and only if `category` is equal to `card_fuel_confirmation`.
        #   #   @option data [Object] :card_increment A Card Increment object. This field will be present in the JSON response if and
        #   #     only if `category` is equal to `card_increment`.
        #   #   @option data [Object] :card_refund A Card Refund object. This field will be present in the JSON response if and
        #   #     only if `category` is equal to `card_refund`.
        #   #   @option data [Object] :card_reversal A Card Reversal object. This field will be present in the JSON response if and
        #   #     only if `category` is equal to `card_reversal`.
        #   #   @option data [Object] :card_settlement A Card Settlement object. This field will be present in the JSON response if and
        #   #     only if `category` is equal to `card_settlement`.
        #   #   @option data [Object] :card_validation A Card Validation object. This field will be present in the JSON response if and
        #   #     only if `category` is equal to `card_validation`.
        #   #   @option data [String] :category The type of the resource. We may add additional possible values for this enum
        #   #     over time; your application should be able to handle such additions gracefully.
        #   #   @option data [String] :created_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   #     the card payment element was created.
        #   #   @option data [Object] :other If the category of this Transaction source is equal to `other`, this field will
        #   #     contain an empty object, otherwise it will contain null.
        #   def initialize(data = {}) = super
      end

      class State < Increase::BaseModel
        # @!attribute [rw] authorized_amount
        #   The total authorized amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :authorized_amount, Integer

        # @!attribute [rw] fuel_confirmed_amount
        #   The total amount from fuel confirmations in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :fuel_confirmed_amount, Integer

        # @!attribute [rw] incremented_amount
        #   The total incrementally updated authorized amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :incremented_amount, Integer

        # @!attribute [rw] reversed_amount
        #   The total reversed amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :reversed_amount, Integer

        # @!attribute [rw] settled_amount
        #   The total settled or refunded amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :settled_amount, Integer

        # @!parse
        #   # Create a new instance of State from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Integer] :authorized_amount The total authorized amount in the minor unit of the transaction's currency. For
        #   #     dollars, for example, this is cents.
        #   #   @option data [Integer] :fuel_confirmed_amount The total amount from fuel confirmations in the minor unit of the transaction's
        #   #     currency. For dollars, for example, this is cents.
        #   #   @option data [Integer] :incremented_amount The total incrementally updated authorized amount in the minor unit of the
        #   #     transaction's currency. For dollars, for example, this is cents.
        #   #   @option data [Integer] :reversed_amount The total reversed amount in the minor unit of the transaction's currency. For
        #   #     dollars, for example, this is cents.
        #   #   @option data [Integer] :settled_amount The total settled or refunded amount in the minor unit of the transaction's
        #   #     currency. For dollars, for example, this is cents.
        #   def initialize(data = {}) = super
      end

      # A constant representing the object's type. For this resource it will always be `card_payment`.
      class Type < Increase::Enum
        CARD_PAYMENT = :card_payment
      end

      # @!parse
      #   # Create a new instance of CardPayment from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id The Card Payment identifier.
      #   #   @option data [String] :account_id The identifier for the Account the Transaction belongs to.
      #   #   @option data [String] :card_id The Card identifier for this payment.
      #   #   @option data [String] :created_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the Card
      #   #     Payment was created.
      #   #   @option data [String] :digital_wallet_token_id The Digital Wallet Token identifier for this payment.
      #   #   @option data [Array<Object>] :elements The interactions related to this card payment.
      #   #   @option data [String] :physical_card_id The Physical Card identifier for this payment.
      #   #   @option data [Object] :state The summarized state of this card payment.
      #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
      #   #     `card_payment`.
      #   def initialize(data = {}) = super
    end
  end
end
