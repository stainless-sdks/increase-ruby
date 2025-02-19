# typed: strong

module Increase
  module Models
    class CheckDeposit < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(T.nilable(String)) }
      def back_image_file_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def back_image_file_id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(Increase::Models::CheckDeposit::DepositAcceptance)) }
      def deposit_acceptance
      end

      sig do
        params(_: T.nilable(Increase::Models::CheckDeposit::DepositAcceptance))
          .returns(T.nilable(Increase::Models::CheckDeposit::DepositAcceptance))
      end
      def deposit_acceptance=(_)
      end

      sig { returns(T.nilable(Increase::Models::CheckDeposit::DepositRejection)) }
      def deposit_rejection
      end

      sig do
        params(_: T.nilable(Increase::Models::CheckDeposit::DepositRejection))
          .returns(T.nilable(Increase::Models::CheckDeposit::DepositRejection))
      end
      def deposit_rejection=(_)
      end

      sig { returns(T.nilable(Increase::Models::CheckDeposit::DepositReturn)) }
      def deposit_return
      end

      sig do
        params(_: T.nilable(Increase::Models::CheckDeposit::DepositReturn))
          .returns(T.nilable(Increase::Models::CheckDeposit::DepositReturn))
      end
      def deposit_return=(_)
      end

      sig { returns(T.nilable(Increase::Models::CheckDeposit::DepositSubmission)) }
      def deposit_submission
      end

      sig do
        params(_: T.nilable(Increase::Models::CheckDeposit::DepositSubmission))
          .returns(T.nilable(Increase::Models::CheckDeposit::DepositSubmission))
      end
      def deposit_submission=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      sig { returns(String) }
      def front_image_file_id
      end

      sig { params(_: String).returns(String) }
      def front_image_file_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(T.nilable(Increase::Models::CheckDeposit::InboundFundsHold)) }
      def inbound_funds_hold
      end

      sig do
        params(_: T.nilable(Increase::Models::CheckDeposit::InboundFundsHold))
          .returns(T.nilable(Increase::Models::CheckDeposit::InboundFundsHold))
      end
      def inbound_funds_hold=(_)
      end

      sig { returns(T.nilable(String)) }
      def inbound_mail_item_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def inbound_mail_item_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def lockbox_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def lockbox_id=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_id=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig do
        params(
            id: String,
            account_id: String,
            amount: Integer,
            back_image_file_id: T.nilable(String),
            created_at: Time,
            deposit_acceptance: T.nilable(Increase::Models::CheckDeposit::DepositAcceptance),
            deposit_rejection: T.nilable(Increase::Models::CheckDeposit::DepositRejection),
            deposit_return: T.nilable(Increase::Models::CheckDeposit::DepositReturn),
            deposit_submission: T.nilable(Increase::Models::CheckDeposit::DepositSubmission),
            description: T.nilable(String),
            front_image_file_id: String,
            idempotency_key: T.nilable(String),
            inbound_funds_hold: T.nilable(Increase::Models::CheckDeposit::InboundFundsHold),
            inbound_mail_item_id: T.nilable(String),
            lockbox_id: T.nilable(String),
            status: Symbol,
            transaction_id: T.nilable(String),
            type: Symbol
          )
          .void
      end
      def initialize(
        id:,
        account_id:,
        amount:,
        back_image_file_id:,
        created_at:,
        deposit_acceptance:,
        deposit_rejection:,
        deposit_return:,
        deposit_submission:,
        description:,
        front_image_file_id:,
        idempotency_key:,
        inbound_funds_hold:,
        inbound_mail_item_id:,
        lockbox_id:,
        status:,
        transaction_id:,
        type:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_id: String,
              amount: Integer,
              back_image_file_id: T.nilable(String),
              created_at: Time,
              deposit_acceptance: T.nilable(Increase::Models::CheckDeposit::DepositAcceptance),
              deposit_rejection: T.nilable(Increase::Models::CheckDeposit::DepositRejection),
              deposit_return: T.nilable(Increase::Models::CheckDeposit::DepositReturn),
              deposit_submission: T.nilable(Increase::Models::CheckDeposit::DepositSubmission),
              description: T.nilable(String),
              front_image_file_id: String,
              idempotency_key: T.nilable(String),
              inbound_funds_hold: T.nilable(Increase::Models::CheckDeposit::InboundFundsHold),
              inbound_mail_item_id: T.nilable(String),
              lockbox_id: T.nilable(String),
              status: Symbol,
              transaction_id: T.nilable(String),
              type: Symbol
            }
          )
      end
      def to_hash
      end

      class DepositAcceptance < Increase::BaseModel
        sig { returns(String) }
        def account_number
        end

        sig { params(_: String).returns(String) }
        def account_number=(_)
        end

        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig { returns(T.nilable(String)) }
        def auxiliary_on_us
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def auxiliary_on_us=(_)
        end

        sig { returns(String) }
        def check_deposit_id
        end

        sig { params(_: String).returns(String) }
        def check_deposit_id=(_)
        end

        sig { returns(Symbol) }
        def currency
        end

        sig { params(_: Symbol).returns(Symbol) }
        def currency=(_)
        end

        sig { returns(String) }
        def routing_number
        end

        sig { params(_: String).returns(String) }
        def routing_number=(_)
        end

        sig { returns(T.nilable(String)) }
        def serial_number
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def serial_number=(_)
        end

        sig do
          params(
              account_number: String,
              amount: Integer,
              auxiliary_on_us: T.nilable(String),
              check_deposit_id: String,
              currency: Symbol,
              routing_number: String,
              serial_number: T.nilable(String)
            )
            .void
        end
        def initialize(account_number:, amount:, auxiliary_on_us:, check_deposit_id:, currency:, routing_number:, serial_number:)
        end

        sig do
          override
            .returns(
              {
                account_number: String,
                amount: Integer,
                auxiliary_on_us: T.nilable(String),
                check_deposit_id: String,
                currency: Symbol,
                routing_number: String,
                serial_number: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class Currency < Increase::Enum
          abstract!

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class DepositRejection < Increase::BaseModel
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig { returns(String) }
        def check_deposit_id
        end

        sig { params(_: String).returns(String) }
        def check_deposit_id=(_)
        end

        sig { returns(Symbol) }
        def currency
        end

        sig { params(_: Symbol).returns(Symbol) }
        def currency=(_)
        end

        sig { returns(String) }
        def declined_transaction_id
        end

        sig { params(_: String).returns(String) }
        def declined_transaction_id=(_)
        end

        sig { returns(Symbol) }
        def reason
        end

        sig { params(_: Symbol).returns(Symbol) }
        def reason=(_)
        end

        sig { returns(Time) }
        def rejected_at
        end

        sig { params(_: Time).returns(Time) }
        def rejected_at=(_)
        end

        sig do
          params(
              amount: Integer,
              check_deposit_id: String,
              currency: Symbol,
              declined_transaction_id: String,
              reason: Symbol,
              rejected_at: Time
            )
            .void
        end
        def initialize(amount:, check_deposit_id:, currency:, declined_transaction_id:, reason:, rejected_at:)
        end

        sig do
          override
            .returns(
              {
                amount: Integer,
                check_deposit_id: String,
                currency: Symbol,
                declined_transaction_id: String,
                reason: Symbol,
                rejected_at: Time
              }
            )
        end
        def to_hash
        end

        class Currency < Increase::Enum
          abstract!

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Reason < Increase::Enum
          abstract!

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class DepositReturn < Increase::BaseModel
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig { returns(String) }
        def check_deposit_id
        end

        sig { params(_: String).returns(String) }
        def check_deposit_id=(_)
        end

        sig { returns(Symbol) }
        def currency
        end

        sig { params(_: Symbol).returns(Symbol) }
        def currency=(_)
        end

        sig { returns(Symbol) }
        def return_reason
        end

        sig { params(_: Symbol).returns(Symbol) }
        def return_reason=(_)
        end

        sig { returns(Time) }
        def returned_at
        end

        sig { params(_: Time).returns(Time) }
        def returned_at=(_)
        end

        sig { returns(String) }
        def transaction_id
        end

        sig { params(_: String).returns(String) }
        def transaction_id=(_)
        end

        sig do
          params(
              amount: Integer,
              check_deposit_id: String,
              currency: Symbol,
              return_reason: Symbol,
              returned_at: Time,
              transaction_id: String
            )
            .void
        end
        def initialize(amount:, check_deposit_id:, currency:, return_reason:, returned_at:, transaction_id:)
        end

        sig do
          override
            .returns(
              {
                amount: Integer,
                check_deposit_id: String,
                currency: Symbol,
                return_reason: Symbol,
                returned_at: Time,
                transaction_id: String
              }
            )
        end
        def to_hash
        end

        class Currency < Increase::Enum
          abstract!

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class ReturnReason < Increase::Enum
          abstract!

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class DepositSubmission < Increase::BaseModel
        sig { returns(String) }
        def back_file_id
        end

        sig { params(_: String).returns(String) }
        def back_file_id=(_)
        end

        sig { returns(String) }
        def front_file_id
        end

        sig { params(_: String).returns(String) }
        def front_file_id=(_)
        end

        sig { returns(Time) }
        def submitted_at
        end

        sig { params(_: Time).returns(Time) }
        def submitted_at=(_)
        end

        sig { params(back_file_id: String, front_file_id: String, submitted_at: Time).void }
        def initialize(back_file_id:, front_file_id:, submitted_at:)
        end

        sig { override.returns({back_file_id: String, front_file_id: String, submitted_at: Time}) }
        def to_hash
        end
      end

      class InboundFundsHold < Increase::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig { returns(Time) }
        def automatically_releases_at
        end

        sig { params(_: Time).returns(Time) }
        def automatically_releases_at=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        sig { returns(Symbol) }
        def currency
        end

        sig { params(_: Symbol).returns(Symbol) }
        def currency=(_)
        end

        sig { returns(T.nilable(String)) }
        def held_transaction_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def held_transaction_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def pending_transaction_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def pending_transaction_id=(_)
        end

        sig { returns(T.nilable(Time)) }
        def released_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def released_at=(_)
        end

        sig { returns(Symbol) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig do
          params(
              id: String,
              amount: Integer,
              automatically_releases_at: Time,
              created_at: Time,
              currency: Symbol,
              held_transaction_id: T.nilable(String),
              pending_transaction_id: T.nilable(String),
              released_at: T.nilable(Time),
              status: Symbol,
              type: Symbol
            )
            .void
        end
        def initialize(
          id:,
          amount:,
          automatically_releases_at:,
          created_at:,
          currency:,
          held_transaction_id:,
          pending_transaction_id:,
          released_at:,
          status:,
          type:
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                amount: Integer,
                automatically_releases_at: Time,
                created_at: Time,
                currency: Symbol,
                held_transaction_id: T.nilable(String),
                pending_transaction_id: T.nilable(String),
                released_at: T.nilable(Time),
                status: Symbol,
                type: Symbol
              }
            )
        end
        def to_hash
        end

        class Currency < Increase::Enum
          abstract!

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Status < Increase::Enum
          abstract!

          # Funds are still being held.
          HELD = :held

          # Funds have been released.
          COMPLETE = :complete

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class Type < Increase::Enum
          abstract!

          INBOUND_FUNDS_HOLD = :inbound_funds_hold

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Status < Increase::Enum
        abstract!

        # The Check Deposit is pending review.
        PENDING = :pending

        # The Check Deposit has been deposited.
        SUBMITTED = :submitted

        # The Check Deposit has been rejected.
        REJECTED = :rejected

        # The Check Deposit has been returned.
        RETURNED = :returned

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Type < Increase::Enum
        abstract!

        CHECK_DEPOSIT = :check_deposit

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
