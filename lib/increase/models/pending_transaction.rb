# frozen_string_literal: true

module Increase
  module Models
    class PendingTransaction < BaseModel
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
      #   @return [String]
      required :completed_at, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date on which the Pending Transaction occurred.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the Pending Transaction's currency. This will match the currency on the Pending Transaction's Account.
      #   @return [Symbol]
      required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

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
      #   @return [Symbol]
      required :route_type, Increase::Enum.new(:account_number, :card, :lockbox)

      # @!attribute [rw] source
      #   This is an object giving more details on the network-level event that caused the Pending Transaction. For example, for a card transaction this lists the merchant's industry and location.
      #   @return [Increase::Models::PendingTransaction::Source]
      required :source, -> { Increase::Models::PendingTransaction::Source }

      # @!attribute [rw] status
      #   Whether the Pending Transaction has been confirmed and has an associated Transaction.
      #   @return [Symbol]
      required :status, Increase::Enum.new(:pending, :complete)

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `pending_transaction`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:pending_transaction)

      class Source < BaseModel
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
        #   @return [Symbol]
        required :category,
                 Increase::Enum.new(
                   :account_transfer_instruction,
                   :ach_transfer_instruction,
                   :card_authorization,
                   :check_deposit_instruction,
                   :check_transfer_instruction,
                   :inbound_funds_hold,
                   :real_time_payments_transfer_instruction,
                   :wire_transfer_instruction,
                   :other
                 )

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

        class AccountTransferInstruction < BaseModel
          # @!attribute [rw] amount
          #   The pending amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the destination account currency.
          #   @return [Symbol]
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] transfer_id
          #   The identifier of the Account Transfer that led to this Pending Transaction.
          #   @return [String]
          required :transfer_id, String
        end

        class ACHTransferInstruction < BaseModel
          # @!attribute [rw] amount
          #   The pending amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] transfer_id
          #   The identifier of the ACH Transfer that led to this Pending Transaction.
          #   @return [String]
          required :transfer_id, String
        end

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
          #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::Verification]
          required :verification,
                   -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Verification }

          class NetworkDetails < BaseModel
            # @!attribute [rw] category
            #   The payment network used to process this card authorization.
            #   @return [Symbol]
            required :category, Increase::Enum.new(:visa)

            # @!attribute [rw] visa
            #   Fields specific to the `visa` network.
            #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa]
            required :visa,
                     -> { Increase::Models::PendingTransaction::Source::CardAuthorization::NetworkDetails::Visa }

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
            #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode]
            required :card_verification_code,
                     -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardVerificationCode }

            # @!attribute [rw] cardholder_address
            #   Cardholder address provided in the authorization request and the address on file we verified it against.
            #   @return [Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress]
            required :cardholder_address,
                     -> { Increase::Models::PendingTransaction::Source::CardAuthorization::Verification::CardholderAddress }

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

        class CheckDepositInstruction < BaseModel
          # @!attribute [rw] amount
          #   The pending amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
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
          #   @return [Symbol]
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] front_image_file_id
          #   The identifier of the File containing the image of the front of the check that was deposited.
          #   @return [String]
          required :front_image_file_id, String
        end

        class CheckTransferInstruction < BaseModel
          # @!attribute [rw] amount
          #   The pending amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's currency.
          #   @return [Symbol]
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

          # @!attribute [rw] transfer_id
          #   The identifier of the Check Transfer that led to this Pending Transaction.
          #   @return [String]
          required :transfer_id, String
        end

        class InboundFundsHold < BaseModel
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
          #   @return [String]
          required :automatically_releases_at, String

          # @!attribute [rw] created_at
          #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the hold was created.
          #   @return [String]
          required :created_at, String

          # @!attribute [rw] currency
          #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's currency.
          #   @return [Symbol]
          required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

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
          #   @return [String]
          required :released_at, String

          # @!attribute [rw] status
          #   The status of the hold.
          #   @return [Symbol]
          required :status, Increase::Enum.new(:held, :complete)

          # @!attribute [rw] type
          #   A constant representing the object's type. For this resource it will always be `inbound_funds_hold`.
          #   @return [Symbol]
          required :type, Increase::Enum.new(:inbound_funds_hold)
        end

        class RealTimePaymentsTransferInstruction < BaseModel
          # @!attribute [rw] amount
          #   The pending amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
          #   @return [Integer]
          required :amount, Integer

          # @!attribute [rw] transfer_id
          #   The identifier of the Real-Time Payments Transfer that led to this Pending Transaction.
          #   @return [String]
          required :transfer_id, String
        end

        class WireTransferInstruction < BaseModel
          # @!attribute [rw] account_number
          #   The account number for the destination account.
          #   @return [String]
          required :account_number, String

          # @!attribute [rw] amount
          #   The pending amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
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
        end
      end
    end
  end
end
