# typed: strong

module Increase
  module Models
    class CheckDeposit < Increase::BaseModel
      # The deposit's identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The Account the check was deposited into.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The deposited amount in USD cents.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # The ID for the File containing the image of the back of the check.
      sig { returns(T.nilable(String)) }
      def back_image_file_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def back_image_file_id=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the transfer was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # If your deposit is successfully parsed and accepted by Increase, this will
      #   contain details of the parsed check.
      sig { returns(T.nilable(Increase::Models::CheckDeposit::DepositAcceptance)) }
      def deposit_acceptance
      end

      sig do
        params(_: T.nilable(T.any(Increase::Models::CheckDeposit::DepositAcceptance, Increase::Util::AnyHash)))
          .returns(T.nilable(T.any(Increase::Models::CheckDeposit::DepositAcceptance, Increase::Util::AnyHash)))
      end
      def deposit_acceptance=(_)
      end

      # If your deposit is rejected by Increase, this will contain details as to why it
      #   was rejected.
      sig { returns(T.nilable(Increase::Models::CheckDeposit::DepositRejection)) }
      def deposit_rejection
      end

      sig do
        params(_: T.nilable(T.any(Increase::Models::CheckDeposit::DepositRejection, Increase::Util::AnyHash)))
          .returns(T.nilable(T.any(Increase::Models::CheckDeposit::DepositRejection, Increase::Util::AnyHash)))
      end
      def deposit_rejection=(_)
      end

      # If your deposit is returned, this will contain details as to why it was
      #   returned.
      sig { returns(T.nilable(Increase::Models::CheckDeposit::DepositReturn)) }
      def deposit_return
      end

      sig do
        params(_: T.nilable(T.any(Increase::Models::CheckDeposit::DepositReturn, Increase::Util::AnyHash)))
          .returns(T.nilable(T.any(Increase::Models::CheckDeposit::DepositReturn, Increase::Util::AnyHash)))
      end
      def deposit_return=(_)
      end

      # After the check is parsed, it is submitted to the Check21 network for
      #   processing. This will contain details of the submission.
      sig { returns(T.nilable(Increase::Models::CheckDeposit::DepositSubmission)) }
      def deposit_submission
      end

      sig do
        params(_: T.nilable(T.any(Increase::Models::CheckDeposit::DepositSubmission, Increase::Util::AnyHash)))
          .returns(T.nilable(T.any(Increase::Models::CheckDeposit::DepositSubmission, Increase::Util::AnyHash)))
      end
      def deposit_submission=(_)
      end

      # The description of the Check Deposit, for display purposes only.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # The ID for the File containing the image of the front of the check.
      sig { returns(String) }
      def front_image_file_id
      end

      sig { params(_: String).returns(String) }
      def front_image_file_id=(_)
      end

      # The idempotency key you chose for this object. This value is unique across
      #   Increase and is used to ensure that a request is only processed once. Learn more
      #   about [idempotency](https://increase.com/documentation/idempotency-keys).
      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      # Increase will sometimes hold the funds for Check Deposits. If funds are held,
      #   this sub-object will contain details of the hold.
      sig { returns(T.nilable(Increase::Models::CheckDeposit::InboundFundsHold)) }
      def inbound_funds_hold
      end

      sig do
        params(_: T.nilable(T.any(Increase::Models::CheckDeposit::InboundFundsHold, Increase::Util::AnyHash)))
          .returns(T.nilable(T.any(Increase::Models::CheckDeposit::InboundFundsHold, Increase::Util::AnyHash)))
      end
      def inbound_funds_hold=(_)
      end

      # If the Check Deposit was the result of an Inbound Mail Item, this will contain
      #   the identifier of the Inbound Mail Item.
      sig { returns(T.nilable(String)) }
      def inbound_mail_item_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def inbound_mail_item_id=(_)
      end

      # If the Check Deposit was the result of an Inbound Mail Item, this will contain
      #   the identifier of the Lockbox that received it.
      sig { returns(T.nilable(String)) }
      def lockbox_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def lockbox_id=(_)
      end

      # The status of the Check Deposit.
      sig { returns(Increase::Models::CheckDeposit::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: Increase::Models::CheckDeposit::Status::TaggedSymbol)
          .returns(Increase::Models::CheckDeposit::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # The ID for the Transaction created by the deposit.
      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_id=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `check_deposit`.
      sig { returns(Increase::Models::CheckDeposit::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::CheckDeposit::Type::TaggedSymbol)
          .returns(Increase::Models::CheckDeposit::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # Check Deposits allow you to deposit images of paper checks into your account.
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
          status: Increase::Models::CheckDeposit::Status::TaggedSymbol,
          transaction_id: T.nilable(String),
          type: Increase::Models::CheckDeposit::Type::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
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
              status: Increase::Models::CheckDeposit::Status::TaggedSymbol,
              transaction_id: T.nilable(String),
              type: Increase::Models::CheckDeposit::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      class DepositAcceptance < Increase::BaseModel
        # The account number printed on the check.
        sig { returns(String) }
        def account_number
        end

        sig { params(_: String).returns(String) }
        def account_number=(_)
        end

        # The amount to be deposited in the minor unit of the transaction's currency. For
        #   dollars, for example, this is cents.
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        # An additional line of metadata printed on the check. This typically includes the
        #   check number for business checks.
        sig { returns(T.nilable(String)) }
        def auxiliary_on_us
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def auxiliary_on_us=(_)
        end

        # The ID of the Check Deposit that was accepted.
        sig { returns(String) }
        def check_deposit_id
        end

        sig { params(_: String).returns(String) }
        def check_deposit_id=(_)
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
        #   transaction's currency.
        sig { returns(Increase::Models::CheckDeposit::DepositAcceptance::Currency::TaggedSymbol) }
        def currency
        end

        sig do
          params(_: Increase::Models::CheckDeposit::DepositAcceptance::Currency::TaggedSymbol)
            .returns(Increase::Models::CheckDeposit::DepositAcceptance::Currency::TaggedSymbol)
        end
        def currency=(_)
        end

        # The routing number printed on the check.
        sig { returns(String) }
        def routing_number
        end

        sig { params(_: String).returns(String) }
        def routing_number=(_)
        end

        # The check serial number, if present, for consumer checks. For business checks,
        #   the serial number is usually in the `auxiliary_on_us` field.
        sig { returns(T.nilable(String)) }
        def serial_number
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def serial_number=(_)
        end

        # If your deposit is successfully parsed and accepted by Increase, this will
        #   contain details of the parsed check.
        sig do
          params(
            account_number: String,
            amount: Integer,
            auxiliary_on_us: T.nilable(String),
            check_deposit_id: String,
            currency: Increase::Models::CheckDeposit::DepositAcceptance::Currency::TaggedSymbol,
            routing_number: String,
            serial_number: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(account_number:, amount:, auxiliary_on_us:, check_deposit_id:, currency:, routing_number:, serial_number:)
        end

        sig do
          override
            .returns(
              {
                account_number: String,
                amount: Integer,
                auxiliary_on_us: T.nilable(String),
                check_deposit_id: String,
                currency: Increase::Models::CheckDeposit::DepositAcceptance::Currency::TaggedSymbol,
                routing_number: String,
                serial_number: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
        #   transaction's currency.
        module Currency
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::CheckDeposit::DepositAcceptance::Currency) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::CheckDeposit::DepositAcceptance::Currency::TaggedSymbol) }

          # Canadian Dollar (CAD)
          CAD = T.let(:CAD, Increase::Models::CheckDeposit::DepositAcceptance::Currency::TaggedSymbol)

          # Swiss Franc (CHF)
          CHF = T.let(:CHF, Increase::Models::CheckDeposit::DepositAcceptance::Currency::TaggedSymbol)

          # Euro (EUR)
          EUR = T.let(:EUR, Increase::Models::CheckDeposit::DepositAcceptance::Currency::TaggedSymbol)

          # British Pound (GBP)
          GBP = T.let(:GBP, Increase::Models::CheckDeposit::DepositAcceptance::Currency::TaggedSymbol)

          # Japanese Yen (JPY)
          JPY = T.let(:JPY, Increase::Models::CheckDeposit::DepositAcceptance::Currency::TaggedSymbol)

          # US Dollar (USD)
          USD = T.let(:USD, Increase::Models::CheckDeposit::DepositAcceptance::Currency::TaggedSymbol)
        end
      end

      class DepositRejection < Increase::BaseModel
        # The rejected amount in the minor unit of check's currency. For dollars, for
        #   example, this is cents.
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        # The identifier of the Check Deposit that was rejected.
        sig { returns(String) }
        def check_deposit_id
        end

        sig { params(_: String).returns(String) }
        def check_deposit_id=(_)
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's
        #   currency.
        sig { returns(Increase::Models::CheckDeposit::DepositRejection::Currency::TaggedSymbol) }
        def currency
        end

        sig do
          params(_: Increase::Models::CheckDeposit::DepositRejection::Currency::TaggedSymbol)
            .returns(Increase::Models::CheckDeposit::DepositRejection::Currency::TaggedSymbol)
        end
        def currency=(_)
        end

        # The identifier of the associated declined transaction.
        sig { returns(String) }
        def declined_transaction_id
        end

        sig { params(_: String).returns(String) }
        def declined_transaction_id=(_)
        end

        # Why the check deposit was rejected.
        sig { returns(Increase::Models::CheckDeposit::DepositRejection::Reason::TaggedSymbol) }
        def reason
        end

        sig do
          params(_: Increase::Models::CheckDeposit::DepositRejection::Reason::TaggedSymbol)
            .returns(Increase::Models::CheckDeposit::DepositRejection::Reason::TaggedSymbol)
        end
        def reason=(_)
        end

        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the check deposit was rejected.
        sig { returns(Time) }
        def rejected_at
        end

        sig { params(_: Time).returns(Time) }
        def rejected_at=(_)
        end

        # If your deposit is rejected by Increase, this will contain details as to why it
        #   was rejected.
        sig do
          params(
            amount: Integer,
            check_deposit_id: String,
            currency: Increase::Models::CheckDeposit::DepositRejection::Currency::TaggedSymbol,
            declined_transaction_id: String,
            reason: Increase::Models::CheckDeposit::DepositRejection::Reason::TaggedSymbol,
            rejected_at: Time
          )
            .returns(T.attached_class)
        end
        def self.new(amount:, check_deposit_id:, currency:, declined_transaction_id:, reason:, rejected_at:)
        end

        sig do
          override
            .returns(
              {
                amount: Integer,
                check_deposit_id: String,
                currency: Increase::Models::CheckDeposit::DepositRejection::Currency::TaggedSymbol,
                declined_transaction_id: String,
                reason: Increase::Models::CheckDeposit::DepositRejection::Reason::TaggedSymbol,
                rejected_at: Time
              }
            )
        end
        def to_hash
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the check's
        #   currency.
        module Currency
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckDeposit::DepositRejection::Currency) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::CheckDeposit::DepositRejection::Currency::TaggedSymbol) }

          # Canadian Dollar (CAD)
          CAD = T.let(:CAD, Increase::Models::CheckDeposit::DepositRejection::Currency::TaggedSymbol)

          # Swiss Franc (CHF)
          CHF = T.let(:CHF, Increase::Models::CheckDeposit::DepositRejection::Currency::TaggedSymbol)

          # Euro (EUR)
          EUR = T.let(:EUR, Increase::Models::CheckDeposit::DepositRejection::Currency::TaggedSymbol)

          # British Pound (GBP)
          GBP = T.let(:GBP, Increase::Models::CheckDeposit::DepositRejection::Currency::TaggedSymbol)

          # Japanese Yen (JPY)
          JPY = T.let(:JPY, Increase::Models::CheckDeposit::DepositRejection::Currency::TaggedSymbol)

          # US Dollar (USD)
          USD = T.let(:USD, Increase::Models::CheckDeposit::DepositRejection::Currency::TaggedSymbol)
        end

        # Why the check deposit was rejected.
        module Reason
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckDeposit::DepositRejection::Reason) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::CheckDeposit::DepositRejection::Reason::TaggedSymbol) }

          # The check's image is incomplete.
          INCOMPLETE_IMAGE =
            T.let(:incomplete_image, Increase::Models::CheckDeposit::DepositRejection::Reason::TaggedSymbol)

          # This is a duplicate check submission.
          DUPLICATE = T.let(:duplicate, Increase::Models::CheckDeposit::DepositRejection::Reason::TaggedSymbol)

          # This check has poor image quality.
          POOR_IMAGE_QUALITY =
            T.let(:poor_image_quality, Increase::Models::CheckDeposit::DepositRejection::Reason::TaggedSymbol)

          # The check was deposited with the incorrect amount.
          INCORRECT_AMOUNT =
            T.let(:incorrect_amount, Increase::Models::CheckDeposit::DepositRejection::Reason::TaggedSymbol)

          # The check is made out to someone other than the account holder.
          INCORRECT_RECIPIENT =
            T.let(:incorrect_recipient, Increase::Models::CheckDeposit::DepositRejection::Reason::TaggedSymbol)

          # This check was not eligible for mobile deposit.
          NOT_ELIGIBLE_FOR_MOBILE_DEPOSIT =
            T.let(
              :not_eligible_for_mobile_deposit,
              Increase::Models::CheckDeposit::DepositRejection::Reason::TaggedSymbol
            )

          # This check is missing at least one required field.
          MISSING_REQUIRED_DATA_ELEMENTS =
            T.let(
              :missing_required_data_elements,
              Increase::Models::CheckDeposit::DepositRejection::Reason::TaggedSymbol
            )

          # This check is suspected to be fraudulent.
          SUSPECTED_FRAUD =
            T.let(:suspected_fraud, Increase::Models::CheckDeposit::DepositRejection::Reason::TaggedSymbol)

          # This check's deposit window has expired.
          DEPOSIT_WINDOW_EXPIRED =
            T.let(:deposit_window_expired, Increase::Models::CheckDeposit::DepositRejection::Reason::TaggedSymbol)

          # The check was rejected at the user's request.
          REQUESTED_BY_USER =
            T.let(:requested_by_user, Increase::Models::CheckDeposit::DepositRejection::Reason::TaggedSymbol)

          # The check was rejected for an unknown reason.
          UNKNOWN = T.let(:unknown, Increase::Models::CheckDeposit::DepositRejection::Reason::TaggedSymbol)
        end
      end

      class DepositReturn < Increase::BaseModel
        # The returned amount in USD cents.
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        # The identifier of the Check Deposit that was returned.
        sig { returns(String) }
        def check_deposit_id
        end

        sig { params(_: String).returns(String) }
        def check_deposit_id=(_)
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
        #   transaction's currency.
        sig { returns(Increase::Models::CheckDeposit::DepositReturn::Currency::TaggedSymbol) }
        def currency
        end

        sig do
          params(_: Increase::Models::CheckDeposit::DepositReturn::Currency::TaggedSymbol)
            .returns(Increase::Models::CheckDeposit::DepositReturn::Currency::TaggedSymbol)
        end
        def currency=(_)
        end

        # Why this check was returned by the bank holding the account it was drawn
        #   against.
        sig { returns(Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol) }
        def return_reason
        end

        sig do
          params(_: Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)
            .returns(Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)
        end
        def return_reason=(_)
        end

        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the check deposit was returned.
        sig { returns(Time) }
        def returned_at
        end

        sig { params(_: Time).returns(Time) }
        def returned_at=(_)
        end

        # The identifier of the transaction that reversed the original check deposit
        #   transaction.
        sig { returns(String) }
        def transaction_id
        end

        sig { params(_: String).returns(String) }
        def transaction_id=(_)
        end

        # If your deposit is returned, this will contain details as to why it was
        #   returned.
        sig do
          params(
            amount: Integer,
            check_deposit_id: String,
            currency: Increase::Models::CheckDeposit::DepositReturn::Currency::TaggedSymbol,
            return_reason: Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol,
            returned_at: Time,
            transaction_id: String
          )
            .returns(T.attached_class)
        end
        def self.new(amount:, check_deposit_id:, currency:, return_reason:, returned_at:, transaction_id:)
        end

        sig do
          override
            .returns(
              {
                amount: Integer,
                check_deposit_id: String,
                currency: Increase::Models::CheckDeposit::DepositReturn::Currency::TaggedSymbol,
                return_reason: Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol,
                returned_at: Time,
                transaction_id: String
              }
            )
        end
        def to_hash
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the
        #   transaction's currency.
        module Currency
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckDeposit::DepositReturn::Currency) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::CheckDeposit::DepositReturn::Currency::TaggedSymbol) }

          # Canadian Dollar (CAD)
          CAD = T.let(:CAD, Increase::Models::CheckDeposit::DepositReturn::Currency::TaggedSymbol)

          # Swiss Franc (CHF)
          CHF = T.let(:CHF, Increase::Models::CheckDeposit::DepositReturn::Currency::TaggedSymbol)

          # Euro (EUR)
          EUR = T.let(:EUR, Increase::Models::CheckDeposit::DepositReturn::Currency::TaggedSymbol)

          # British Pound (GBP)
          GBP = T.let(:GBP, Increase::Models::CheckDeposit::DepositReturn::Currency::TaggedSymbol)

          # Japanese Yen (JPY)
          JPY = T.let(:JPY, Increase::Models::CheckDeposit::DepositReturn::Currency::TaggedSymbol)

          # US Dollar (USD)
          USD = T.let(:USD, Increase::Models::CheckDeposit::DepositReturn::Currency::TaggedSymbol)
        end

        # Why this check was returned by the bank holding the account it was drawn
        #   against.
        module ReturnReason
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::CheckDeposit::DepositReturn::ReturnReason) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol) }

          # The check doesn't allow ACH conversion.
          ACH_CONVERSION_NOT_SUPPORTED =
            T.let(
              :ach_conversion_not_supported,
              Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol
            )

          # The account is closed.
          CLOSED_ACCOUNT =
            T.let(:closed_account, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)

          # The check has already been deposited.
          DUPLICATE_SUBMISSION =
            T.let(:duplicate_submission, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)

          # Insufficient funds
          INSUFFICIENT_FUNDS =
            T.let(:insufficient_funds, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)

          # No account was found matching the check details.
          NO_ACCOUNT =
            T.let(:no_account, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)

          # The check was not authorized.
          NOT_AUTHORIZED =
            T.let(:not_authorized, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)

          # The check is too old.
          STALE_DATED =
            T.let(:stale_dated, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)

          # The payment has been stopped by the account holder.
          STOP_PAYMENT =
            T.let(:stop_payment, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)

          # The reason for the return is unknown.
          UNKNOWN_REASON =
            T.let(:unknown_reason, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)

          # The image doesn't match the details submitted.
          UNMATCHED_DETAILS =
            T.let(:unmatched_details, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)

          # The image could not be read.
          UNREADABLE_IMAGE =
            T.let(:unreadable_image, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)

          # The check endorsement was irregular.
          ENDORSEMENT_IRREGULAR =
            T.let(:endorsement_irregular, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)

          # The check present was either altered or fake.
          ALTERED_OR_FICTITIOUS_ITEM =
            T.let(
              :altered_or_fictitious_item,
              Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol
            )

          # The account this check is drawn on is frozen.
          FROZEN_OR_BLOCKED_ACCOUNT =
            T.let(
              :frozen_or_blocked_account,
              Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol
            )

          # The check is post dated.
          POST_DATED =
            T.let(:post_dated, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)

          # The endorsement was missing.
          ENDORSEMENT_MISSING =
            T.let(:endorsement_missing, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)

          # The check signature was missing.
          SIGNATURE_MISSING =
            T.let(:signature_missing, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)

          # The bank suspects a stop payment will be placed.
          STOP_PAYMENT_SUSPECT =
            T.let(:stop_payment_suspect, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)

          # The bank cannot read the image.
          UNUSABLE_IMAGE =
            T.let(:unusable_image, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)

          # The check image fails the bank's security check.
          IMAGE_FAILS_SECURITY_CHECK =
            T.let(
              :image_fails_security_check,
              Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol
            )

          # The bank cannot determine the amount.
          CANNOT_DETERMINE_AMOUNT =
            T.let(:cannot_determine_amount, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)

          # The signature is inconsistent with prior signatures.
          SIGNATURE_IRREGULAR =
            T.let(:signature_irregular, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)

          # The check is a non-cash item and cannot be drawn against the account.
          NON_CASH_ITEM =
            T.let(:non_cash_item, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)

          # The bank is unable to process this check.
          UNABLE_TO_PROCESS =
            T.let(:unable_to_process, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)

          # The check exceeds the bank or customer's limit.
          ITEM_EXCEEDS_DOLLAR_LIMIT =
            T.let(
              :item_exceeds_dollar_limit,
              Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol
            )

          # The bank sold this account and no longer services this customer.
          BRANCH_OR_ACCOUNT_SOLD =
            T.let(:branch_or_account_sold, Increase::Models::CheckDeposit::DepositReturn::ReturnReason::TaggedSymbol)
        end
      end

      class DepositSubmission < Increase::BaseModel
        # The ID for the File containing the check back image that was submitted to the
        #   Check21 network.
        sig { returns(String) }
        def back_file_id
        end

        sig { params(_: String).returns(String) }
        def back_file_id=(_)
        end

        # The ID for the File containing the check front image that was submitted to the
        #   Check21 network.
        sig { returns(String) }
        def front_file_id
        end

        sig { params(_: String).returns(String) }
        def front_file_id=(_)
        end

        # When the check deposit was submitted to the Check21 network for processing.
        #   During business days, this happens within a few hours of the check being
        #   accepted by Increase.
        sig { returns(Time) }
        def submitted_at
        end

        sig { params(_: Time).returns(Time) }
        def submitted_at=(_)
        end

        # After the check is parsed, it is submitted to the Check21 network for
        #   processing. This will contain details of the submission.
        sig do
          params(back_file_id: String, front_file_id: String, submitted_at: Time).returns(T.attached_class)
        end
        def self.new(back_file_id:, front_file_id:, submitted_at:)
        end

        sig { override.returns({back_file_id: String, front_file_id: String, submitted_at: Time}) }
        def to_hash
        end
      end

      class InboundFundsHold < Increase::BaseModel
        # The Inbound Funds Hold identifier.
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # The held amount in the minor unit of the account's currency. For dollars, for
        #   example, this is cents.
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        # When the hold will be released automatically. Certain conditions may cause it to
        #   be released before this time.
        sig { returns(Time) }
        def automatically_releases_at
        end

        sig { params(_: Time).returns(Time) }
        def automatically_releases_at=(_)
        end

        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) time at which the hold
        #   was created.
        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's
        #   currency.
        sig { returns(Increase::Models::CheckDeposit::InboundFundsHold::Currency::TaggedSymbol) }
        def currency
        end

        sig do
          params(_: Increase::Models::CheckDeposit::InboundFundsHold::Currency::TaggedSymbol)
            .returns(Increase::Models::CheckDeposit::InboundFundsHold::Currency::TaggedSymbol)
        end
        def currency=(_)
        end

        # The ID of the Transaction for which funds were held.
        sig { returns(T.nilable(String)) }
        def held_transaction_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def held_transaction_id=(_)
        end

        # The ID of the Pending Transaction representing the held funds.
        sig { returns(T.nilable(String)) }
        def pending_transaction_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def pending_transaction_id=(_)
        end

        # When the hold was released (if it has been released).
        sig { returns(T.nilable(Time)) }
        def released_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def released_at=(_)
        end

        # The status of the hold.
        sig { returns(Increase::Models::CheckDeposit::InboundFundsHold::Status::TaggedSymbol) }
        def status
        end

        sig do
          params(_: Increase::Models::CheckDeposit::InboundFundsHold::Status::TaggedSymbol)
            .returns(Increase::Models::CheckDeposit::InboundFundsHold::Status::TaggedSymbol)
        end
        def status=(_)
        end

        # A constant representing the object's type. For this resource it will always be
        #   `inbound_funds_hold`.
        sig { returns(Increase::Models::CheckDeposit::InboundFundsHold::Type::TaggedSymbol) }
        def type
        end

        sig do
          params(_: Increase::Models::CheckDeposit::InboundFundsHold::Type::TaggedSymbol)
            .returns(Increase::Models::CheckDeposit::InboundFundsHold::Type::TaggedSymbol)
        end
        def type=(_)
        end

        # Increase will sometimes hold the funds for Check Deposits. If funds are held,
        #   this sub-object will contain details of the hold.
        sig do
          params(
            id: String,
            amount: Integer,
            automatically_releases_at: Time,
            created_at: Time,
            currency: Increase::Models::CheckDeposit::InboundFundsHold::Currency::TaggedSymbol,
            held_transaction_id: T.nilable(String),
            pending_transaction_id: T.nilable(String),
            released_at: T.nilable(Time),
            status: Increase::Models::CheckDeposit::InboundFundsHold::Status::TaggedSymbol,
            type: Increase::Models::CheckDeposit::InboundFundsHold::Type::TaggedSymbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
                currency: Increase::Models::CheckDeposit::InboundFundsHold::Currency::TaggedSymbol,
                held_transaction_id: T.nilable(String),
                pending_transaction_id: T.nilable(String),
                released_at: T.nilable(Time),
                status: Increase::Models::CheckDeposit::InboundFundsHold::Status::TaggedSymbol,
                type: Increase::Models::CheckDeposit::InboundFundsHold::Type::TaggedSymbol
              }
            )
        end
        def to_hash
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the hold's
        #   currency.
        module Currency
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckDeposit::InboundFundsHold::Currency) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::CheckDeposit::InboundFundsHold::Currency::TaggedSymbol) }

          # Canadian Dollar (CAD)
          CAD = T.let(:CAD, Increase::Models::CheckDeposit::InboundFundsHold::Currency::TaggedSymbol)

          # Swiss Franc (CHF)
          CHF = T.let(:CHF, Increase::Models::CheckDeposit::InboundFundsHold::Currency::TaggedSymbol)

          # Euro (EUR)
          EUR = T.let(:EUR, Increase::Models::CheckDeposit::InboundFundsHold::Currency::TaggedSymbol)

          # British Pound (GBP)
          GBP = T.let(:GBP, Increase::Models::CheckDeposit::InboundFundsHold::Currency::TaggedSymbol)

          # Japanese Yen (JPY)
          JPY = T.let(:JPY, Increase::Models::CheckDeposit::InboundFundsHold::Currency::TaggedSymbol)

          # US Dollar (USD)
          USD = T.let(:USD, Increase::Models::CheckDeposit::InboundFundsHold::Currency::TaggedSymbol)
        end

        # The status of the hold.
        module Status
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckDeposit::InboundFundsHold::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::CheckDeposit::InboundFundsHold::Status::TaggedSymbol) }

          # Funds are still being held.
          HELD = T.let(:held, Increase::Models::CheckDeposit::InboundFundsHold::Status::TaggedSymbol)

          # Funds have been released.
          COMPLETE = T.let(:complete, Increase::Models::CheckDeposit::InboundFundsHold::Status::TaggedSymbol)
        end

        # A constant representing the object's type. For this resource it will always be
        #   `inbound_funds_hold`.
        module Type
          extend Increase::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckDeposit::InboundFundsHold::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::CheckDeposit::InboundFundsHold::Type::TaggedSymbol) }

          INBOUND_FUNDS_HOLD =
            T.let(:inbound_funds_hold, Increase::Models::CheckDeposit::InboundFundsHold::Type::TaggedSymbol)
        end
      end

      # The status of the Check Deposit.
      module Status
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckDeposit::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::CheckDeposit::Status::TaggedSymbol) }

        # The Check Deposit is pending review.
        PENDING = T.let(:pending, Increase::Models::CheckDeposit::Status::TaggedSymbol)

        # The Check Deposit has been deposited.
        SUBMITTED = T.let(:submitted, Increase::Models::CheckDeposit::Status::TaggedSymbol)

        # The Check Deposit has been rejected.
        REJECTED = T.let(:rejected, Increase::Models::CheckDeposit::Status::TaggedSymbol)

        # The Check Deposit has been returned.
        RETURNED = T.let(:returned, Increase::Models::CheckDeposit::Status::TaggedSymbol)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `check_deposit`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CheckDeposit::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::CheckDeposit::Type::TaggedSymbol) }

        CHECK_DEPOSIT = T.let(:check_deposit, Increase::Models::CheckDeposit::Type::TaggedSymbol)
      end
    end
  end
end
