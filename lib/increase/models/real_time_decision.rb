# frozen_string_literal: true

module Increase
  module Models
    class RealTimeDecision < BaseModel
      # @!attribute [rw] id
      #   The Real-Time Decision identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] card_authorization
      #   Fields related to a card authorization.
      #   @return [Increase::Models::RealTimeDecision::CardAuthorization]
      required :card_authorization, -> { Increase::Models::RealTimeDecision::CardAuthorization }

      # @!attribute [rw] category
      #   The category of the Real-Time Decision.
      #   @return [Symbol]
      required :category,
               Increase::Enum.new(
                 :card_authorization_requested,
                 :digital_wallet_token_requested,
                 :digital_wallet_authentication_requested
               )

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the Real-Time Decision was created.
      #   @return [String]
      required :created_at, String

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
      #   @return [Symbol]
      required :status, Increase::Enum.new(:pending, :responded, :timed_out)

      # @!attribute [rw] timeout_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which your application can no longer respond to the Real-Time Decision.
      #   @return [String]
      required :timeout_at, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `real_time_decision`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:real_time_decision)

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
        #   @return [Symbol]
        required :decision, Increase::Enum.new(:approve, :decline)

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
        #   @return [Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails]
        required :network_details, -> { Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails }

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

        # @!attribute [rw] request_details
        #   Fields specific to the type of request, such as an incremental authorization.
        #   @return [Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails]
        required :request_details, -> { Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails }

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

        class NetworkDetails < BaseModel
          # @!attribute [rw] category
          #   The payment network used to process this card authorization.
          #   @return [Symbol]
          required :category, Increase::Enum.new(:visa)

          # @!attribute [rw] visa
          #   Fields specific to the `visa` network.
          #   @return [Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa]
          required :visa, -> { Increase::Models::RealTimeDecision::CardAuthorization::NetworkDetails::Visa }

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

        class RequestDetails < BaseModel
          # @!attribute [rw] category
          #   The type of this request (e.g., an initial authorization or an incremental authorization).
          #   @return [Symbol]
          required :category, Increase::Enum.new(:initial_authorization, :incremental_authorization)

          # @!attribute [rw] incremental_authorization
          #   Fields specific to the category `incremental_authorization`.
          #   @return [Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::IncrementalAuthorization]
          required :incremental_authorization,
                   -> { Increase::Models::RealTimeDecision::CardAuthorization::RequestDetails::IncrementalAuthorization }

          # @!attribute [rw] initial_authorization
          #   Fields specific to the category `initial_authorization`.
          #   @return [Object]
          required :initial_authorization, Increase::Unknown

          class IncrementalAuthorization < BaseModel
            # @!attribute [rw] card_payment_id
            #   The card payment for this authorization and increment.
            #   @return [String]
            required :card_payment_id, String

            # @!attribute [rw] original_card_authorization_id
            #   The identifier of the card authorization this request is attempting to increment.
            #   @return [String]
            required :original_card_authorization_id, String
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

      class DigitalWalletAuthentication < BaseModel
        # @!attribute [rw] card_id
        #   The identifier of the Card that is being tokenized.
        #   @return [String]
        required :card_id, String

        # @!attribute [rw] channel
        #   The channel to send the card user their one-time passcode.
        #   @return [Symbol]
        required :channel, Increase::Enum.new(:sms, :email)

        # @!attribute [rw] digital_wallet
        #   The digital wallet app being used.
        #   @return [Symbol]
        required :digital_wallet, Increase::Enum.new(:apple_pay, :google_pay, :unknown)

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
        #   @return [Symbol]
        required :result, Increase::Enum.new(:success, :failure)
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
        #   @return [Symbol]
        required :decision, Increase::Enum.new(:approve, :decline)

        # @!attribute [rw] digital_wallet
        #   The digital wallet app being used.
        #   @return [Symbol]
        required :digital_wallet, Increase::Enum.new(:apple_pay, :google_pay, :unknown)
      end
    end
  end
end
