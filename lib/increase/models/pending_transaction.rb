# frozen_string_literal: true

module Increase
  module Models
    class PendingTransaction < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] account_id
      required :account_id, String

      # @!attribute [rw] amount
      required :amount, Integer

      # @!attribute [rw] completed_at
      required :completed_at, String

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] currency
      required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

      # @!attribute [rw] description
      required :description, String

      # @!attribute [rw] route_id
      required :route_id, String

      # @!attribute [rw] route_type
      required :route_type, Increase::Enum.new([:account_number, :card])

      # @!attribute [rw] source
      required :source, -> { Increase::Models::PendingTransaction::AccountTransferInstruction }

      # @!attribute [rw] status
      required :status, Increase::Enum.new([:pending, :complete])

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:pending_transaction])

      class AccountTransferInstruction < BaseModel
        # @!attribute [rw] account_transfer_instruction
        required :account_transfer_instruction,
                 lambda {
                   Increase::Models::PendingTransaction::AccountTransferInstruction::AccountTransferInstruction
                 }

        # @!attribute [rw] ach_transfer_instruction
        required :ach_transfer_instruction,
                 lambda {
                   Increase::Models::PendingTransaction::AccountTransferInstruction::ACHTransferInstruction
                 }

        # @!attribute [rw] card_authorization
        required :card_authorization,
                 lambda {
                   Increase::Models::PendingTransaction::AccountTransferInstruction::Visa
                 }

        # @!attribute [rw] category
        required :category,
                 Increase::Enum.new(
                   [
                     :account_transfer_instruction,
                     :ach_transfer_instruction,
                     :card_authorization,
                     :check_deposit_instruction,
                     :check_transfer_instruction,
                     :inbound_funds_hold,
                     :real_time_payments_transfer_instruction,
                     :wire_transfer_instruction,
                     :other
                   ]
                 )

        # @!attribute [rw] check_deposit_instruction
        required :check_deposit_instruction,
                 lambda {
                   Increase::Models::PendingTransaction::AccountTransferInstruction::CheckDepositInstruction
                 }

        # @!attribute [rw] check_transfer_instruction
        required :check_transfer_instruction,
                 lambda {
                   Increase::Models::PendingTransaction::AccountTransferInstruction::CheckTransferInstruction
                 }

        # @!attribute [rw] inbound_funds_hold
        required :inbound_funds_hold,
                 lambda {
                   Increase::Models::PendingTransaction::AccountTransferInstruction::InboundFundsHold
                 }

        # @!attribute [rw] real_time_payments_transfer_instruction
        required :real_time_payments_transfer_instruction,
                 lambda {
                   Increase::Models::PendingTransaction::AccountTransferInstruction::RealTimePaymentsTransferInstruction
                 }

        # @!attribute [rw] wire_transfer_instruction
        required :wire_transfer_instruction,
                 lambda {
                   Increase::Models::PendingTransaction::AccountTransferInstruction::WireTransferInstruction
                 }

        class AccountTransferInstruction < BaseModel
          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

          # @!attribute [rw] transfer_id
          required :transfer_id, String
        end

        class ACHTransferInstruction < BaseModel
          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] transfer_id
          required :transfer_id, String
        end

        class Visa < BaseModel
          # @!attribute [rw] id
          required :id, String

          # @!attribute [rw] actioner
          required :actioner, Increase::Enum.new([:user, :increase, :network])

          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] card_payment_id
          required :card_payment_id, String

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

          # @!attribute [rw] digital_wallet_token_id
          required :digital_wallet_token_id, String

          # @!attribute [rw] direction
          required :direction, Increase::Enum.new([:settlement, :refund])

          # @!attribute [rw] expires_at
          required :expires_at, String

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
          required :network_details,
                   lambda {
                     Increase::Models::PendingTransaction::AccountTransferInstruction::Visa::Visa
                   }

          # @!attribute [rw] network_identifiers
          required :network_identifiers,
                   lambda {
                     Increase::Models::PendingTransaction::AccountTransferInstruction::Visa::NetworkIdentifiers
                   }

          # @!attribute [rw] network_risk_score
          required :network_risk_score, Integer

          # @!attribute [rw] pending_transaction_id
          required :pending_transaction_id, String

          # @!attribute [rw] physical_card_id
          required :physical_card_id, String

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

          # @!attribute [rw] real_time_decision_id
          required :real_time_decision_id, String

          # @!attribute [rw] type
          required :type, Increase::Enum.new([:card_authorization])

          # @!attribute [rw] verification
          required :verification,
                   lambda {
                     Increase::Models::PendingTransaction::AccountTransferInstruction::Visa::CardVerificationCode
                   }

          class Visa < BaseModel
            # @!attribute [rw] category
            required :category, Increase::Enum.new([:visa])

            # @!attribute [rw] visa
            required :visa,
                     lambda {
                       Increase::Models::PendingTransaction::AccountTransferInstruction::Visa::Visa::Visa
                     }

            class Visa < BaseModel
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
          end

          class NetworkIdentifiers < BaseModel
            # @!attribute [rw] retrieval_reference_number
            required :retrieval_reference_number, String

            # @!attribute [rw] trace_number
            required :trace_number, String

            # @!attribute [rw] transaction_id
            required :transaction_id, String
          end

          class CardVerificationCode < BaseModel
            # @!attribute [rw] card_verification_code
            required :card_verification_code,
                     lambda {
                       Increase::Models::PendingTransaction::AccountTransferInstruction::Visa::CardVerificationCode::CardVerificationCode
                     }

            # @!attribute [rw] cardholder_address
            required :cardholder_address,
                     lambda {
                       Increase::Models::PendingTransaction::AccountTransferInstruction::Visa::CardVerificationCode::CardholderAddress
                     }

            class CardVerificationCode < BaseModel
              # @!attribute [rw] result
              required :result,
                       Increase::Enum.new([:not_checked, :match, :no_match])
            end

            class CardholderAddress < BaseModel
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
          end
        end

        class CheckDepositInstruction < BaseModel
          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] back_image_file_id
          required :back_image_file_id, String

          # @!attribute [rw] check_deposit_id
          required :check_deposit_id, String

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

          # @!attribute [rw] front_image_file_id
          required :front_image_file_id, String
        end

        class CheckTransferInstruction < BaseModel
          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

          # @!attribute [rw] transfer_id
          required :transfer_id, String
        end

        class InboundFundsHold < BaseModel
          # @!attribute [rw] id
          required :id, String

          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] automatically_releases_at
          required :automatically_releases_at, String

          # @!attribute [rw] created_at
          required :created_at, String

          # @!attribute [rw] currency
          required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

          # @!attribute [rw] held_transaction_id
          required :held_transaction_id, String

          # @!attribute [rw] pending_transaction_id
          required :pending_transaction_id, String

          # @!attribute [rw] released_at
          required :released_at, String

          # @!attribute [rw] status
          required :status, Increase::Enum.new([:held, :complete])

          # @!attribute [rw] type
          required :type, Increase::Enum.new([:inbound_funds_hold])
        end

        class RealTimePaymentsTransferInstruction < BaseModel
          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] transfer_id
          required :transfer_id, String
        end

        class WireTransferInstruction < BaseModel
          # @!attribute [rw] account_number
          required :account_number, String

          # @!attribute [rw] amount
          required :amount, Integer

          # @!attribute [rw] message_to_recipient
          required :message_to_recipient, String

          # @!attribute [rw] routing_number
          required :routing_number, String

          # @!attribute [rw] transfer_id
          required :transfer_id, String
        end
      end
    end
  end
end
