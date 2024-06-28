# frozen_string_literal: true

module Increase
  module Models
    class CheckDeposit < BaseModel
      # @!attribute [rw] id
      #   The deposit's identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The Account the check was deposited into.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] amount
      #   The deposited amount in the minor unit of the destination account currency. For dollars, for example, this is cents.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] back_image_file_id
      #   The ID for the File containing the image of the back of the check.
      #   @return [String]
      required :back_image_file_id, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was created.
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] deposit_acceptance
      #   If your deposit is successfully parsed and accepted by Increase, this will contain details of the parsed check.
      #   @return [Increase::Models::CheckDeposit::DepositAcceptance]
      required :deposit_acceptance, -> { Increase::Models::CheckDeposit::DepositAcceptance }

      # @!attribute [rw] deposit_rejection
      #   If your deposit is rejected by Increase, this will contain details as to why it was rejected.
      #   @return [Increase::Models::CheckDeposit::DepositRejection]
      required :deposit_rejection, -> { Increase::Models::CheckDeposit::DepositRejection }

      # @!attribute [rw] deposit_return
      #   If your deposit is returned, this will contain details as to why it was returned.
      #   @return [Increase::Models::CheckDeposit::DepositReturn]
      required :deposit_return, -> { Increase::Models::CheckDeposit::DepositReturn }

      # @!attribute [rw] deposit_submission
      #   After the check is parsed, it is submitted to the Check21 network for processing. This will contain details of the submission.
      #   @return [Increase::Models::CheckDeposit::DepositSubmission]
      required :deposit_submission, -> { Increase::Models::CheckDeposit::DepositSubmission }

      # @!attribute [rw] description
      #   The description of the Check Deposit, for display purposes only.
      #   @return [String]
      required :description, String

      # @!attribute [rw] front_image_file_id
      #   The ID for the File containing the image of the front of the check.
      #   @return [String]
      required :front_image_file_id, String

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] inbound_mail_item_id
      #   If the Check Deposit was the result of an Inbound Mail Item, this will contain the identifier of the Inbound Mail Item.
      #   @return [String]
      required :inbound_mail_item_id, String

      # @!attribute [rw] lockbox_id
      #   If the Check Deposit was the result of an Inbound Mail Item, this will contain the identifier of the Lockbox that received it.
      #   @return [String]
      required :lockbox_id, String

      # @!attribute [rw] status
      #   The status of the Check Deposit.
      #   @return [Symbol]
      required :status, Increase::Enum.new(:pending, :submitted, :rejected, :returned)

      # @!attribute [rw] transaction_id
      #   The ID for the Transaction created by the deposit.
      #   @return [String]
      required :transaction_id, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `check_deposit`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:check_deposit)

      class DepositAcceptance < BaseModel
        # @!attribute [rw] account_number
        #   The account number printed on the check.
        #   @return [String]
        required :account_number, String

        # @!attribute [rw] amount
        #   The amount to be deposited in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] auxiliary_on_us
        #   An additional line of metadata printed on the check. This typically includes the check number for business checks.
        #   @return [String]
        required :auxiliary_on_us, String

        # @!attribute [rw] check_deposit_id
        #   The ID of the Check Deposit that was accepted.
        #   @return [String]
        required :check_deposit_id, String

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's currency.
        #   @return [Symbol]
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] routing_number
        #   The routing number printed on the check.
        #   @return [String]
        required :routing_number, String

        # @!attribute [rw] serial_number
        #   The check serial number, if present, for consumer checks. For business checks, the serial number is usually in the `auxiliary_on_us` field.
        #   @return [String]
        required :serial_number, String
      end

      class DepositRejection < BaseModel
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
        #   @return [Symbol]
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] reason
        #   Why the check deposit was rejected.
        #   @return [Symbol]
        required :reason,
                 Increase::Enum.new(
                   :incomplete_image,
                   :duplicate,
                   :poor_image_quality,
                   :incorrect_amount,
                   :incorrect_recipient,
                   :not_eligible_for_mobile_deposit,
                   :missing_required_data_elements,
                   :suspected_fraud,
                   :deposit_window_expired,
                   :unknown
                 )

        # @!attribute [rw] rejected_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the check deposit was rejected.
        #   @return [String]
        required :rejected_at, String
      end

      class DepositReturn < BaseModel
        # @!attribute [rw] amount
        #   The amount in the minor unit of the transaction's currency. For dollars, for example, this is cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] check_deposit_id
        #   The identifier of the Check Deposit that was returned.
        #   @return [String]
        required :check_deposit_id, String

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's currency.
        #   @return [Symbol]
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] return_reason
        #   Why this check was returned by the bank holding the account it was drawn against.
        #   @return [Symbol]
        required :return_reason,
                 Increase::Enum.new(
                   :ach_conversion_not_supported,
                   :closed_account,
                   :duplicate_submission,
                   :insufficient_funds,
                   :no_account,
                   :not_authorized,
                   :stale_dated,
                   :stop_payment,
                   :unknown_reason,
                   :unmatched_details,
                   :unreadable_image,
                   :endorsement_irregular,
                   :altered_or_fictitious_item,
                   :frozen_or_blocked_account,
                   :post_dated,
                   :endorsement_missing,
                   :signature_missing,
                   :stop_payment_suspect,
                   :unusable_image,
                   :image_fails_security_check,
                   :cannot_determine_amount,
                   :signature_irregular,
                   :non_cash_item,
                   :unable_to_process,
                   :item_exceeds_dollar_limit,
                   :branch_or_account_sold
                 )

        # @!attribute [rw] returned_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the check deposit was returned.
        #   @return [String]
        required :returned_at, String

        # @!attribute [rw] transaction_id
        #   The identifier of the transaction that reversed the original check deposit transaction.
        #   @return [String]
        required :transaction_id, String
      end

      class DepositSubmission < BaseModel
        # @!attribute [rw] back_file_id
        #   The ID for the File containing the check back image that was submitted to the Check21 network.
        #   @return [String]
        required :back_file_id, String

        # @!attribute [rw] front_file_id
        #   The ID for the File containing the check front image that was submitted to the Check21 network.
        #   @return [String]
        required :front_file_id, String

        # @!attribute [rw] submitted_at
        #   When the check deposit was submitted to the Check21 network for processing. During business days, this happens within a few hours of the check being accepted by Increase.
        #   @return [String]
        required :submitted_at, String
      end
    end
  end
end
