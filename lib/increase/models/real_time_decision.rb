# frozen_string_literal: true

module Increase
  module Models
    class RealTimeDecision
      class Visa
        class Visa
          class Visa
            extend Increase::Model

            include Increase::Model::Instance

            # @!attribute [rw] electronic_commerce_indicator
            required :electronic_commerce_indicator,
                     Increase::Enum.new(
                       [
                         :mail_phone_order,
                         :recurring,
                         :installment,
                         :unknown_mail_phone_order,
                         :secure_electronic_commerce,
                         :non_authenticated_security_transaction_at_3ds_capable_merchant,
                         :non_authenticated_security_transaction,
                         :non_secure_transaction
                       ]
                     )

            # @!attribute [rw] point_of_service_entry_mode
            required :point_of_service_entry_mode,
                     Increase::Enum.new(
                       [
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
                       ]
                     )
          end

          extend Increase::Model

          include Increase::Model::Instance

          # @!attribute [rw] category
          required :category, Increase::Enum.new([:visa])

          # @!attribute [rw] visa
          required :visa, -> { Increase::Models::RealTimeDecision::Visa::Visa::Visa }
        end

        class NetworkIdentifiers
          extend Increase::Model

          include Increase::Model::Instance

          # @!attribute [rw] retrieval_reference_number
          required :retrieval_reference_number, String

          # @!attribute [rw] trace_number
          required :trace_number, String

          # @!attribute [rw] transaction_id
          required :transaction_id, String
        end

        class IncrementalAuthorization
          class IncrementalAuthorization
            extend Increase::Model

            include Increase::Model::Instance

            # @!attribute [rw] card_payment_id
            required :card_payment_id, String

            # @!attribute [rw] original_card_authorization_id
            required :original_card_authorization_id, String
          end

          extend Increase::Model

          include Increase::Model::Instance

          # @!attribute [rw] category
          required :category,
                   Increase::Enum.new(
                     [
                       :initial_authorization,
                       :incremental_authorization
                     ]
                   )

          # @!attribute [rw] incremental_authorization
          required :incremental_authorization,
                   lambda {
                     Increase::Models::RealTimeDecision::Visa::IncrementalAuthorization::IncrementalAuthorization
                   }

          # @!attribute [rw] initial_authorization
          required :initial_authorization, Increase::Unknown
        end

        class CardVerificationCode
          class CardVerificationCode
            extend Increase::Model

            include Increase::Model::Instance

            # @!attribute [rw] result
            required :result,
                     Increase::Enum.new([:not_checked, :match, :no_match])
          end

          class CardholderAddress
            extend Increase::Model

            include Increase::Model::Instance

            # @!attribute [rw] actual_line1
            required :actual_line1, String

            # @!attribute [rw] actual_postal_code
            required :actual_postal_code, String

            # @!attribute [rw] provided_line1
            required :provided_line1, String

            # @!attribute [rw] provided_postal_code
            required :provided_postal_code, String

            # @!attribute [rw] result
            required :result,
                     Increase::Enum.new(
                       [
                         :not_checked,
                         :postal_code_match_address_not_checked,
                         :postal_code_match_address_no_match,
                         :postal_code_no_match_address_match,
                         :match,
                         :no_match
                       ]
                     )
          end

          extend Increase::Model

          include Increase::Model::Instance

          # @!attribute [rw] card_verification_code
          required :card_verification_code,
                   lambda {
                     Increase::Models::RealTimeDecision::Visa::CardVerificationCode::CardVerificationCode
                   }

          # @!attribute [rw] cardholder_address
          required :cardholder_address,
                   lambda {
                     Increase::Models::RealTimeDecision::Visa::CardVerificationCode::CardholderAddress
                   }
        end

        extend Increase::Model

        include Increase::Model::Instance

        # @!attribute [rw] account_id
        required :account_id, String

        # @!attribute [rw] card_id
        required :card_id, String

        # @!attribute [rw] decision
        required :decision, Increase::Enum.new([:approve, :decline])

        # @!attribute [rw] digital_wallet_token_id
        required :digital_wallet_token_id, String

        # @!attribute [rw] merchant_acceptor_id
        required :merchant_acceptor_id, String

        # @!attribute [rw] merchant_category_code
        required :merchant_category_code, String

        # @!attribute [rw] merchant_city
        required :merchant_city, String

        # @!attribute [rw] merchant_country
        required :merchant_country, String

        # @!attribute [rw] merchant_descriptor
        required :merchant_descriptor, String

        # @!attribute [rw] network_details
        required :network_details, -> { Increase::Models::RealTimeDecision::Visa::Visa }

        # @!attribute [rw] network_identifiers
        required :network_identifiers,
                 lambda {
                   Increase::Models::RealTimeDecision::Visa::NetworkIdentifiers
                 }

        # @!attribute [rw] network_risk_score
        required :network_risk_score, Integer

        # @!attribute [rw] physical_card_id
        required :physical_card_id, String

        # @!attribute [rw] presentment_amount
        required :presentment_amount, Integer

        # @!attribute [rw] presentment_currency
        required :presentment_currency, String

        # @!attribute [rw] processing_category
        required :processing_category,
                 Increase::Enum.new(
                   [
                     :account_funding,
                     :automatic_fuel_dispenser,
                     :bill_payment,
                     :purchase,
                     :quasi_cash,
                     :refund
                   ]
                 )

        # @!attribute [rw] request_details
        required :request_details,
                 lambda {
                   Increase::Models::RealTimeDecision::Visa::IncrementalAuthorization
                 }

        # @!attribute [rw] settlement_amount
        required :settlement_amount, Integer

        # @!attribute [rw] settlement_currency
        required :settlement_currency, String

        # @!attribute [rw] verification
        required :verification,
                 lambda {
                   Increase::Models::RealTimeDecision::Visa::CardVerificationCode
                 }
      end

      class DigitalWalletAuthentication
        extend Increase::Model

        include Increase::Model::Instance

        # @!attribute [rw] card_id
        required :card_id, String

        # @!attribute [rw] channel
        required :channel, Increase::Enum.new([:sms, :email])

        # @!attribute [rw] digital_wallet
        required :digital_wallet, Increase::Enum.new([:apple_pay, :google_pay, :unknown])

        # @!attribute [rw] email
        required :email, String

        # @!attribute [rw] one_time_passcode
        required :one_time_passcode, String

        # @!attribute [rw] phone
        required :phone, String

        # @!attribute [rw] result
        required :result, Increase::Enum.new([:success, :failure])
      end

      class DigitalWalletToken
        extend Increase::Model

        include Increase::Model::Instance

        # @!attribute [rw] card_id
        required :card_id, String

        # @!attribute [rw] card_profile_id
        required :card_profile_id, String

        # @!attribute [rw] decision
        required :decision, Increase::Enum.new([:approve, :decline])

        # @!attribute [rw] digital_wallet
        required :digital_wallet, Increase::Enum.new([:apple_pay, :google_pay, :unknown])
      end

      extend Increase::Model

      include Increase::Model::Instance

      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] card_authorization
      required :card_authorization, -> { Increase::Models::RealTimeDecision::Visa }

      # @!attribute [rw] category
      required :category,
               Increase::Enum.new(
                 [
                   :card_authorization_requested,
                   :digital_wallet_token_requested,
                   :digital_wallet_authentication_requested
                 ]
               )

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] digital_wallet_authentication
      required :digital_wallet_authentication,
               lambda {
                 Increase::Models::RealTimeDecision::DigitalWalletAuthentication
               }

      # @!attribute [rw] digital_wallet_token
      required :digital_wallet_token, -> { Increase::Models::RealTimeDecision::DigitalWalletToken }

      # @!attribute [rw] status
      required :status, Increase::Enum.new([:pending, :responded, :timed_out])

      # @!attribute [rw] timeout_at
      required :timeout_at, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:real_time_decision])
    end
  end
end
