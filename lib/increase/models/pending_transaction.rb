# frozen_string_literal: true

module Increase
  module Models
    class PendingTransaction < Increase::BaseModel
      # @!attribute [rw] id
      #   The Pending Transaction identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The identifier for the account this Pending Transaction belongs to.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] amount
      #   The Pending Transaction amount in the minor unit of its currency. For dollars, for example, this is cents.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] completed_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which the Pending Transaction was completed.
      #   @return [Time]
      required :completed_at, Time

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which the Pending Transaction occurred.
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Pending Transaction's currency. This will match the currency on the Pending Transaction's Account.
      #   @return [Symbol, Increase::Models::PendingTransaction::Currency]
      required :currency, enum: -> { Increase::Models::PendingTransaction::Currency }

      # @!attribute [rw] description
      #   For a Pending Transaction related to a transfer, this is the description you provide. For a Pending Transaction related to a payment, this is the description the vendor provides.
      #   @return [String]
      required :description, String

      # @!attribute [rw] route_id
      #   The identifier for the route this Pending Transaction came through. Routes are things like cards and ACH details.
      #   @return [String]
      required :route_id, String

      # @!attribute [rw] route_type
      #   The type of the route this Pending Transaction came through.
      #   @return [Symbol, Increase::Models::PendingTransaction::RouteType]
      required :route_type, enum: -> { Increase::Models::PendingTransaction::RouteType }

      # @!attribute [rw] source
      #   This is an object giving more details on the network-level event that caused the Pending Transaction. For example, for a card transaction this lists the merchant's industry and location.
      #   @return [Increase::Models::PendingTransaction::Source]
      required :source, -> { Increase::Models::PendingTransaction::Source }

      # @!attribute [rw] status
      #   Whether the Pending Transaction has been confirmed and has an associated Transaction.
      #   @return [Symbol, Increase::Models::PendingTransaction::Status]
      required :status, enum: -> { Increase::Models::PendingTransaction::Status }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `pending_transaction`.
      #   @return [Symbol, Increase::Models::PendingTransaction::Type]
      required :type, enum: -> { Increase::Models::PendingTransaction::Type }

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Pending Transaction's currency. This will match the currency on the Pending Transaction's Account.
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

      # The type of the route this Pending Transaction came through.
      class RouteType < Increase::Enum
        # An Account Number.
        ACCOUNT_NUMBER = :account_number

        # A Card.
        CARD = :card

        # A Lockbox.
        LOCKBOX = :lockbox
      end

      class Source < Increase::BaseModel
        # @!attribute [rw] account_transfer_instruction
        #   An Account Transfer Instruction object. This field will be present in the JSON response if and only if `category` is equal to `account_transfer_instruction`.
        #   @return [Increase::Models::PendingTransaction::Source::AccountTransferInstruction]
        required :account_transfer_instruction,
                 -> { Increase::Models::PendingTransaction::Source::AccountTransferInstruction }

        # @!attribute [rw] ach_transfer_instruction
        #   An ACH Transfer Instruction object. This field will be present in the JSON response if and only if `category` is equal to `ach_transfer_instruction`.
        #   @return [Increase::Models::PendingTransaction::Source::ACHTransferInstruction]
        required :ach_transfer_instruction,
                 -> { Increase::Models::PendingTransaction::Source::ACHTransferInstruction }

        # @!attribute [rw] card_authorization
        #   A Card Authorization object. This field will be present in the JSON response if and only if `category` is equal to `card_authorization`.
        #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization]
        required :card_authorization, -> { Increase::Models::PendingTransaction::Source::CardAuthorization }

        # @!attribute [rw] category
        #   The type of the resource. We may add additional possible values for this enum over time; your application should be able to handle such additions gracefully.
        #   @return [Symbol, Increase::Models::PendingTransaction::Source::Category]
        required :category, enum: -> { Increase::Models::PendingTransaction::Source::Category }

        # @!attribute [rw] check_deposit_instruction
        #   A Check Deposit Instruction object. This field will be present in the JSON response if and only if `category` is equal to `check_deposit_instruction`.
        #   @return [Increase::Models::PendingTransaction::Source::CheckDepositInstruction]
        required :check_deposit_instruction,
                 -> { Increase::Models::PendingTransaction::Source::CheckDepositInstruction }

        # @!attribute [rw] check_transfer_instruction
        #   A Check Transfer Instruction object. This field will be present in the JSON response if and only if `category` is equal to `check_transfer_instruction`.
        #   @return [Increase::Models::PendingTransaction::Source::CheckTransferInstruction]
        required :check_transfer_instruction,
                 -> { Increase::Models::PendingTransaction::Source::CheckTransferInstruction }

        # @!attribute [rw] inbound_funds_hold
        #   An Inbound Funds Hold object. This field will be present in the JSON response if and only if `category` is equal to `inbound_funds_hold`.
        #   @return [Increase::Models::PendingTransaction::Source::InboundFundsHold]
        required :inbound_funds_hold, -> { Increase::Models::PendingTransaction::Source::InboundFundsHold }

        # @!attribute [rw] other
        #   If the category of this Transaction source is equal to `other`, this field will contain an empty object, otherwise it will contain null.
        #   @return [Object]
        required :other, Increase::Unknown

        # @!attribute [rw] real_time_payments_transfer_instruction
        #   A Real-Time Payments Transfer Instruction object. This field will be present in the JSON response if and only if `category` is equal to `real_time_payments_transfer_instruction`.
        #   @return [Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction]
        required :real_time_payments_transfer_instruction,
                 -> { Increase::Models::PendingTransaction::Source::RealTimePaymentsTransferInstruction }

        # @!attribute [rw] wire_transfer_instruction
        #   A Wire Transfer Instruction object. This field will be present in the JSON response if and only if `category` is equal to `wire_transfer_instruction`.
        #   @return [Increase::Models::PendingTransaction::Source::WireTransferInstruction]
        required :wire_transfer_instruction,
                 -> { Increase::Models::PendingTransaction::Source::WireTransferInstruction }

        class AccountTransferInstruction < Increase::BaseModel
          # @!attribute [rw] amount
          #   The pending amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination account currency.
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency]
          required :currency,
                   enum: -> {
                     Increase::Models::PendingTransaction::Source::AccountTransferInstruction::Currency
                   }

          # @!attribute [rw] transfer_id
          #   The identifier of the Account Transfer that led to this Pending Transaction.
          #   @return [String]
          required :transfer_id, String

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

          # @!parse
          #   # Create a new instance of AccountTransferInstruction from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Integer] :amount The pending amount in the minor unit of the transaction's currency. For dollars,
          #   #     for example, this is cents.
          #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination
          #   #     account currency.
          #   #   @option data [String] :transfer_id The identifier of the Account Transfer that led to this Pending Transaction.
          #   def initialize(data = {}) = super
        end

        class ACHTransferInstruction < Increase::BaseModel
          # @!attribute [rw] amount
          #   The pending amount in USD cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] transfer_id
          #   The identifier of the ACH Transfer that led to this Pending Transaction.
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # Create a new instance of ACHTransferInstruction from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Integer] :amount The pending amount in USD cents.
          #   #   @option data [String] :transfer_id The identifier of the ACH Transfer that led to this Pending Transaction.
          #   def initialize(data = {}) = super
        end

        class CardAuthorization < Increase::BaseModel
          # @!attribute [rw] id
          #   The Card Authorization identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] actioner
          #   Whether this authorization was approved by Increase, the card network through stand-in processing, or the user through a real-time decision.
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner]
          required :actioner,
                   enum: -> {
                     Increase::Models::PendingTransaction::Source::CardAuthorization::Actioner
                   }

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
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Currency]
          required :currency,
                   enum: -> {
                     Increase::Models::PendingTransaction::Source::CardAuthorization::Currency
                   }

          # @!attribute [rw] digital_wallet_token_id
          #   If the authorization was made via a Digital Wallet Token (such as an Apple Pay purchase), the identifier of the token that was used.
          #   @return [String]
          required :digital_wallet_token_id, String

          # @!attribute [rw] direction
          #   The direction describes the direction the funds will move, either from the cardholder to the merchant or from the merchant to the cardholder.
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Direction]
          required :direction,
                   enum: -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Direction }

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
          #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails]
          required :network_details,
                   -> { Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails }

          # @!attribute [rw] network_identifiers
          #   Network-specific identifiers for a specific request or transaction.
          #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkIdentifiers }

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
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory]
          required :processing_category,
                   enum: -> {
                     Increase::Models::PendingTransaction::Source::CardAuthorization::ProcessingCategory
                   }

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
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Type]
          required :type, enum: -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Type }

          # @!attribute [rw] verification
          #   Fields related to verification of cardholder-provided values.
          #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::Verification]
          required :verification,
                   -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Verification }

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
            #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category]
            required :category,
                     enum: -> {
                       Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Category
                     }

            # @!attribute [rw] visa
            #   Fields specific to the `visa` network.
            #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa]
            required :visa,
                     -> { Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa }

            # The payment network used to process this card authorization.
            class Category < Increase::Enum
              # Visa
              VISA = :visa
            end

            class Visa < Increase::BaseModel
              # @!attribute [rw] electronic_commerce_indicator
              #   For electronic commerce transactions, this identifies the level of security used in obtaining the customer's payment credential. For mail or telephone order transactions, identifies the type of mail or telephone order.
              #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator]
              required :electronic_commerce_indicator,
                       enum: -> {
                         Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::ElectronicCommerceIndicator
                       }

              # @!attribute [rw] point_of_service_entry_mode
              #   The method used to enter the cardholder's primary account number and card expiration date.
              #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode]
              required :point_of_service_entry_mode,
                       enum: -> {
                         Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::PointOfServiceEntryMode
                       }

              # @!attribute [rw] stand_in_processing_reason
              #   Only present when `actioner: network`. Describes why a card authorization was approved or declined by Visa through stand-in processing.
              #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason]
              required :stand_in_processing_reason,
                       enum: -> {
                         Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa::StandInProcessingReason
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
            #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode]
            required :card_verification_code,
                     -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode }

            # @!attribute [rw] cardholder_address
            #   Cardholder address provided in the authorization request and the address on file we verified it against.
            #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress]
            required :cardholder_address,
                     -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress }

            class CardVerificationCode < Increase::BaseModel
              # @!attribute [rw] result
              #   The result of verifying the Card Verification Code.
              #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result]
              required :result,
                       enum: -> {
                         Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode::Result
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
              #   @return [Symbol, Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result]
              required :result,
                       enum: -> {
                         Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress::Result
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

        # The type of the resource. We may add additional possible values for this enum over time; your application should be able to handle such additions gracefully.
        class Category < Increase::Enum
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
        end

        class CheckDepositInstruction < Increase::BaseModel
          # @!attribute [rw] amount
          #   The pending amount in USD cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] back_image_file_id
          #   The identifier of the File containing the image of the back of the check that was deposited.
          #   @return [String]
          required :back_image_file_id, String

          # @!attribute [rw] check_deposit_id
          #   The identifier of the Check Deposit.
          #   @return [String]
          required :check_deposit_id, String

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's currency.
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency]
          required :currency,
                   enum: -> {
                     Increase::Models::PendingTransaction::Source::CheckDepositInstruction::Currency
                   }

          # @!attribute [rw] front_image_file_id
          #   The identifier of the File containing the image of the front of the check that was deposited.
          #   @return [String]
          required :front_image_file_id, String

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

          # @!parse
          #   # Create a new instance of CheckDepositInstruction from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Integer] :amount The pending amount in USD cents.
          #   #   @option data [String] :back_image_file_id The identifier of the File containing the image of the back of the check that
          #   #     was deposited.
          #   #   @option data [String] :check_deposit_id The identifier of the Check Deposit.
          #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
          #   #     transaction's currency.
          #   #   @option data [String] :front_image_file_id The identifier of the File containing the image of the front of the check that
          #   #     was deposited.
          #   def initialize(data = {}) = super
        end

        class CheckTransferInstruction < Increase::BaseModel
          # @!attribute [rw] amount
          #   The transfer amount in USD cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's currency.
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency]
          required :currency,
                   enum: -> {
                     Increase::Models::PendingTransaction::Source::CheckTransferInstruction::Currency
                   }

          # @!attribute [rw] transfer_id
          #   The identifier of the Check Transfer that led to this Pending Transaction.
          #   @return [String]
          required :transfer_id, String

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's currency.
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
          #   # Create a new instance of CheckTransferInstruction from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Integer] :amount The transfer amount in USD cents.
          #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's
          #   #     currency.
          #   #   @option data [String] :transfer_id The identifier of the Check Transfer that led to this Pending Transaction.
          #   def initialize(data = {}) = super
        end

        class InboundFundsHold < Increase::BaseModel
          # @!attribute [rw] id
          #   The Inbound Funds Hold identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] amount
          #   The held amount in the minor unit of the account's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] automatically_releases_at
          #   When the hold will be released automatically. Certain conditions may cause it to be released before this time.
          #   @return [Time]
          required :automatically_releases_at, Time

          # @!attribute [rw] created_at
          #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the hold was created.
          #   @return [Time]
          required :created_at, Time

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's currency.
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency]
          required :currency,
                   enum: -> {
                     Increase::Models::PendingTransaction::Source::InboundFundsHold::Currency
                   }

          # @!attribute [rw] held_transaction_id
          #   The ID of the Transaction for which funds were held.
          #   @return [String]
          required :held_transaction_id, String

          # @!attribute [rw] pending_transaction_id
          #   The ID of the Pending Transaction representing the held funds.
          #   @return [String]
          required :pending_transaction_id, String

          # @!attribute [rw] released_at
          #   When the hold was released (if it has been released).
          #   @return [Time]
          required :released_at, Time

          # @!attribute [rw] status
          #   The status of the hold.
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::InboundFundsHold::Status]
          required :status,
                   enum: -> {
                     Increase::Models::PendingTransaction::Source::InboundFundsHold::Status
                   }

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `inbound_funds_hold`.
          #   @return [Symbol, Increase::Models::PendingTransaction::Source::InboundFundsHold::Type]
          required :type, enum: -> { Increase::Models::PendingTransaction::Source::InboundFundsHold::Type }

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's currency.
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

          # The status of the hold.
          class Status < Increase::Enum
            # Funds are still being held.
            HELD = :held

            # Funds have been released.
            COMPLETE = :complete
          end

          # A constant representing the object's type. For this resource it will always be `inbound_funds_hold`.
          class Type < Increase::Enum
            INBOUND_FUNDS_HOLD = :inbound_funds_hold
          end

          # @!parse
          #   # Create a new instance of InboundFundsHold from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :id The Inbound Funds Hold identifier.
          #   #   @option data [Integer] :amount The held amount in the minor unit of the account's currency. For dollars, for
          #   #     example, this is cents.
          #   #   @option data [String] :automatically_releases_at When the hold will be released automatically. Certain conditions may cause it to
          #   #     be released before this time.
          #   #   @option data [String] :created_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the hold
          #   #     was created.
          #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's
          #   #     currency.
          #   #   @option data [String] :held_transaction_id The ID of the Transaction for which funds were held.
          #   #   @option data [String] :pending_transaction_id The ID of the Pending Transaction representing the held funds.
          #   #   @option data [String] :released_at When the hold was released (if it has been released).
          #   #   @option data [String] :status The status of the hold.
          #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
          #   #     `inbound_funds_hold`.
          #   def initialize(data = {}) = super
        end

        class RealTimePaymentsTransferInstruction < Increase::BaseModel
          # @!attribute [rw] amount
          #   The transfer amount in USD cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] transfer_id
          #   The identifier of the Real-Time Payments Transfer that led to this Pending Transaction.
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # Create a new instance of RealTimePaymentsTransferInstruction from a Hash of raw
          #   #   data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [Integer] :amount The transfer amount in USD cents.
          #   #   @option data [String] :transfer_id The identifier of the Real-Time Payments Transfer that led to this Pending
          #   #     Transaction.
          #   def initialize(data = {}) = super
        end

        class WireTransferInstruction < Increase::BaseModel
          # @!attribute [rw] account_number
          #   The account number for the destination account.
          #   @return [String]
          required :account_number, String

          # @!attribute [rw] amount
          #   The transfer amount in USD cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] message_to_recipient
          #   The message that will show on the recipient's bank statement.
          #   @return [String]
          required :message_to_recipient, String

          # @!attribute [rw] routing_number
          #   The American Bankers' Association (ABA) Routing Transit Number (RTN) for the destination account.
          #   @return [String]
          required :routing_number, String

          # @!attribute [rw] transfer_id
          #   The identifier of the Wire Transfer that led to this Pending Transaction.
          #   @return [String]
          required :transfer_id, String

          # @!parse
          #   # Create a new instance of WireTransferInstruction from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :account_number The account number for the destination account.
          #   #   @option data [Integer] :amount The transfer amount in USD cents.
          #   #   @option data [String] :message_to_recipient The message that will show on the recipient's bank statement.
          #   #   @option data [String] :routing_number The American Bankers' Association (ABA) Routing Transit Number (RTN) for the
          #   #     destination account.
          #   #   @option data [String] :transfer_id The identifier of the Wire Transfer that led to this Pending Transaction.
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of Source from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Object] :account_transfer_instruction An Account Transfer Instruction object. This field will be present in the JSON
        #   #     response if and only if `category` is equal to `account_transfer_instruction`.
        #   #   @option data [Object] :ach_transfer_instruction An ACH Transfer Instruction object. This field will be present in the JSON
        #   #     response if and only if `category` is equal to `ach_transfer_instruction`.
        #   #   @option data [Object] :card_authorization A Card Authorization object. This field will be present in the JSON response if
        #   #     and only if `category` is equal to `card_authorization`.
        #   #   @option data [String] :category The type of the resource. We may add additional possible values for this enum
        #   #     over time; your application should be able to handle such additions gracefully.
        #   #   @option data [Object] :check_deposit_instruction A Check Deposit Instruction object. This field will be present in the JSON
        #   #     response if and only if `category` is equal to `check_deposit_instruction`.
        #   #   @option data [Object] :check_transfer_instruction A Check Transfer Instruction object. This field will be present in the JSON
        #   #     response if and only if `category` is equal to `check_transfer_instruction`.
        #   #   @option data [Object] :inbound_funds_hold An Inbound Funds Hold object. This field will be present in the JSON response if
        #   #     and only if `category` is equal to `inbound_funds_hold`.
        #   #   @option data [Object] :other If the category of this Transaction source is equal to `other`, this field will
        #   #     contain an empty object, otherwise it will contain null.
        #   #   @option data [Object] :real_time_payments_transfer_instruction A Real-Time Payments Transfer Instruction object. This field will be present in
        #   #     the JSON response if and only if `category` is equal to
        #   #     `real_time_payments_transfer_instruction`.
        #   #   @option data [Object] :wire_transfer_instruction A Wire Transfer Instruction object. This field will be present in the JSON
        #   #     response if and only if `category` is equal to `wire_transfer_instruction`.
        #   def initialize(data = {}) = super
      end

      # Whether the Pending Transaction has been confirmed and has an associated Transaction.
      class Status < Increase::Enum
        # The Pending Transaction is still awaiting confirmation.
        PENDING = :pending

        # The Pending Transaction is confirmed. An associated Transaction exists for this object. The Pending Transaction will no longer count against your balance and can generally be hidden from UIs, etc.
        COMPLETE = :complete
      end

      # A constant representing the object's type. For this resource it will always be `pending_transaction`.
      class Type < Increase::Enum
        PENDING_TRANSACTION = :pending_transaction
      end

      # @!parse
      #   # Create a new instance of PendingTransaction from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id The Pending Transaction identifier.
      #   #   @option data [String] :account_id The identifier for the account this Pending Transaction belongs to.
      #   #   @option data [Integer] :amount The Pending Transaction amount in the minor unit of its currency. For dollars,
      #   #     for example, this is cents.
      #   #   @option data [String] :completed_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which the Pending
      #   #     Transaction was completed.
      #   #   @option data [String] :created_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which the Pending
      #   #     Transaction occurred.
      #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Pending
      #   #     Transaction's currency. This will match the currency on the Pending
      #   #     Transaction's Account.
      #   #   @option data [String] :description For a Pending Transaction related to a transfer, this is the description you
      #   #     provide. For a Pending Transaction related to a payment, this is the description
      #   #     the vendor provides.
      #   #   @option data [String] :route_id The identifier for the route this Pending Transaction came through. Routes are
      #   #     things like cards and ACH details.
      #   #   @option data [String] :route_type The type of the route this Pending Transaction came through.
      #   #   @option data [Object] :source This is an object giving more details on the network-level event that caused the
      #   #     Pending Transaction. For example, for a card transaction this lists the
      #   #     merchant's industry and location.
      #   #   @option data [String] :status Whether the Pending Transaction has been confirmed and has an associated
      #   #     Transaction.
      #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
      #   #     `pending_transaction`.
      #   def initialize(data = {}) = super
    end
  end
end
