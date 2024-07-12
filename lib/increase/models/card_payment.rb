# frozen_string_literal: true

module Increase
  module Models
    class CardPayment < BaseModel
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
      #   @return [String]
      required :created_at, String

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
      #   @return [Symbol]
      required :type, Increase::Enum.new(:card_payment)

      class Element < BaseModel
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
        #   @return [Symbol]
        required :category,
                 Increase::Enum.new(
                   :card_authorization,
                   :card_validation,
                   :card_decline,
                   :card_reversal,
                   :card_authorization_expiration,
                   :card_increment,
                   :card_settlement,
                   :card_refund,
                   :card_fuel_confirmation,
                   :other
                 )

        # @!attribute [rw] created_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the card payment element was created.
        #   @return [String]
        required :created_at, String

        class CardAuthorization < BaseModel
          # @!attribute [rw] id
          #   The Card Authorization identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] actioner
          #   Whether this authorization was approved by Increase, the card network through stand-in processing, or the user through a real-time decision.
          #   @return [Symbol]
          required :actioner, Increase::Enum.new(:user, :increase, :network)

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
          #   @return [Symbol]
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] digital_wallet_token_id
          #   If the authorization was made via a Digital Wallet Token (such as an Apple Pay purchase), the identifier of the token that was used.
          #   @return [String]
          required :digital_wallet_token_id, String

          # @!attribute [rw] direction
          #   The direction descibes the direction the funds will move, either from the cardholder to the merchant or from the merchant to the cardholder.
          #   @return [Symbol]
          required :direction, Increase::Enum.new(:settlement, :refund)

          # @!attribute [rw] expires_at
          #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) when this authorization will expire and the pending transaction will be released.
          #   @return [String]
          required :expires_at, String

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
          #   @return [Symbol]
          required :processing_category,
                   Increase::Enum.new(
                     :account_funding,
                     :automatic_fuel_dispenser,
                     :bill_payment,
                     :purchase,
                     :quasi_cash,
                     :refund
                   )

          # @!attribute [rw] real_time_decision_id
          #   The identifier of the Real-Time Decision sent to approve or decline this transaction.
          #   @return [String]
          required :real_time_decision_id, String

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `card_authorization`.
          #   @return [Symbol]
          required :type, Increase::Enum.new(:card_authorization)

          # @!attribute [rw] verification
          #   Fields related to verification of cardholder-provided values.
          #   @return [Increase::Models::CardPayment::Element::CardAuthorization::Verification]
          required :verification, -> { Increase::Models::CardPayment::Element::CardAuthorization::Verification }

          class NetworkDetails < BaseModel
            # @!attribute [rw] category
            #   The payment network used to process this card authorization.
            #   @return [Symbol]
            required :category, Increase::Enum.new(:visa)

            # @!attribute [rw] visa
            #   Fields specific to the `visa` network.
            #   @return [Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa]
            required :visa, -> { Increase::Models::CardPayment::Element::CardAuthorization::NetworkDetails::Visa }

            class Visa < BaseModel
              # @!attribute [rw] electronic_commerce_indicator
              #   For electronic commerce transactions, this identifies the level of security used in obtaining the customer's payment credential. For mail or telephone order transactions, identifies the type of mail or telephone order.
              #   @return [Symbol]
              required :electronic_commerce_indicator,
                       Increase::Enum.new(
                         :mail_phone_order,
                         :recurring,
                         :installment,
                         :unknown_mail_phone_order,
                         :secure_electronic_commerce,
                         :non_authenticated_security_transaction_at_3ds_capable_merchant,
                         :non_authenticated_security_transaction,
                         :non_secure_transaction
                       )

              # @!attribute [rw] point_of_service_entry_mode
              #   The method used to enter the cardholder's primary account number and card expiration date.
              #   @return [Symbol]
              required :point_of_service_entry_mode,
                       Increase::Enum.new(
                         :unknown,
                         :manual,
                         :magnetic_stripe_no_cvv,
                         :optical_code,
                         :integrated_circuit_card,
                         :contactless,
                         :credential_on_file,
                         :magnetic_stripe,
                         :contactless_magnetic_stripe,
                         :integrated_circuit_card_no_cvv
                       )
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

          class Verification < BaseModel
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

            class CardVerificationCode < BaseModel
              # @!attribute [rw] result
              #   The result of verifying the Card Verification Code.
              #   @return [Symbol]
              required :result, Increase::Enum.new(:not_checked, :match, :no_match)
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
              #   @return [Symbol]
              required :result,
                       Increase::Enum.new(
                         :not_checked,
                         :postal_code_match_address_not_checked,
                         :postal_code_match_address_no_match,
                         :postal_code_no_match_address_match,
                         :match,
                         :no_match
                       )
            end
          end
        end

        class CardAuthorizationExpiration < BaseModel
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
          #   @return [Symbol]
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] expired_amount
          #   The amount of this authorization expiration in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :expired_amount, Integer

          # @!attribute [rw] network
          #   The card network used to process this card authorization.
          #   @return [Symbol]
          required :network, Increase::Enum.new(:visa)

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `card_authorization_expiration`.
          #   @return [Symbol]
          required :type, Increase::Enum.new(:card_authorization_expiration)
        end

        class CardDecline < BaseModel
          # @!attribute [rw] id
          #   The Card Decline identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] actioner
          #   Whether this authorization was approved by Increase, the card network through stand-in processing, or the user through a real-time decision.
          #   @return [Symbol]
          required :actioner, Increase::Enum.new(:user, :increase, :network)

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
          #   @return [Symbol]
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

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

          # @!attribute [rw] merchant_state
          #   The state the merchant resides in.
          #   @return [String]
          required :merchant_state, String

          # @!attribute [rw] network_details
          #   Fields specific to the `network`.
          #   @return [Increase::Models::CardPayment::Element::CardDecline::NetworkDetails]
          required :network_details, -> { Increase::Models::CardPayment::Element::CardDecline::NetworkDetails }

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
          #   @return [Symbol]
          required :processing_category,
                   Increase::Enum.new(
                     :account_funding,
                     :automatic_fuel_dispenser,
                     :bill_payment,
                     :purchase,
                     :quasi_cash,
                     :refund
                   )

          # @!attribute [rw] real_time_decision_id
          #   The identifier of the Real-Time Decision sent to approve or decline this transaction.
          #   @return [String]
          required :real_time_decision_id, String

          # @!attribute [rw] reason
          #   Why the transaction was declined.
          #   @return [Symbol]
          required :reason,
                   Increase::Enum.new(
                     :card_not_active,
                     :physical_card_not_active,
                     :entity_not_active,
                     :group_locked,
                     :insufficient_funds,
                     :cvv2_mismatch,
                     :card_expiration_mismatch,
                     :transaction_not_allowed,
                     :breaches_limit,
                     :webhook_declined,
                     :webhook_timed_out,
                     :declined_by_stand_in_processing,
                     :invalid_physical_card,
                     :missing_original_authorization,
                     :suspected_fraud
                   )

          # @!attribute [rw] verification
          #   Fields related to verification of cardholder-provided values.
          #   @return [Increase::Models::CardPayment::Element::CardDecline::Verification]
          required :verification, -> { Increase::Models::CardPayment::Element::CardDecline::Verification }

          class NetworkDetails < BaseModel
            # @!attribute [rw] category
            #   The payment network used to process this card authorization.
            #   @return [Symbol]
            required :category, Increase::Enum.new(:visa)

            # @!attribute [rw] visa
            #   Fields specific to the `visa` network.
            #   @return [Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa]
            required :visa, -> { Increase::Models::CardPayment::Element::CardDecline::NetworkDetails::Visa }

            class Visa < BaseModel
              # @!attribute [rw] electronic_commerce_indicator
              #   For electronic commerce transactions, this identifies the level of security used in obtaining the customer's payment credential. For mail or telephone order transactions, identifies the type of mail or telephone order.
              #   @return [Symbol]
              required :electronic_commerce_indicator,
                       Increase::Enum.new(
                         :mail_phone_order,
                         :recurring,
                         :installment,
                         :unknown_mail_phone_order,
                         :secure_electronic_commerce,
                         :non_authenticated_security_transaction_at_3ds_capable_merchant,
                         :non_authenticated_security_transaction,
                         :non_secure_transaction
                       )

              # @!attribute [rw] point_of_service_entry_mode
              #   The method used to enter the cardholder's primary account number and card expiration date.
              #   @return [Symbol]
              required :point_of_service_entry_mode,
                       Increase::Enum.new(
                         :unknown,
                         :manual,
                         :magnetic_stripe_no_cvv,
                         :optical_code,
                         :integrated_circuit_card,
                         :contactless,
                         :credential_on_file,
                         :magnetic_stripe,
                         :contactless_magnetic_stripe,
                         :integrated_circuit_card_no_cvv
                       )
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

          class Verification < BaseModel
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

            class CardVerificationCode < BaseModel
              # @!attribute [rw] result
              #   The result of verifying the Card Verification Code.
              #   @return [Symbol]
              required :result, Increase::Enum.new(:not_checked, :match, :no_match)
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
              #   @return [Symbol]
              required :result,
                       Increase::Enum.new(
                         :not_checked,
                         :postal_code_match_address_not_checked,
                         :postal_code_match_address_no_match,
                         :postal_code_no_match_address_match,
                         :match,
                         :no_match
                       )
            end
          end
        end

        class CardFuelConfirmation < BaseModel
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
          #   @return [Symbol]
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] network
          #   The card network used to process this card authorization.
          #   @return [Symbol]
          required :network, Increase::Enum.new(:visa)

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
          #   @return [Symbol]
          required :type, Increase::Enum.new(:card_fuel_confirmation)

          # @!attribute [rw] updated_authorization_amount
          #   The updated authorization amount after this fuel confirmation, in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :updated_authorization_amount, Integer

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
        end

        class CardIncrement < BaseModel
          # @!attribute [rw] id
          #   The Card Increment identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] actioner
          #   Whether this authorization was approved by Increase, the card network through stand-in processing, or the user through a real-time decision.
          #   @return [Symbol]
          required :actioner, Increase::Enum.new(:user, :increase, :network)

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
          #   @return [Symbol]
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] network
          #   The card network used to process this card authorization.
          #   @return [Symbol]
          required :network, Increase::Enum.new(:visa)

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
          #   @return [Symbol]
          required :type, Increase::Enum.new(:card_increment)

          # @!attribute [rw] updated_authorization_amount
          #   The updated authorization amount after this increment, in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :updated_authorization_amount, Integer

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
        end

        class CardRefund < BaseModel
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
          #   @return [Symbol]
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

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
          required :purchase_details, -> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails }

          # @!attribute [rw] transaction_id
          #   The identifier of the Transaction associated with this Transaction.
          #   @return [String]
          required :transaction_id, String

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `card_refund`.
          #   @return [Symbol]
          required :type, Increase::Enum.new(:card_refund)

          class NetworkIdentifiers < BaseModel
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
          end

          class PurchaseDetails < BaseModel
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
            required :lodging, -> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Lodging }

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
            #   @return [Symbol]
            required :purchase_identifier_format,
                     Increase::Enum.new(
                       :free_text,
                       :order_number,
                       :rental_agreement_number,
                       :hotel_folio_number,
                       :invoice_number
                     )

            # @!attribute [rw] travel
            #   Fields specific to travel.
            #   @return [Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel]
            required :travel, -> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel }

            class CarRental < BaseModel
              # @!attribute [rw] car_class_code
              #   Code indicating the vehicle's class.
              #   @return [String]
              required :car_class_code, String

              # @!attribute [rw] checkout_date
              #   Date the customer picked up the car or, in the case of a no-show or pre-pay transaction, the scheduled pick up date.
              #   @return [String]
              required :checkout_date, String

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
              #   @return [Symbol]
              required :extra_charges,
                       Increase::Enum.new(
                         :no_extra_charge,
                         :gas,
                         :extra_mileage,
                         :late_return,
                         :one_way_service_fee,
                         :parking_violation
                       )

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
              #   @return [Symbol]
              required :no_show_indicator, Increase::Enum.new(:not_applicable, :no_show_for_specialized_vehicle)

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
            end

            class Lodging < BaseModel
              # @!attribute [rw] check_in_date
              #   Date the customer checked in.
              #   @return [String]
              required :check_in_date, String

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
              #   @return [Symbol]
              required :extra_charges,
                       Increase::Enum.new(:no_extra_charge, :restaurant, :gift_shop, :mini_bar, :telephone, :other, :laundry)

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
              #   @return [Symbol]
              required :no_show_indicator, Increase::Enum.new(:not_applicable, :no_show)

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
            end

            class Travel < BaseModel
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
              #   @return [Symbol]
              required :credit_reason_indicator,
                       Increase::Enum.new(
                         :no_credit,
                         :passenger_transport_ancillary_purchase_cancellation,
                         :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation,
                         :airline_ticket_cancellation,
                         :other,
                         :partial_refund_of_airline_ticket
                       )

              # @!attribute [rw] departure_date
              #   Date of departure.
              #   @return [String]
              required :departure_date, String

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
              #   @return [Symbol]
              required :restricted_ticket_indicator,
                       Increase::Enum.new(:no_restrictions, :restricted_non_refundable_ticket)

              # @!attribute [rw] ticket_change_indicator
              #   Indicates why a ticket was changed.
              #   @return [Symbol]
              required :ticket_change_indicator, Increase::Enum.new(:none, :change_to_existing_ticket, :new_ticket)

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
                       Increase::ArrayOf.new(-> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::TripLeg })

              class Ancillary < BaseModel
                # @!attribute [rw] connected_ticket_document_number
                #   If this purchase has a connection or relationship to another purchase, such as a baggage fee for a passenger transport ticket, this field should contain the ticket document number for the other purchase.
                #   @return [String]
                required :connected_ticket_document_number, String

                # @!attribute [rw] credit_reason_indicator
                #   Indicates the reason for a credit to the cardholder.
                #   @return [Symbol]
                required :credit_reason_indicator,
                         Increase::Enum.new(
                           :no_credit,
                           :passenger_transport_ancillary_purchase_cancellation,
                           :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation,
                           :other
                         )

                # @!attribute [rw] passenger_name_or_description
                #   Name of the passenger or description of the ancillary purchase.
                #   @return [String]
                required :passenger_name_or_description, String

                # @!attribute [rw] services
                #   Additional travel charges, such as baggage fees.
                #   @return [Array<Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service>]
                required :services,
                         Increase::ArrayOf.new(-> { Increase::Models::CardPayment::Element::CardRefund::PurchaseDetails::Travel::Ancillary::Service })

                # @!attribute [rw] ticket_document_number
                #   Ticket document number.
                #   @return [String]
                required :ticket_document_number, String

                class Service < BaseModel
                  # @!attribute [rw] category
                  #   Category of the ancillary service.
                  #   @return [Symbol]
                  required :category,
                           Increase::Enum.new(
                             :none,
                             :bundled_service,
                             :baggage_fee,
                             :change_fee,
                             :cargo,
                             :carbon_offset,
                             :frequent_flyer,
                             :gift_card,
                             :ground_transport,
                             :in_flight_entertainment,
                             :lounge,
                             :medical,
                             :meal_beverage,
                             :other,
                             :passenger_assist_fee,
                             :pets,
                             :seat_fees,
                             :standby,
                             :service_fee,
                             :store,
                             :travel_service,
                             :unaccompanied_travel,
                             :upgrades,
                             :wifi
                           )

                  # @!attribute [rw] sub_category
                  #   Sub-category of the ancillary service, free-form.
                  #   @return [String]
                  required :sub_category, String
                end
              end

              class TripLeg < BaseModel
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
                #   @return [Symbol]
                required :stop_over_code, Increase::Enum.new(:none, :stop_over_allowed, :stop_over_not_allowed)
              end
            end
          end
        end

        class CardReversal < BaseModel
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
          #   @return [Symbol]
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] network
          #   The card network used to process this card authorization.
          #   @return [Symbol]
          required :network, Increase::Enum.new(:visa)

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

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `card_reversal`.
          #   @return [Symbol]
          required :type, Increase::Enum.new(:card_reversal)

          # @!attribute [rw] updated_authorization_amount
          #   The amount left pending on the Card Authorization in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :updated_authorization_amount, Integer

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
        end

        class CardSettlement < BaseModel
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
          #   @return [Symbol]
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

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
          required :purchase_details, -> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails }

          # @!attribute [rw] transaction_id
          #   The identifier of the Transaction associated with this Transaction.
          #   @return [String]
          required :transaction_id, String

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `card_settlement`.
          #   @return [Symbol]
          required :type, Increase::Enum.new(:card_settlement)

          class NetworkIdentifiers < BaseModel
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
          end

          class PurchaseDetails < BaseModel
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
            required :lodging, -> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Lodging }

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
            #   @return [Symbol]
            required :purchase_identifier_format,
                     Increase::Enum.new(
                       :free_text,
                       :order_number,
                       :rental_agreement_number,
                       :hotel_folio_number,
                       :invoice_number
                     )

            # @!attribute [rw] travel
            #   Fields specific to travel.
            #   @return [Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel]
            required :travel, -> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel }

            class CarRental < BaseModel
              # @!attribute [rw] car_class_code
              #   Code indicating the vehicle's class.
              #   @return [String]
              required :car_class_code, String

              # @!attribute [rw] checkout_date
              #   Date the customer picked up the car or, in the case of a no-show or pre-pay transaction, the scheduled pick up date.
              #   @return [String]
              required :checkout_date, String

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
              #   @return [Symbol]
              required :extra_charges,
                       Increase::Enum.new(
                         :no_extra_charge,
                         :gas,
                         :extra_mileage,
                         :late_return,
                         :one_way_service_fee,
                         :parking_violation
                       )

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
              #   @return [Symbol]
              required :no_show_indicator, Increase::Enum.new(:not_applicable, :no_show_for_specialized_vehicle)

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
            end

            class Lodging < BaseModel
              # @!attribute [rw] check_in_date
              #   Date the customer checked in.
              #   @return [String]
              required :check_in_date, String

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
              #   @return [Symbol]
              required :extra_charges,
                       Increase::Enum.new(:no_extra_charge, :restaurant, :gift_shop, :mini_bar, :telephone, :other, :laundry)

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
              #   @return [Symbol]
              required :no_show_indicator, Increase::Enum.new(:not_applicable, :no_show)

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
            end

            class Travel < BaseModel
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
              #   @return [Symbol]
              required :credit_reason_indicator,
                       Increase::Enum.new(
                         :no_credit,
                         :passenger_transport_ancillary_purchase_cancellation,
                         :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation,
                         :airline_ticket_cancellation,
                         :other,
                         :partial_refund_of_airline_ticket
                       )

              # @!attribute [rw] departure_date
              #   Date of departure.
              #   @return [String]
              required :departure_date, String

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
              #   @return [Symbol]
              required :restricted_ticket_indicator,
                       Increase::Enum.new(:no_restrictions, :restricted_non_refundable_ticket)

              # @!attribute [rw] ticket_change_indicator
              #   Indicates why a ticket was changed.
              #   @return [Symbol]
              required :ticket_change_indicator, Increase::Enum.new(:none, :change_to_existing_ticket, :new_ticket)

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
                       Increase::ArrayOf.new(-> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::TripLeg })

              class Ancillary < BaseModel
                # @!attribute [rw] connected_ticket_document_number
                #   If this purchase has a connection or relationship to another purchase, such as a baggage fee for a passenger transport ticket, this field should contain the ticket document number for the other purchase.
                #   @return [String]
                required :connected_ticket_document_number, String

                # @!attribute [rw] credit_reason_indicator
                #   Indicates the reason for a credit to the cardholder.
                #   @return [Symbol]
                required :credit_reason_indicator,
                         Increase::Enum.new(
                           :no_credit,
                           :passenger_transport_ancillary_purchase_cancellation,
                           :airline_ticket_and_passenger_transport_ancillary_purchase_cancellation,
                           :other
                         )

                # @!attribute [rw] passenger_name_or_description
                #   Name of the passenger or description of the ancillary purchase.
                #   @return [String]
                required :passenger_name_or_description, String

                # @!attribute [rw] services
                #   Additional travel charges, such as baggage fees.
                #   @return [Array<Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service>]
                required :services,
                         Increase::ArrayOf.new(-> { Increase::Models::CardPayment::Element::CardSettlement::PurchaseDetails::Travel::Ancillary::Service })

                # @!attribute [rw] ticket_document_number
                #   Ticket document number.
                #   @return [String]
                required :ticket_document_number, String

                class Service < BaseModel
                  # @!attribute [rw] category
                  #   Category of the ancillary service.
                  #   @return [Symbol]
                  required :category,
                           Increase::Enum.new(
                             :none,
                             :bundled_service,
                             :baggage_fee,
                             :change_fee,
                             :cargo,
                             :carbon_offset,
                             :frequent_flyer,
                             :gift_card,
                             :ground_transport,
                             :in_flight_entertainment,
                             :lounge,
                             :medical,
                             :meal_beverage,
                             :other,
                             :passenger_assist_fee,
                             :pets,
                             :seat_fees,
                             :standby,
                             :service_fee,
                             :store,
                             :travel_service,
                             :unaccompanied_travel,
                             :upgrades,
                             :wifi
                           )

                  # @!attribute [rw] sub_category
                  #   Sub-category of the ancillary service, free-form.
                  #   @return [String]
                  required :sub_category, String
                end
              end

              class TripLeg < BaseModel
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
                #   @return [Symbol]
                required :stop_over_code, Increase::Enum.new(:none, :stop_over_allowed, :stop_over_not_allowed)
              end
            end
          end
        end

        class CardValidation < BaseModel
          # @!attribute [rw] id
          #   The Card Validation identifier.
          #   @return [String]
          required :id, String

          # @!attribute [rw] actioner
          #   Whether this authorization was approved by Increase, the card network through stand-in processing, or the user through a real-time decision.
          #   @return [Symbol]
          required :actioner, Increase::Enum.new(:user, :increase, :network)

          # @!attribute [rw] card_payment_id
          #   The ID of the Card Payment this transaction belongs to.
          #   @return [String]
          required :card_payment_id, String

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's currency.
          #   @return [Symbol]
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

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

          # @!attribute [rw] network_details
          #   Fields specific to the `network`.
          #   @return [Increase::Models::CardPayment::Element::CardValidation::NetworkDetails]
          required :network_details, -> { Increase::Models::CardPayment::Element::CardValidation::NetworkDetails }

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

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `card_validation`.
          #   @return [Symbol]
          required :type, Increase::Enum.new(:card_validation)

          # @!attribute [rw] verification
          #   Fields related to verification of cardholder-provided values.
          #   @return [Increase::Models::CardPayment::Element::CardValidation::Verification]
          required :verification, -> { Increase::Models::CardPayment::Element::CardValidation::Verification }

          class NetworkDetails < BaseModel
            # @!attribute [rw] category
            #   The payment network used to process this card authorization.
            #   @return [Symbol]
            required :category, Increase::Enum.new(:visa)

            # @!attribute [rw] visa
            #   Fields specific to the `visa` network.
            #   @return [Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa]
            required :visa, -> { Increase::Models::CardPayment::Element::CardValidation::NetworkDetails::Visa }

            class Visa < BaseModel
              # @!attribute [rw] electronic_commerce_indicator
              #   For electronic commerce transactions, this identifies the level of security used in obtaining the customer's payment credential. For mail or telephone order transactions, identifies the type of mail or telephone order.
              #   @return [Symbol]
              required :electronic_commerce_indicator,
                       Increase::Enum.new(
                         :mail_phone_order,
                         :recurring,
                         :installment,
                         :unknown_mail_phone_order,
                         :secure_electronic_commerce,
                         :non_authenticated_security_transaction_at_3ds_capable_merchant,
                         :non_authenticated_security_transaction,
                         :non_secure_transaction
                       )

              # @!attribute [rw] point_of_service_entry_mode
              #   The method used to enter the cardholder's primary account number and card expiration date.
              #   @return [Symbol]
              required :point_of_service_entry_mode,
                       Increase::Enum.new(
                         :unknown,
                         :manual,
                         :magnetic_stripe_no_cvv,
                         :optical_code,
                         :integrated_circuit_card,
                         :contactless,
                         :credential_on_file,
                         :magnetic_stripe,
                         :contactless_magnetic_stripe,
                         :integrated_circuit_card_no_cvv
                       )
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

          class Verification < BaseModel
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

            class CardVerificationCode < BaseModel
              # @!attribute [rw] result
              #   The result of verifying the Card Verification Code.
              #   @return [Symbol]
              required :result, Increase::Enum.new(:not_checked, :match, :no_match)
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
              #   @return [Symbol]
              required :result,
                       Increase::Enum.new(
                         :not_checked,
                         :postal_code_match_address_not_checked,
                         :postal_code_match_address_no_match,
                         :postal_code_no_match_address_match,
                         :match,
                         :no_match
                       )
            end
          end
        end
      end

      class State < BaseModel
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
      end
    end
  end
end
