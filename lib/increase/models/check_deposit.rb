# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::CheckDeposits#create
    class CheckDeposit < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/check_deposit/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   #/components/schemas/check_deposit/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute amount
      #   #/components/schemas/check_deposit/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute back_image_file_id
      #   #/components/schemas/check_deposit/properties/back_image_file_id
      #
      #   @return [String, nil]
      required :back_image_file_id, String, nil?: true

      # @!attribute created_at
      #   #/components/schemas/check_deposit/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute deposit_acceptance
      #   #/components/schemas/check_deposit/properties/deposit_acceptance
      #
      #   @return [Increase::Models::CheckDeposit::DepositAcceptance, nil]
      required :deposit_acceptance, -> { Increase::Models::CheckDeposit::DepositAcceptance }, nil?: true

      # @!attribute deposit_rejection
      #   #/components/schemas/check_deposit/properties/deposit_rejection
      #
      #   @return [Increase::Models::CheckDeposit::DepositRejection, nil]
      required :deposit_rejection, -> { Increase::Models::CheckDeposit::DepositRejection }, nil?: true

      # @!attribute deposit_return
      #   #/components/schemas/check_deposit/properties/deposit_return
      #
      #   @return [Increase::Models::CheckDeposit::DepositReturn, nil]
      required :deposit_return, -> { Increase::Models::CheckDeposit::DepositReturn }, nil?: true

      # @!attribute deposit_submission
      #   #/components/schemas/check_deposit/properties/deposit_submission
      #
      #   @return [Increase::Models::CheckDeposit::DepositSubmission, nil]
      required :deposit_submission, -> { Increase::Models::CheckDeposit::DepositSubmission }, nil?: true

      # @!attribute description
      #   #/components/schemas/check_deposit/properties/description
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute front_image_file_id
      #   #/components/schemas/check_deposit/properties/front_image_file_id
      #
      #   @return [String]
      required :front_image_file_id, String

      # @!attribute idempotency_key
      #   #/components/schemas/check_deposit/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute inbound_funds_hold
      #   #/components/schemas/check_deposit/properties/inbound_funds_hold
      #
      #   @return [Increase::Models::CheckDeposit::InboundFundsHold, nil]
      required :inbound_funds_hold, -> { Increase::Models::CheckDeposit::InboundFundsHold }, nil?: true

      # @!attribute inbound_mail_item_id
      #   #/components/schemas/check_deposit/properties/inbound_mail_item_id
      #
      #   @return [String, nil]
      required :inbound_mail_item_id, String, nil?: true

      # @!attribute lockbox_id
      #   #/components/schemas/check_deposit/properties/lockbox_id
      #
      #   @return [String, nil]
      required :lockbox_id, String, nil?: true

      # @!attribute status
      #   #/components/schemas/check_deposit/properties/status
      #
      #   @return [Symbol, Increase::Models::CheckDeposit::Status]
      required :status, enum: -> { Increase::Models::CheckDeposit::Status }

      # @!attribute transaction_id
      #   #/components/schemas/check_deposit/properties/transaction_id
      #
      #   @return [String, nil]
      required :transaction_id, String, nil?: true

      # @!attribute type
      #   #/components/schemas/check_deposit/properties/type
      #
      #   @return [Symbol, Increase::Models::CheckDeposit::Type]
      required :type, enum: -> { Increase::Models::CheckDeposit::Type }

      # @!parse
      #   # #/components/schemas/check_deposit
      #   #
      #   # @param id [String]
      #   # @param account_id [String]
      #   # @param amount [Integer]
      #   # @param back_image_file_id [String, nil]
      #   # @param created_at [Time]
      #   # @param deposit_acceptance [Increase::Models::CheckDeposit::DepositAcceptance, nil]
      #   # @param deposit_rejection [Increase::Models::CheckDeposit::DepositRejection, nil]
      #   # @param deposit_return [Increase::Models::CheckDeposit::DepositReturn, nil]
      #   # @param deposit_submission [Increase::Models::CheckDeposit::DepositSubmission, nil]
      #   # @param description [String, nil]
      #   # @param front_image_file_id [String]
      #   # @param idempotency_key [String, nil]
      #   # @param inbound_funds_hold [Increase::Models::CheckDeposit::InboundFundsHold, nil]
      #   # @param inbound_mail_item_id [String, nil]
      #   # @param lockbox_id [String, nil]
      #   # @param status [Symbol, Increase::Models::CheckDeposit::Status]
      #   # @param transaction_id [String, nil]
      #   # @param type [Symbol, Increase::Models::CheckDeposit::Type]
      #   #
      #   def initialize(
      #     id:,
      #     account_id:,
      #     amount:,
      #     back_image_file_id:,
      #     created_at:,
      #     deposit_acceptance:,
      #     deposit_rejection:,
      #     deposit_return:,
      #     deposit_submission:,
      #     description:,
      #     front_image_file_id:,
      #     idempotency_key:,
      #     inbound_funds_hold:,
      #     inbound_mail_item_id:,
      #     lockbox_id:,
      #     status:,
      #     transaction_id:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # @see Increase::Models::CheckDeposit#deposit_acceptance
      class DepositAcceptance < Increase::Internal::Type::BaseModel
        # @!attribute account_number
        #   #/components/schemas/check_deposit/properties/deposit_acceptance/anyOf/0/properties/account_number
        #
        #   @return [String]
        required :account_number, String

        # @!attribute amount
        #   #/components/schemas/check_deposit/properties/deposit_acceptance/anyOf/0/properties/amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute auxiliary_on_us
        #   #/components/schemas/check_deposit/properties/deposit_acceptance/anyOf/0/properties/auxiliary_on_us
        #
        #   @return [String, nil]
        required :auxiliary_on_us, String, nil?: true

        # @!attribute check_deposit_id
        #   #/components/schemas/check_deposit/properties/deposit_acceptance/anyOf/0/properties/check_deposit_id
        #
        #   @return [String]
        required :check_deposit_id, String

        # @!attribute currency
        #   #/components/schemas/check_deposit/properties/deposit_acceptance/anyOf/0/properties/currency
        #
        #   @return [Symbol, Increase::Models::CheckDeposit::DepositAcceptance::Currency]
        required :currency, enum: -> { Increase::Models::CheckDeposit::DepositAcceptance::Currency }

        # @!attribute routing_number
        #   #/components/schemas/check_deposit/properties/deposit_acceptance/anyOf/0/properties/routing_number
        #
        #   @return [String]
        required :routing_number, String

        # @!attribute serial_number
        #   #/components/schemas/check_deposit/properties/deposit_acceptance/anyOf/0/properties/serial_number
        #
        #   @return [String, nil]
        required :serial_number, String, nil?: true

        # @!parse
        #   # #/components/schemas/check_deposit/properties/deposit_acceptance
        #   #
        #   # @param account_number [String]
        #   # @param amount [Integer]
        #   # @param auxiliary_on_us [String, nil]
        #   # @param check_deposit_id [String]
        #   # @param currency [Symbol, Increase::Models::CheckDeposit::DepositAcceptance::Currency]
        #   # @param routing_number [String]
        #   # @param serial_number [String, nil]
        #   #
        #   def initialize(
        #     account_number:,
        #     amount:,
        #     auxiliary_on_us:,
        #     check_deposit_id:,
        #     currency:,
        #     routing_number:,
        #     serial_number:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/check_deposit/properties/deposit_acceptance/anyOf/0/properties/currency
        #
        # @see Increase::Models::CheckDeposit::DepositAcceptance#currency
        module Currency
          extend Increase::Internal::Type::Enum

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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # @see Increase::Models::CheckDeposit#deposit_rejection
      class DepositRejection < Increase::Internal::Type::BaseModel
        # @!attribute amount
        #   #/components/schemas/check_deposit/properties/deposit_rejection/anyOf/0/properties/amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute check_deposit_id
        #   #/components/schemas/check_deposit/properties/deposit_rejection/anyOf/0/properties/check_deposit_id
        #
        #   @return [String]
        required :check_deposit_id, String

        # @!attribute currency
        #   #/components/schemas/check_deposit/properties/deposit_rejection/anyOf/0/properties/currency
        #
        #   @return [Symbol, Increase::Models::CheckDeposit::DepositRejection::Currency]
        required :currency, enum: -> { Increase::Models::CheckDeposit::DepositRejection::Currency }

        # @!attribute declined_transaction_id
        #   #/components/schemas/check_deposit/properties/deposit_rejection/anyOf/0/properties/declined_transaction_id
        #
        #   @return [String]
        required :declined_transaction_id, String

        # @!attribute reason
        #   #/components/schemas/check_deposit/properties/deposit_rejection/anyOf/0/properties/reason
        #
        #   @return [Symbol, Increase::Models::CheckDeposit::DepositRejection::Reason]
        required :reason, enum: -> { Increase::Models::CheckDeposit::DepositRejection::Reason }

        # @!attribute rejected_at
        #   #/components/schemas/check_deposit/properties/deposit_rejection/anyOf/0/properties/rejected_at
        #
        #   @return [Time]
        required :rejected_at, Time

        # @!parse
        #   # #/components/schemas/check_deposit/properties/deposit_rejection
        #   #
        #   # @param amount [Integer]
        #   # @param check_deposit_id [String]
        #   # @param currency [Symbol, Increase::Models::CheckDeposit::DepositRejection::Currency]
        #   # @param declined_transaction_id [String]
        #   # @param reason [Symbol, Increase::Models::CheckDeposit::DepositRejection::Reason]
        #   # @param rejected_at [Time]
        #   #
        #   def initialize(amount:, check_deposit_id:, currency:, declined_transaction_id:, reason:, rejected_at:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/check_deposit/properties/deposit_rejection/anyOf/0/properties/currency
        #
        # @see Increase::Models::CheckDeposit::DepositRejection#currency
        module Currency
          extend Increase::Internal::Type::Enum

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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # #/components/schemas/check_deposit/properties/deposit_rejection/anyOf/0/properties/reason
        #
        # @see Increase::Models::CheckDeposit::DepositRejection#reason
        module Reason
          extend Increase::Internal::Type::Enum

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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # @see Increase::Models::CheckDeposit#deposit_return
      class DepositReturn < Increase::Internal::Type::BaseModel
        # @!attribute amount
        #   #/components/schemas/check_deposit/properties/deposit_return/anyOf/0/properties/amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute check_deposit_id
        #   #/components/schemas/check_deposit/properties/deposit_return/anyOf/0/properties/check_deposit_id
        #
        #   @return [String]
        required :check_deposit_id, String

        # @!attribute currency
        #   #/components/schemas/check_deposit/properties/deposit_return/anyOf/0/properties/currency
        #
        #   @return [Symbol, Increase::Models::CheckDeposit::DepositReturn::Currency]
        required :currency, enum: -> { Increase::Models::CheckDeposit::DepositReturn::Currency }

        # @!attribute return_reason
        #   #/components/schemas/check_deposit/properties/deposit_return/anyOf/0/properties/return_reason
        #
        #   @return [Symbol, Increase::Models::CheckDeposit::DepositReturn::ReturnReason]
        required :return_reason, enum: -> { Increase::Models::CheckDeposit::DepositReturn::ReturnReason }

        # @!attribute returned_at
        #   #/components/schemas/check_deposit/properties/deposit_return/anyOf/0/properties/returned_at
        #
        #   @return [Time]
        required :returned_at, Time

        # @!attribute transaction_id
        #   #/components/schemas/check_deposit/properties/deposit_return/anyOf/0/properties/transaction_id
        #
        #   @return [String]
        required :transaction_id, String

        # @!parse
        #   # #/components/schemas/check_deposit/properties/deposit_return
        #   #
        #   # @param amount [Integer]
        #   # @param check_deposit_id [String]
        #   # @param currency [Symbol, Increase::Models::CheckDeposit::DepositReturn::Currency]
        #   # @param return_reason [Symbol, Increase::Models::CheckDeposit::DepositReturn::ReturnReason]
        #   # @param returned_at [Time]
        #   # @param transaction_id [String]
        #   #
        #   def initialize(amount:, check_deposit_id:, currency:, return_reason:, returned_at:, transaction_id:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/check_deposit/properties/deposit_return/anyOf/0/properties/currency
        #
        # @see Increase::Models::CheckDeposit::DepositReturn#currency
        module Currency
          extend Increase::Internal::Type::Enum

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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # #/components/schemas/check_deposit/properties/deposit_return/anyOf/0/properties/return_reason
        #
        # @see Increase::Models::CheckDeposit::DepositReturn#return_reason
        module ReturnReason
          extend Increase::Internal::Type::Enum

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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # @see Increase::Models::CheckDeposit#deposit_submission
      class DepositSubmission < Increase::Internal::Type::BaseModel
        # @!attribute back_file_id
        #   #/components/schemas/check_deposit/properties/deposit_submission/anyOf/0/properties/back_file_id
        #
        #   @return [String]
        required :back_file_id, String

        # @!attribute front_file_id
        #   #/components/schemas/check_deposit/properties/deposit_submission/anyOf/0/properties/front_file_id
        #
        #   @return [String]
        required :front_file_id, String

        # @!attribute submitted_at
        #   #/components/schemas/check_deposit/properties/deposit_submission/anyOf/0/properties/submitted_at
        #
        #   @return [Time]
        required :submitted_at, Time

        # @!parse
        #   # #/components/schemas/check_deposit/properties/deposit_submission
        #   #
        #   # @param back_file_id [String]
        #   # @param front_file_id [String]
        #   # @param submitted_at [Time]
        #   #
        #   def initialize(back_file_id:, front_file_id:, submitted_at:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # @see Increase::Models::CheckDeposit#inbound_funds_hold
      class InboundFundsHold < Increase::Internal::Type::BaseModel
        # @!attribute id
        #   #/components/schemas/inbound_funds_hold/properties/id
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   #/components/schemas/inbound_funds_hold/properties/amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute automatically_releases_at
        #   #/components/schemas/inbound_funds_hold/properties/automatically_releases_at
        #
        #   @return [Time]
        required :automatically_releases_at, Time

        # @!attribute created_at
        #   #/components/schemas/inbound_funds_hold/properties/created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute currency
        #   #/components/schemas/inbound_funds_hold/properties/currency
        #
        #   @return [Symbol, Increase::Models::CheckDeposit::InboundFundsHold::Currency]
        required :currency, enum: -> { Increase::Models::CheckDeposit::InboundFundsHold::Currency }

        # @!attribute held_transaction_id
        #   #/components/schemas/inbound_funds_hold/properties/held_transaction_id
        #
        #   @return [String, nil]
        required :held_transaction_id, String, nil?: true

        # @!attribute pending_transaction_id
        #   #/components/schemas/inbound_funds_hold/properties/pending_transaction_id
        #
        #   @return [String, nil]
        required :pending_transaction_id, String, nil?: true

        # @!attribute released_at
        #   #/components/schemas/inbound_funds_hold/properties/released_at
        #
        #   @return [Time, nil]
        required :released_at, Time, nil?: true

        # @!attribute status
        #   #/components/schemas/inbound_funds_hold/properties/status
        #
        #   @return [Symbol, Increase::Models::CheckDeposit::InboundFundsHold::Status]
        required :status, enum: -> { Increase::Models::CheckDeposit::InboundFundsHold::Status }

        # @!attribute type
        #   #/components/schemas/inbound_funds_hold/properties/type
        #
        #   @return [Symbol, Increase::Models::CheckDeposit::InboundFundsHold::Type]
        required :type, enum: -> { Increase::Models::CheckDeposit::InboundFundsHold::Type }

        # @!parse
        #   # #/components/schemas/check_deposit/properties/inbound_funds_hold
        #   #
        #   # @param id [String]
        #   # @param amount [Integer]
        #   # @param automatically_releases_at [Time]
        #   # @param created_at [Time]
        #   # @param currency [Symbol, Increase::Models::CheckDeposit::InboundFundsHold::Currency]
        #   # @param held_transaction_id [String, nil]
        #   # @param pending_transaction_id [String, nil]
        #   # @param released_at [Time, nil]
        #   # @param status [Symbol, Increase::Models::CheckDeposit::InboundFundsHold::Status]
        #   # @param type [Symbol, Increase::Models::CheckDeposit::InboundFundsHold::Type]
        #   #
        #   def initialize(
        #     id:,
        #     amount:,
        #     automatically_releases_at:,
        #     created_at:,
        #     currency:,
        #     held_transaction_id:,
        #     pending_transaction_id:,
        #     released_at:,
        #     status:,
        #     type:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/inbound_funds_hold/properties/currency
        #
        # @see Increase::Models::CheckDeposit::InboundFundsHold#currency
        module Currency
          extend Increase::Internal::Type::Enum

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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # #/components/schemas/inbound_funds_hold/properties/status
        #
        # @see Increase::Models::CheckDeposit::InboundFundsHold#status
        module Status
          extend Increase::Internal::Type::Enum

          # Funds are still being held.
          HELD = :held

          # Funds have been released.
          COMPLETE = :complete

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # #/components/schemas/inbound_funds_hold/properties/type
        #
        # @see Increase::Models::CheckDeposit::InboundFundsHold#type
        module Type
          extend Increase::Internal::Type::Enum

          INBOUND_FUNDS_HOLD = :inbound_funds_hold

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # #/components/schemas/check_deposit/properties/status
      #
      # @see Increase::Models::CheckDeposit#status
      module Status
        extend Increase::Internal::Type::Enum

        # The Check Deposit is pending review.
        PENDING = :pending

        # The Check Deposit has been deposited.
        SUBMITTED = :submitted

        # The Check Deposit has been rejected.
        REJECTED = :rejected

        # The Check Deposit has been returned.
        RETURNED = :returned

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/check_deposit/properties/type
      #
      # @see Increase::Models::CheckDeposit#type
      module Type
        extend Increase::Internal::Type::Enum

        CHECK_DEPOSIT = :check_deposit

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
