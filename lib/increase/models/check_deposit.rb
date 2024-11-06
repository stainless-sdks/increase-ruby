# frozen_string_literal: true

module Increase
  module Models
    class CheckDeposit < Increase::BaseModel
      # @!attribute [rw] id
      #   The deposit's identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The Account the check was deposited into.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] amount
      #   The deposited amount in USD cents.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] back_image_file_id
      #   The ID for the File containing the image of the back of the check.
      #   @return [String]
      required :back_image_file_id, String

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the transfer was created.
      #   @return [Time]
      required :created_at, Time

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

      # @!attribute [rw] inbound_funds_hold
      #   Increase will sometimes hold the funds for Check Deposits. If funds are held, this sub-object will contain details of the hold.
      #   @return [Increase::Models::CheckDeposit::InboundFundsHold]
      required :inbound_funds_hold, -> { Increase::Models::CheckDeposit::InboundFundsHold }

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
      #   @return [Symbol, Increase::Models::CheckDeposit::Status]
      required :status, enum: -> { Increase::Models::CheckDeposit::Status }

      # @!attribute [rw] transaction_id
      #   The ID for the Transaction created by the deposit.
      #   @return [String]
      required :transaction_id, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `check_deposit`.
      #   @return [Symbol, Increase::Models::CheckDeposit::Type]
      required :type, enum: -> { Increase::Models::CheckDeposit::Type }

      class DepositAcceptance < Increase::BaseModel
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
        #   @return [Symbol, Increase::Models::CheckDeposit::DepositAcceptance::Currency]
        required :currency, enum: -> { Increase::Models::CheckDeposit::DepositAcceptance::Currency }

        # @!attribute [rw] routing_number
        #   The routing number printed on the check.
        #   @return [String]
        required :routing_number, String

        # @!attribute [rw] serial_number
        #   The check serial number, if present, for consumer checks. For business checks, the serial number is usually in the `auxiliary_on_us` field.
        #   @return [String]
        required :serial_number, String

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
        #   # Create a new instance of DepositAcceptance from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :account_number The account number printed on the check.
        #   #   @option data [Integer] :amount The amount to be deposited in the minor unit of the transaction's currency. For
        #   #     dollars, for example, this is cents.
        #   #   @option data [String] :auxiliary_on_us An additional line of metadata printed on the check. This typically includes the
        #   #     check number for business checks.
        #   #   @option data [String] :check_deposit_id The ID of the Check Deposit that was accepted.
        #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
        #   #     transaction's currency.
        #   #   @option data [String] :routing_number The routing number printed on the check.
        #   #   @option data [String] :serial_number The check serial number, if present, for consumer checks. For business checks,
        #   #     the serial number is usually in the `auxiliary_on_us` field.
        #   def initialize(data = {}) = super
      end

      class DepositRejection < Increase::BaseModel
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
        #   @return [Symbol, Increase::Models::CheckDeposit::DepositRejection::Currency]
        required :currency, enum: -> { Increase::Models::CheckDeposit::DepositRejection::Currency }

        # @!attribute [rw] declined_transaction_id
        #   The identifier of the associated declined transaction.
        #   @return [String]
        required :declined_transaction_id, String

        # @!attribute [rw] reason
        #   Why the check deposit was rejected.
        #   @return [Symbol, Increase::Models::CheckDeposit::DepositRejection::Reason]
        required :reason, enum: -> { Increase::Models::CheckDeposit::DepositRejection::Reason }

        # @!attribute [rw] rejected_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the check deposit was rejected.
        #   @return [Time]
        required :rejected_at, Time

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

          # The check was rejected at the user's request.
          REQUESTED_BY_USER = :requested_by_user

          # The check was rejected for an unknown reason.
          UNKNOWN = :unknown
        end

        # @!parse
        #   # Create a new instance of DepositRejection from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Integer] :amount The rejected amount in the minor unit of check's currency. For dollars, for
        #   #     example, this is cents.
        #   #   @option data [String] :check_deposit_id The identifier of the Check Deposit that was rejected.
        #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's
        #   #     currency.
        #   #   @option data [String] :declined_transaction_id The identifier of the associated declined transaction.
        #   #   @option data [String] :reason Why the check deposit was rejected.
        #   #   @option data [String] :rejected_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   #     the check deposit was rejected.
        #   def initialize(data = {}) = super
      end

      class DepositReturn < Increase::BaseModel
        # @!attribute [rw] amount
        #   The returned amount in USD cents.
        #   @return [Integer]
        required :amount, Integer

        # @!attribute [rw] check_deposit_id
        #   The identifier of the Check Deposit that was returned.
        #   @return [String]
        required :check_deposit_id, String

        # @!attribute [rw] currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transaction's currency.
        #   @return [Symbol, Increase::Models::CheckDeposit::DepositReturn::Currency]
        required :currency, enum: -> { Increase::Models::CheckDeposit::DepositReturn::Currency }

        # @!attribute [rw] return_reason
        #   Why this check was returned by the bank holding the account it was drawn against.
        #   @return [Symbol, Increase::Models::CheckDeposit::DepositReturn::ReturnReason]
        required :return_reason, enum: -> { Increase::Models::CheckDeposit::DepositReturn::ReturnReason }

        # @!attribute [rw] returned_at
        #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the check deposit was returned.
        #   @return [Time]
        required :returned_at, Time

        # @!attribute [rw] transaction_id
        #   The identifier of the transaction that reversed the original check deposit transaction.
        #   @return [String]
        required :transaction_id, String

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

        # Why this check was returned by the bank holding the account it was drawn against.
        class ReturnReason < Increase::Enum
          # The check doesn't allow ACH conversion.
          ACH_CONVERSION_NOT_SUPPORTED = :ach_conversion_not_supported

          # The account is closed.
          CLOSED_ACCOUNT = :closed_account

          # The check has already been deposited.
          DUPLICATE_SUBMISSION = :duplicate_submission

          # Insufficient funds
          INSUFFICIENT_FUNDS = :insufficient_funds

          # No account was found matching the check details.
          NO_ACCOUNT = :no_account

          # The check was not authorized.
          NOT_AUTHORIZED = :not_authorized

          # The check is too old.
          STALE_DATED = :stale_dated

          # The payment has been stopped by the account holder.
          STOP_PAYMENT = :stop_payment

          # The reason for the return is unknown.
          UNKNOWN_REASON = :unknown_reason

          # The image doesn't match the details submitted.
          UNMATCHED_DETAILS = :unmatched_details

          # The image could not be read.
          UNREADABLE_IMAGE = :unreadable_image

          # The check endorsement was irregular.
          ENDORSEMENT_IRREGULAR = :endorsement_irregular

          # The check present was either altered or fake.
          ALTERED_OR_FICTITIOUS_ITEM = :altered_or_fictitious_item

          # The account this check is drawn on is frozen.
          FROZEN_OR_BLOCKED_ACCOUNT = :frozen_or_blocked_account

          # The check is post dated.
          POST_DATED = :post_dated

          # The endorsement was missing.
          ENDORSEMENT_MISSING = :endorsement_missing

          # The check signature was missing.
          SIGNATURE_MISSING = :signature_missing

          # The bank suspects a stop payment will be placed.
          STOP_PAYMENT_SUSPECT = :stop_payment_suspect

          # The bank cannot read the image.
          UNUSABLE_IMAGE = :unusable_image

          # The check image fails the bank's security check.
          IMAGE_FAILS_SECURITY_CHECK = :image_fails_security_check

          # The bank cannot determine the amount.
          CANNOT_DETERMINE_AMOUNT = :cannot_determine_amount

          # The signature is inconsistent with prior signatures.
          SIGNATURE_IRREGULAR = :signature_irregular

          # The check is a non-cash item and cannot be drawn against the account.
          NON_CASH_ITEM = :non_cash_item

          # The bank is unable to process this check.
          UNABLE_TO_PROCESS = :unable_to_process

          # The check exceeds the bank or customer's limit.
          ITEM_EXCEEDS_DOLLAR_LIMIT = :item_exceeds_dollar_limit

          # The bank sold this account and no longer services this customer.
          BRANCH_OR_ACCOUNT_SOLD = :branch_or_account_sold
        end

        # @!parse
        #   # Create a new instance of DepositReturn from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Integer] :amount The returned amount in USD cents.
        #   #   @option data [String] :check_deposit_id The identifier of the Check Deposit that was returned.
        #   #   @option data [String] :currency The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
        #   #     transaction's currency.
        #   #   @option data [String] :return_reason Why this check was returned by the bank holding the account it was drawn
        #   #     against.
        #   #   @option data [String] :returned_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   #     the check deposit was returned.
        #   #   @option data [String] :transaction_id The identifier of the transaction that reversed the original check deposit
        #   #     transaction.
        #   def initialize(data = {}) = super
      end

      class DepositSubmission < Increase::BaseModel
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
        #   @return [Time]
        required :submitted_at, Time

        # @!parse
        #   # Create a new instance of DepositSubmission from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :back_file_id The ID for the File containing the check back image that was submitted to the
        #   #     Check21 network.
        #   #   @option data [String] :front_file_id The ID for the File containing the check front image that was submitted to the
        #   #     Check21 network.
        #   #   @option data [String] :submitted_at When the check deposit was submitted to the Check21 network for processing.
        #   #     During business days, this happens within a few hours of the check being
        #   #     accepted by Increase.
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
        #   @return [Symbol, Increase::Models::CheckDeposit::InboundFundsHold::Currency]
        required :currency, enum: -> { Increase::Models::CheckDeposit::InboundFundsHold::Currency }

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
        #   @return [Symbol, Increase::Models::CheckDeposit::InboundFundsHold::Status]
        required :status, enum: -> { Increase::Models::CheckDeposit::InboundFundsHold::Status }

        # @!attribute [rw] type
        #   A constant representing the object's type. For this resource it will always be `inbound_funds_hold`.
        #   @return [Symbol, Increase::Models::CheckDeposit::InboundFundsHold::Type]
        required :type, enum: -> { Increase::Models::CheckDeposit::InboundFundsHold::Type }

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

      # The status of the Check Deposit.
      class Status < Increase::Enum
        # The Check Deposit is pending review.
        PENDING = :pending

        # The Check Deposit has been deposited.
        SUBMITTED = :submitted

        # The Check Deposit has been rejected.
        REJECTED = :rejected

        # The Check Deposit has been returned.
        RETURNED = :returned
      end

      # A constant representing the object's type. For this resource it will always be `check_deposit`.
      class Type < Increase::Enum
        CHECK_DEPOSIT = :check_deposit
      end

      # @!parse
      #   # Create a new instance of CheckDeposit from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id The deposit's identifier.
      #   #   @option data [String] :account_id The Account the check was deposited into.
      #   #   @option data [Integer] :amount The deposited amount in USD cents.
      #   #   @option data [String] :back_image_file_id The ID for the File containing the image of the back of the check.
      #   #   @option data [String] :created_at The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   #     the transfer was created.
      #   #   @option data [Object] :deposit_acceptance If your deposit is successfully parsed and accepted by Increase, this will
      #   #     contain details of the parsed check.
      #   #   @option data [Object] :deposit_rejection If your deposit is rejected by Increase, this will contain details as to why it
      #   #     was rejected.
      #   #   @option data [Object] :deposit_return If your deposit is returned, this will contain details as to why it was
      #   #     returned.
      #   #   @option data [Object] :deposit_submission After the check is parsed, it is submitted to the Check21 network for
      #   #     processing. This will contain details of the submission.
      #   #   @option data [String] :description The description of the Check Deposit, for display purposes only.
      #   #   @option data [String] :front_image_file_id The ID for the File containing the image of the front of the check.
      #   #   @option data [String] :idempotency_key The idempotency key you chose for this object. This value is unique across
      #   #     Increase and is used to ensure that a request is only processed once. Learn more
      #   #     about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #   @option data [Object] :inbound_funds_hold Increase will sometimes hold the funds for Check Deposits. If funds are held,
      #   #     this sub-object will contain details of the hold.
      #   #   @option data [String] :inbound_mail_item_id If the Check Deposit was the result of an Inbound Mail Item, this will contain
      #   #     the identifier of the Inbound Mail Item.
      #   #   @option data [String] :lockbox_id If the Check Deposit was the result of an Inbound Mail Item, this will contain
      #   #     the identifier of the Lockbox that received it.
      #   #   @option data [String] :status The status of the Check Deposit.
      #   #   @option data [String] :transaction_id The ID for the Transaction created by the deposit.
      #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
      #   #     `check_deposit`.
      #   def initialize(data = {}) = super
    end
  end
end
