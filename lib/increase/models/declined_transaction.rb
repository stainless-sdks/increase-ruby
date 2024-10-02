# frozen_string_literal: true

module Increase
  module Models
    class DeclinedTransaction < BaseModel
      # @!attribute [rw] id
      #   The Declined Transaction identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The identifier for the Account the Declined Transaction belongs to.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] amount
      #   The Declined Transaction amount in the minor unit of its currency. For dollars, for example, this is cents.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which the Transaction occurred.
      #   @return [DateTime]
      required :created_at, DateTime

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Declined Transaction's currency. This will match the currency on the Declined Transaction's Account.
      #   One of the constants defined in {Increase::Models::DeclinedTransaction::Currency}
      #   @return [Symbol]
      required :currency, enum: -> { Increase::Models::DeclinedTransaction::Currency }

      # @!attribute [rw] description
      #   This is the description the vendor provides.
      #   @return [String]
      required :description, String

      # @!attribute [rw] route_id
      #   The identifier for the route this Declined Transaction came through. Routes are things like cards and ACH details.
      #   @return [String]
      required :route_id, String

      # @!attribute [rw] route_type
      #   The type of the route this Declined Transaction came through.
      #   One of the constants defined in {Increase::Models::DeclinedTransaction::RouteType}
      #   @return [Symbol]
      required :route_type, enum: -> { Increase::Models::DeclinedTransaction::RouteType }

      # @!attribute [rw] source
      #   This is an object giving more details on the network-level event that caused the Declined Transaction. For example, for a card transaction this lists the merchant's industry and location. Note that for backwards compatibility reasons, additional undocumented keys may appear in this object. These should be treated as deprecated and will be removed in the future.
      #   @return [Increase::Models::DeclinedTransaction::Source]
      required :source, -> { Increase::Models::DeclinedTransaction::Source }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `declined_transaction`.
      #   One of the constants defined in {Increase::Models::DeclinedTransaction::Type}
      #   @return [Symbol]
      required :type, enum: -> { Increase::Models::DeclinedTransaction::Type }

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Declined Transaction's currency. This will match the currency on the Declined Transaction's Account.
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

      # The type of the route this Declined Transaction came through.
      class RouteType < Increase::Enum
        # An Account Number.
        ACCOUNT_NUMBER = :account_number

        # A Card.
        CARD = :card

        # A Lockbox.
        LOCKBOX = :lockbox
      end

      class Source < BaseModel
        # @!attribute [rw] ach_decline
        #   An ACH Decline object. This field will be present in the JSON response if and only if `category` is equal to `ach_decline`.
        #   @return [Increase::Models::DeclinedTransaction::Source::ACHDecline]
        required :ach_decline, -> { Increase::Models::DeclinedTransaction::Source::ACHDecline }

        # @!attribute [rw] card_decline
        #   A Card Decline object. This field will be present in the JSON response if and only if `category` is equal to `card_decline`.
        #   @return [Increase::Models::DeclinedTransaction::Source::CardDecline]
        required :card_decline, -> { Increase::Models::DeclinedTransaction::Source::CardDecline }

        # @!attribute [rw] category
        #   The type of the resource. We may add additional possible values for this enum over time; your application should be able to handle such additions gracefully.
        #   One of the constants defined in {Increase::Models::DeclinedTransaction::Source::Category}
        #   @return [Symbol]
        required :category, enum: -> { Increase::Models::DeclinedTransaction::Source::Category }

        # @!attribute [rw] check_decline
        #   A Check Decline object. This field will be present in the JSON response if and only if `category` is equal to `check_decline`.
        #   @return [Increase::Models::DeclinedTransaction::Source::CheckDecline]
        required :check_decline, -> { Increase::Models::DeclinedTransaction::Source::CheckDecline }

        # @!attribute [rw] check_deposit_rejection
        #   A Check Deposit Rejection object. This field will be present in the JSON response if and only if `category` is equal to `check_deposit_rejection`.
        #   @return [Increase::Models::DeclinedTransaction::Source::CheckDepositRejection]
        required :check_deposit_rejection,
                 -> { Increase::Models::DeclinedTransaction::Source::CheckDepositRejection }

        # @!attribute [rw] inbound_real_time_payments_transfer_decline
        #   An Inbound Real-Time Payments Transfer Decline object. This field will be present in the JSON response if and only if `category` is equal to `inbound_real_time_payments_transfer_decline`.
        #   @return [Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline]
        required :inbound_real_time_payments_transfer_decline,
                 -> { Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline }

        # @!attribute [rw] other
        #   If the category of this Transaction source is equal to `other`, this field will contain an empty object, otherwise it will contain null.
        #   @return [Object]
        required :other, Increase::Unknown

        # @!attribute [rw] wire_decline
        #   A Wire Decline object. This field will be present in the JSON response if and only if `category` is equal to `wire_decline`.
        #   @return [Increase::Models::DeclinedTransaction::Source::WireDecline]
        required :wire_decline, -> { Increase::Models::DeclinedTransaction::Source::WireDecline }

        class ACHDecline < BaseModel
          # @!attribute [rw] id
          #   The ACH Decline's identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] amount
          #   The declined amount in the minor unit of the destination account currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] inbound_ach_transfer_id
          #   The identifier of the Inbound ACH Transfer object associated with this decline.
          #   @return [String]
          required :inbound_ach_transfer_id, String

          # @!attribute [rw] originator_company_descriptive_date
          #   The descriptive date of the transfer.
          #   @return [String]
          required :originator_company_descriptive_date, String

          # @!attribute [rw] originator_company_discretionary_data
          #   The additional information included with the transfer.
          #   @return [String]
          required :originator_company_discretionary_data, String

          # @!attribute [rw] originator_company_id
          #   The identifier of the company that initiated the transfer.
          #   @return [String]
          required :originator_company_id, String

          # @!attribute [rw] originator_company_name
          #   The name of the company that initiated the transfer.
          #   @return [String]
          required :originator_company_name, String

          # @!attribute [rw] reason
          #   Why the ACH transfer was declined.
          #   One of the constants defined in {Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason}
          #   @return [Symbol]
          required :reason, enum: -> { Increase::Models::DeclinedTransaction::Source::ACHDecline::Reason }

          # @!attribute [rw] receiver_id_number
          #   The id of the receiver of the transfer.
          #   @return [String]
          required :receiver_id_number, String

          # @!attribute [rw] receiver_name
          #   The name of the receiver of the transfer.
          #   @return [String]
          required :receiver_name, String

          # @!attribute [rw] trace_number
          #   The trace number of the transfer.
          #   @return [String]
          required :trace_number, String

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `ach_decline`.
          #   One of the constants defined in {Increase::Models::DeclinedTransaction::Source::ACHDecline::Type}
          #   @return [Symbol]
          required :type, enum: -> { Increase::Models::DeclinedTransaction::Source::ACHDecline::Type }

          # Why the ACH transfer was declined.
          class Reason < Increase::Enum
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
          end

          # A constant representing the object's type. For this resource it will always be `ach_decline`.
          class Type < Increase::Enum
            ACH_DECLINE = :ach_decline
          end
        end

        class CardDecline < BaseModel
          # @!attribute [rw] id
          #   The Card Decline identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] actioner
          #   Whether this authorization was approved by Increase, the card network through stand-in processing, or the user through a real-time decision.
          #   One of the constants defined in {Increase::Models::DeclinedTransaction::Source::CardDecline::Actioner}
          #   @return [Symbol]
          required :actioner,
                   enum: lambda {
                     Increase::Models::DeclinedTransaction::Source::CardDecline::Actioner
                   }

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
          #   One of the constants defined in {Increase::Models::DeclinedTransaction::Source::CardDecline::Currency}
          #   @return [Symbol]
          required :currency,
                   enum: lambda {
                     Increase::Models::DeclinedTransaction::Source::CardDecline::Currency
                   }

          # @!attribute [rw] declined_transaction_id
          #   The identifier of the declined transaction created for this Card Decline.
          #   @return [String]
          required :declined_transaction_id, String

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
          #   @return [Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails]
          required :network_details,
                   -> { Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails }

          # @!attribute [rw] network_identifiers
          #   Network-specific identifiers for a specific request or transaction.
          #   @return [Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkIdentifiers]
          required :network_identifiers,
                   -> { Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkIdentifiers }

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
          #   One of the constants defined in {Increase::Models::DeclinedTransaction::Source::CardDecline::ProcessingCategory}
          #   @return [Symbol]
          required :processing_category,
                   enum: -> { Increase::Models::DeclinedTransaction::Source::CardDecline::ProcessingCategory }

          # @!attribute [rw] real_time_decision_id
          #   The identifier of the Real-Time Decision sent to approve or decline this transaction.
          #   @return [String]
          required :real_time_decision_id, String

          # @!attribute [rw] reason
          #   Why the transaction was declined.
          #   One of the constants defined in {Increase::Models::DeclinedTransaction::Source::CardDecline::Reason}
          #   @return [Symbol]
          required :reason, enum: -> { Increase::Models::DeclinedTransaction::Source::CardDecline::Reason }

          # @!attribute [rw] verification
          #   Fields related to verification of cardholder-provided values.
          #   @return [Increase::Models::DeclinedTransaction::Source::CardDecline::Verification]
          required :verification,
                   lambda {
                     Increase::Models::DeclinedTransaction::Source::CardDecline::Verification
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

          class NetworkDetails < BaseModel
            # @!attribute [rw] category
            #   The payment network used to process this card authorization.
            #   One of the constants defined in {Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Category}
            #   @return [Symbol]
            required :category,
                     enum: lambda {
                       Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Category
                     }

            # @!attribute [rw] visa
            #   Fields specific to the `visa` network.
            #   @return [Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa]
            required :visa,
                     lambda {
                       Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa
                     }

            # The payment network used to process this card authorization.
            class Category < Increase::Enum
              # Visa
              VISA = :visa
            end

            class Visa < BaseModel
              # @!attribute [rw] electronic_commerce_indicator
              #   For electronic commerce transactions, this identifies the level of security used in obtaining the customer's payment credential. For mail or telephone order transactions, identifies the type of mail or telephone order.
              #   One of the constants defined in {Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator}
              #   @return [Symbol]
              required :electronic_commerce_indicator,
                       enum: lambda {
                         Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::ElectronicCommerceIndicator
                       }

              # @!attribute [rw] point_of_service_entry_mode
              #   The method used to enter the cardholder's primary account number and card expiration date.
              #   One of the constants defined in {Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode}
              #   @return [Symbol]
              required :point_of_service_entry_mode,
                       enum: lambda {
                         Increase::Models::DeclinedTransaction::Source::CardDecline::NetworkDetails::Visa::PointOfServiceEntryMode
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

          class Verification < BaseModel
            # @!attribute [rw] card_verification_code
            #   Fields related to verification of the Card Verification Code, a 3-digit code on the back of the card.
            #   @return [Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode]
            required :card_verification_code,
                     -> { Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode }

            # @!attribute [rw] cardholder_address
            #   Cardholder address provided in the authorization request and the address on file we verified it against.
            #   @return [Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress]
            required :cardholder_address,
                     -> { Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress }

            class CardVerificationCode < BaseModel
              # @!attribute [rw] result
              #   The result of verifying the Card Verification Code.
              #   One of the constants defined in {Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode::Result}
              #   @return [Symbol]
              required :result,
                       enum: lambda {
                         Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardVerificationCode::Result
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
              #   One of the constants defined in {Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress::Result}
              #   @return [Symbol]
              required :result,
                       enum: lambda {
                         Increase::Models::DeclinedTransaction::Source::CardDecline::Verification::CardholderAddress::Result
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
            end
          end
        end

        # The type of the resource. We may add additional possible values for this enum over time; your application should be able to handle such additions gracefully.
        class Category < Increase::Enum
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
        end

        class CheckDecline < BaseModel
          # @!attribute [rw] amount
          #   The declined amount in the minor unit of the destination account currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] auxiliary_on_us
          #   A computer-readable number printed on the MICR line of business checks, usually the check number. This is useful for positive pay checks, but can be unreliably transmitted by the bank of first deposit.
          #   @return [String]
          required :auxiliary_on_us, String

          # @!attribute [rw] back_image_file_id
          #   The identifier of the API File object containing an image of the back of the declined check.
          #   @return [String]
          required :back_image_file_id, String

          # @!attribute [rw] check_transfer_id
          #   The identifier of the Check Transfer object associated with this decline.
          #   @return [String]
          required :check_transfer_id, String

          # @!attribute [rw] front_image_file_id
          #   The identifier of the API File object containing an image of the front of the declined check.
          #   @return [String]
          required :front_image_file_id, String

          # @!attribute [rw] inbound_check_deposit_id
          #   The identifier of the Inbound Check Deposit object associated with this decline.
          #   @return [String]
          required :inbound_check_deposit_id, String

          # @!attribute [rw] reason
          #   Why the check was declined.
          #   One of the constants defined in {Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason}
          #   @return [Symbol]
          required :reason, enum: -> { Increase::Models::DeclinedTransaction::Source::CheckDecline::Reason }

          # Why the check was declined.
          class Reason < Increase::Enum
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
          end
        end

        class CheckDepositRejection < BaseModel
          # @!attribute [rw] amount
          #   The rejected amount in the minor unit of check's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] check_deposit_id
          #   The identifier of the Check Deposit that was rejected.
          #   @return [String]
          required :check_deposit_id, String

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's currency.
          #   One of the constants defined in {Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Currency}
          #   @return [Symbol]
          required :currency,
                   enum: -> { Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Currency }

          # @!attribute [rw] declined_transaction_id
          #   The identifier of the associated declined transaction.
          #   @return [String]
          required :declined_transaction_id, String

          # @!attribute [rw] reason
          #   Why the check deposit was rejected.
          #   One of the constants defined in {Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason}
          #   @return [Symbol]
          required :reason,
                   enum: -> { Increase::Models::DeclinedTransaction::Source::CheckDepositRejection::Reason }

          # @!attribute [rw] rejected_at
          #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the check deposit was rejected.
          #   @return [DateTime]
          required :rejected_at, DateTime

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

          # Why the check deposit was rejected.
          class Reason < Increase::Enum
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

            # The check was rejected for an unknown reason.
            UNKNOWN = :unknown
          end
        end

        class InboundRealTimePaymentsTransferDecline < BaseModel
          # @!attribute [rw] amount
          #   The declined amount in the minor unit of the destination account currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] creditor_name
          #   The name the sender of the transfer specified as the recipient of the transfer.
          #   @return [String]
          required :creditor_name, String

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the declined transfer's currency. This will always be "USD" for a Real-Time Payments transfer.
          #   One of the constants defined in {Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Currency}
          #   @return [Symbol]
          required :currency,
                   enum: lambda {
                     Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Currency
                   }

          # @!attribute [rw] debtor_account_number
          #   The account number of the account that sent the transfer.
          #   @return [String]
          required :debtor_account_number, String

          # @!attribute [rw] debtor_name
          #   The name provided by the sender of the transfer.
          #   @return [String]
          required :debtor_name, String

          # @!attribute [rw] debtor_routing_number
          #   The routing number of the account that sent the transfer.
          #   @return [String]
          required :debtor_routing_number, String

          # @!attribute [rw] reason
          #   Why the transfer was declined.
          #   One of the constants defined in {Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Reason}
          #   @return [Symbol]
          required :reason,
                   enum: lambda {
                     Increase::Models::DeclinedTransaction::Source::InboundRealTimePaymentsTransferDecline::Reason
                   }

          # @!attribute [rw] remittance_information
          #   Additional information included with the transfer.
          #   @return [String]
          required :remittance_information, String

          # @!attribute [rw] transaction_identification
          #   The Real-Time Payments network identification of the declined transfer.
          #   @return [String]
          required :transaction_identification, String

          # @!attribute [rw] transfer_id
          #   The identifier of the Real-Time Payments Transfer that led to this Transaction.
          #   @return [String]
          required :transfer_id, String

          # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code of the declined transfer's currency. This will always be "USD" for a Real-Time Payments transfer.
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

          # Why the transfer was declined.
          class Reason < Increase::Enum
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
          end
        end

        class WireDecline < BaseModel
          # @!attribute [rw] inbound_wire_transfer_id
          #   The identifier of the Inbound Wire Transfer that was declined.
          #   @return [String]
          required :inbound_wire_transfer_id, String

          # @!attribute [rw] reason
          #   Why the wire transfer was declined.
          #   One of the constants defined in {Increase::Models::DeclinedTransaction::Source::WireDecline::Reason}
          #   @return [Symbol]
          required :reason, enum: -> { Increase::Models::DeclinedTransaction::Source::WireDecline::Reason }

          # Why the wire transfer was declined.
          class Reason < Increase::Enum
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
          end
        end
      end

      # A constant representing the object's type. For this resource it will always be `declined_transaction`.
      class Type < Increase::Enum
        DECLINED_TRANSACTION = :declined_transaction
      end
    end
  end
end
