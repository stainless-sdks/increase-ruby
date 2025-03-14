# typed: strong

module Increase
  module Models
    class RealTimePaymentsTransfer < Increase::BaseModel
      # The Real-Time Payments Transfer's identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The Account from which the transfer was sent.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # If the transfer is acknowledged by the recipient bank, this will contain
      #   supplemental details.
      sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Acknowledgement)) }
      def acknowledgement
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimePaymentsTransfer::Acknowledgement))
          .returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Acknowledgement))
      end
      def acknowledgement=(_)
      end

      # The transfer amount in USD cents.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # If your account requires approvals for transfers and the transfer was approved,
      #   this will contain details of the approval.
      sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Approval)) }
      def approval
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimePaymentsTransfer::Approval))
          .returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Approval))
      end
      def approval=(_)
      end

      # If your account requires approvals for transfers and the transfer was not
      #   approved, this will contain details of the cancellation.
      sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Cancellation)) }
      def cancellation
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimePaymentsTransfer::Cancellation))
          .returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Cancellation))
      end
      def cancellation=(_)
      end

      # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #   the transfer was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # What object created the transfer, either via the API or the dashboard.
      sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy)) }
      def created_by
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy))
          .returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy))
      end
      def created_by=(_)
      end

      # The name of the transfer's recipient. This is set by the sender when creating
      #   the transfer.
      sig { returns(String) }
      def creditor_name
      end

      sig { params(_: String).returns(String) }
      def creditor_name=(_)
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's
      #   currency. For real-time payments transfers this is always equal to `USD`.
      sig { returns(Symbol) }
      def currency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def currency=(_)
      end

      # The name of the transfer's sender. If not provided, defaults to the name of the
      #   account's entity.
      sig { returns(T.nilable(String)) }
      def debtor_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def debtor_name=(_)
      end

      # The destination account number.
      sig { returns(String) }
      def destination_account_number
      end

      sig { params(_: String).returns(String) }
      def destination_account_number=(_)
      end

      # The destination American Bankers' Association (ABA) Routing Transit Number
      #   (RTN).
      sig { returns(String) }
      def destination_routing_number
      end

      sig { params(_: String).returns(String) }
      def destination_routing_number=(_)
      end

      # The identifier of the External Account the transfer was made to, if any.
      sig { returns(T.nilable(String)) }
      def external_account_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_account_id=(_)
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

      # The ID for the pending transaction representing the transfer. A pending
      #   transaction is created when the transfer
      #   [requires approval](https://increase.com/documentation/transfer-approvals#transfer-approvals)
      #   by someone else in your organization.
      sig { returns(T.nilable(String)) }
      def pending_transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def pending_transaction_id=(_)
      end

      # If the transfer is rejected by Real-Time Payments or the destination financial
      #   institution, this will contain supplemental details.
      sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Rejection)) }
      def rejection
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimePaymentsTransfer::Rejection))
          .returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Rejection))
      end
      def rejection=(_)
      end

      # Unstructured information that will show on the recipient's bank statement.
      sig { returns(String) }
      def remittance_information
      end

      sig { params(_: String).returns(String) }
      def remittance_information=(_)
      end

      # The Account Number the recipient will see as having sent the transfer.
      sig { returns(String) }
      def source_account_number_id
      end

      sig { params(_: String).returns(String) }
      def source_account_number_id=(_)
      end

      # The lifecycle status of the transfer.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # After the transfer is submitted to Real-Time Payments, this will contain
      #   supplemental details.
      sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Submission)) }
      def submission
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimePaymentsTransfer::Submission))
          .returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Submission))
      end
      def submission=(_)
      end

      # The Transaction funding the transfer once it is complete.
      sig { returns(T.nilable(String)) }
      def transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def transaction_id=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `real_time_payments_transfer`.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # The name of the ultimate recipient of the transfer. Set this if the creditor is
      #   an intermediary receiving the payment for someone else.
      sig { returns(T.nilable(String)) }
      def ultimate_creditor_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ultimate_creditor_name=(_)
      end

      # The name of the ultimate sender of the transfer. Set this if the funds are being
      #   sent on behalf of someone who is not the account holder at Increase.
      sig { returns(T.nilable(String)) }
      def ultimate_debtor_name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def ultimate_debtor_name=(_)
      end

      # Real-Time Payments transfers move funds, within seconds, between your Increase
      #   account and any other account on the Real-Time Payments network.
      sig do
        params(
          id: String,
          account_id: String,
          acknowledgement: T.nilable(Increase::Models::RealTimePaymentsTransfer::Acknowledgement),
          amount: Integer,
          approval: T.nilable(Increase::Models::RealTimePaymentsTransfer::Approval),
          cancellation: T.nilable(Increase::Models::RealTimePaymentsTransfer::Cancellation),
          created_at: Time,
          created_by: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy),
          creditor_name: String,
          currency: Symbol,
          debtor_name: T.nilable(String),
          destination_account_number: String,
          destination_routing_number: String,
          external_account_id: T.nilable(String),
          idempotency_key: T.nilable(String),
          pending_transaction_id: T.nilable(String),
          rejection: T.nilable(Increase::Models::RealTimePaymentsTransfer::Rejection),
          remittance_information: String,
          source_account_number_id: String,
          status: Symbol,
          submission: T.nilable(Increase::Models::RealTimePaymentsTransfer::Submission),
          transaction_id: T.nilable(String),
          type: Symbol,
          ultimate_creditor_name: T.nilable(String),
          ultimate_debtor_name: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        id:,
        account_id:,
        acknowledgement:,
        amount:,
        approval:,
        cancellation:,
        created_at:,
        created_by:,
        creditor_name:,
        currency:,
        debtor_name:,
        destination_account_number:,
        destination_routing_number:,
        external_account_id:,
        idempotency_key:,
        pending_transaction_id:,
        rejection:,
        remittance_information:,
        source_account_number_id:,
        status:,
        submission:,
        transaction_id:,
        type:,
        ultimate_creditor_name:,
        ultimate_debtor_name:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              account_id: String,
              acknowledgement: T.nilable(Increase::Models::RealTimePaymentsTransfer::Acknowledgement),
              amount: Integer,
              approval: T.nilable(Increase::Models::RealTimePaymentsTransfer::Approval),
              cancellation: T.nilable(Increase::Models::RealTimePaymentsTransfer::Cancellation),
              created_at: Time,
              created_by: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy),
              creditor_name: String,
              currency: Symbol,
              debtor_name: T.nilable(String),
              destination_account_number: String,
              destination_routing_number: String,
              external_account_id: T.nilable(String),
              idempotency_key: T.nilable(String),
              pending_transaction_id: T.nilable(String),
              rejection: T.nilable(Increase::Models::RealTimePaymentsTransfer::Rejection),
              remittance_information: String,
              source_account_number_id: String,
              status: Symbol,
              submission: T.nilable(Increase::Models::RealTimePaymentsTransfer::Submission),
              transaction_id: T.nilable(String),
              type: Symbol,
              ultimate_creditor_name: T.nilable(String),
              ultimate_debtor_name: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      class Acknowledgement < Increase::BaseModel
        # When the transfer was acknowledged.
        sig { returns(Time) }
        def acknowledged_at
        end

        sig { params(_: Time).returns(Time) }
        def acknowledged_at=(_)
        end

        # If the transfer is acknowledged by the recipient bank, this will contain
        #   supplemental details.
        sig { params(acknowledged_at: Time).returns(T.attached_class) }
        def self.new(acknowledged_at:)
        end

        sig { override.returns({acknowledged_at: Time}) }
        def to_hash
        end
      end

      class Approval < Increase::BaseModel
        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the transfer was approved.
        sig { returns(Time) }
        def approved_at
        end

        sig { params(_: Time).returns(Time) }
        def approved_at=(_)
        end

        # If the Transfer was approved by a user in the dashboard, the email address of
        #   that user.
        sig { returns(T.nilable(String)) }
        def approved_by
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def approved_by=(_)
        end

        # If your account requires approvals for transfers and the transfer was approved,
        #   this will contain details of the approval.
        sig { params(approved_at: Time, approved_by: T.nilable(String)).returns(T.attached_class) }
        def self.new(approved_at:, approved_by:)
        end

        sig { override.returns({approved_at: Time, approved_by: T.nilable(String)}) }
        def to_hash
        end
      end

      class Cancellation < Increase::BaseModel
        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the Transfer was canceled.
        sig { returns(Time) }
        def canceled_at
        end

        sig { params(_: Time).returns(Time) }
        def canceled_at=(_)
        end

        # If the Transfer was canceled by a user in the dashboard, the email address of
        #   that user.
        sig { returns(T.nilable(String)) }
        def canceled_by
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def canceled_by=(_)
        end

        # If your account requires approvals for transfers and the transfer was not
        #   approved, this will contain details of the cancellation.
        sig { params(canceled_at: Time, canceled_by: T.nilable(String)).returns(T.attached_class) }
        def self.new(canceled_at:, canceled_by:)
        end

        sig { override.returns({canceled_at: Time, canceled_by: T.nilable(String)}) }
        def to_hash
        end
      end

      class CreatedBy < Increase::BaseModel
        # If present, details about the API key that created the transfer.
        sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::APIKey)) }
        def api_key
        end

        sig do
          params(_: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::APIKey))
            .returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::APIKey))
        end
        def api_key=(_)
        end

        # The type of object that created this transfer.
        sig { returns(Symbol) }
        def category
        end

        sig { params(_: Symbol).returns(Symbol) }
        def category=(_)
        end

        # If present, details about the OAuth Application that created the transfer.
        sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::OAuthApplication)) }
        def oauth_application
        end

        sig do
          params(_: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::OAuthApplication))
            .returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::OAuthApplication))
        end
        def oauth_application=(_)
        end

        # If present, details about the User that created the transfer.
        sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::User)) }
        def user
        end

        sig do
          params(_: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::User))
            .returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::User))
        end
        def user=(_)
        end

        # What object created the transfer, either via the API or the dashboard.
        sig do
          params(
            api_key: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::APIKey),
            category: Symbol,
            oauth_application: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::OAuthApplication),
            user: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::User)
          )
            .returns(T.attached_class)
        end
        def self.new(api_key:, category:, oauth_application:, user:)
        end

        sig do
          override
            .returns(
              {
                api_key: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::APIKey),
                category: Symbol,
                oauth_application: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::OAuthApplication),
                user: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::User)
              }
            )
        end
        def to_hash
        end

        class APIKey < Increase::BaseModel
          # The description set for the API key when it was created.
          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_)
          end

          # If present, details about the API key that created the transfer.
          sig { params(description: T.nilable(String)).returns(T.attached_class) }
          def self.new(description:)
          end

          sig { override.returns({description: T.nilable(String)}) }
          def to_hash
          end
        end

        # The type of object that created this transfer.
        class Category < Increase::Enum
          abstract!

          # An API key. Details will be under the `api_key` object.
          API_KEY = :api_key

          # An OAuth application you connected to Increase. Details will be under the `oauth_application` object.
          OAUTH_APPLICATION = :oauth_application

          # A User in the Increase dashboard. Details will be under the `user` object.
          USER = :user

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class OAuthApplication < Increase::BaseModel
          # The name of the OAuth Application.
          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          # If present, details about the OAuth Application that created the transfer.
          sig { params(name: String).returns(T.attached_class) }
          def self.new(name:)
          end

          sig { override.returns({name: String}) }
          def to_hash
          end
        end

        class User < Increase::BaseModel
          # The email address of the User.
          sig { returns(String) }
          def email
          end

          sig { params(_: String).returns(String) }
          def email=(_)
          end

          # If present, details about the User that created the transfer.
          sig { params(email: String).returns(T.attached_class) }
          def self.new(email:)
          end

          sig { override.returns({email: String}) }
          def to_hash
          end
        end
      end

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's
      #   currency. For real-time payments transfers this is always equal to `USD`.
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Rejection < Increase::BaseModel
        # Additional information about the rejection provided by the recipient bank when
        #   the `reject_reason_code` is `NARRATIVE`.
        sig { returns(T.nilable(String)) }
        def reject_reason_additional_information
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reject_reason_additional_information=(_)
        end

        # The reason the transfer was rejected as provided by the recipient bank or the
        #   Real-Time Payments network.
        sig { returns(Symbol) }
        def reject_reason_code
        end

        sig { params(_: Symbol).returns(Symbol) }
        def reject_reason_code=(_)
        end

        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the transfer was rejected.
        sig { returns(T.nilable(Time)) }
        def rejected_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def rejected_at=(_)
        end

        # If the transfer is rejected by Real-Time Payments or the destination financial
        #   institution, this will contain supplemental details.
        sig do
          params(
            reject_reason_additional_information: T.nilable(String),
            reject_reason_code: Symbol,
            rejected_at: T.nilable(Time)
          )
            .returns(T.attached_class)
        end
        def self.new(reject_reason_additional_information:, reject_reason_code:, rejected_at:)
        end

        sig do
          override
            .returns(
              {
                reject_reason_additional_information: T.nilable(String),
                reject_reason_code: Symbol,
                rejected_at: T.nilable(Time)
              }
            )
        end
        def to_hash
        end

        # The reason the transfer was rejected as provided by the recipient bank or the
        #   Real-Time Payments network.
        class RejectReasonCode < Increase::Enum
          abstract!

          # The destination account is closed. Corresponds to the Real-Time Payments reason code `AC04`.
          ACCOUNT_CLOSED = :account_closed

          # The destination account is currently blocked from receiving transactions. Corresponds to the Real-Time Payments reason code `AC06`.
          ACCOUNT_BLOCKED = :account_blocked

          # The destination account is ineligible to receive Real-Time Payments transfers. Corresponds to the Real-Time Payments reason code `AC14`.
          INVALID_CREDITOR_ACCOUNT_TYPE = :invalid_creditor_account_type

          # The destination account does not exist. Corresponds to the Real-Time Payments reason code `AC03`.
          INVALID_CREDITOR_ACCOUNT_NUMBER = :invalid_creditor_account_number

          # The destination routing number is invalid. Corresponds to the Real-Time Payments reason code `RC04`.
          INVALID_CREDITOR_FINANCIAL_INSTITUTION_IDENTIFIER = :invalid_creditor_financial_institution_identifier

          # The destination account holder is deceased. Corresponds to the Real-Time Payments reason code `MD07`.
          END_CUSTOMER_DECEASED = :end_customer_deceased

          # The reason is provided as narrative information in the additional information field.
          NARRATIVE = :narrative

          # Real-Time Payments transfers are not allowed to the destination account. Corresponds to the Real-Time Payments reason code `AG01`.
          TRANSACTION_FORBIDDEN = :transaction_forbidden

          # Real-Time Payments transfers are not enabled for the destination account. Corresponds to the Real-Time Payments reason code `AG03`.
          TRANSACTION_TYPE_NOT_SUPPORTED = :transaction_type_not_supported

          # The amount of the transfer is different than expected by the recipient. Corresponds to the Real-Time Payments reason code `AM09`.
          UNEXPECTED_AMOUNT = :unexpected_amount

          # The amount is higher than the recipient is authorized to send or receive. Corresponds to the Real-Time Payments reason code `AM14`.
          AMOUNT_EXCEEDS_BANK_LIMITS = :amount_exceeds_bank_limits

          # The creditor's address is required, but missing or invalid. Corresponds to the Real-Time Payments reason code `BE04`.
          INVALID_CREDITOR_ADDRESS = :invalid_creditor_address

          # The specified creditor is unknown. Corresponds to the Real-Time Payments reason code `BE06`.
          UNKNOWN_END_CUSTOMER = :unknown_end_customer

          # The debtor's address is required, but missing or invalid. Corresponds to the Real-Time Payments reason code `BE07`.
          INVALID_DEBTOR_ADDRESS = :invalid_debtor_address

          # There was a timeout processing the transfer. Corresponds to the Real-Time Payments reason code `DS24`.
          TIMEOUT = :timeout

          # Real-Time Payments transfers are not enabled for the destination account. Corresponds to the Real-Time Payments reason code `NOAT`.
          UNSUPPORTED_MESSAGE_FOR_RECIPIENT = :unsupported_message_for_recipient

          # The destination financial institution is currently not connected to Real-Time Payments. Corresponds to the Real-Time Payments reason code `9912`.
          RECIPIENT_CONNECTION_NOT_AVAILABLE = :recipient_connection_not_available

          # Real-Time Payments is currently unavailable. Corresponds to the Real-Time Payments reason code `9948`.
          REAL_TIME_PAYMENTS_SUSPENDED = :real_time_payments_suspended

          # The destination financial institution is currently signed off of Real-Time Payments. Corresponds to the Real-Time Payments reason code `9910`.
          INSTRUCTED_AGENT_SIGNED_OFF = :instructed_agent_signed_off

          # The transfer was rejected due to an internal Increase issue. We have been notified.
          PROCESSING_ERROR = :processing_error

          # Some other error or issue has occurred.
          OTHER = :other

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      # The lifecycle status of the transfer.
      class Status < Increase::Enum
        abstract!

        # The transfer is pending approval.
        PENDING_APPROVAL = :pending_approval

        # The transfer has been canceled.
        CANCELED = :canceled

        # The transfer is pending review by Increase.
        PENDING_REVIEWING = :pending_reviewing

        # The transfer requires attention from an Increase operator.
        REQUIRES_ATTENTION = :requires_attention

        # The transfer was rejected by the network or the recipient's bank.
        REJECTED = :rejected

        # The transfer is queued to be submitted to Real-Time Payments.
        PENDING_SUBMISSION = :pending_submission

        # The transfer has been submitted and is pending a response from Real-Time Payments.
        SUBMITTED = :submitted

        # The transfer has been sent successfully and is complete.
        COMPLETE = :complete

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Submission < Increase::BaseModel
        # The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
        #   the transfer was submitted to The Clearing House.
        sig { returns(T.nilable(Time)) }
        def submitted_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def submitted_at=(_)
        end

        # The Real-Time Payments network identification of the transfer.
        sig { returns(String) }
        def transaction_identification
        end

        sig { params(_: String).returns(String) }
        def transaction_identification=(_)
        end

        # After the transfer is submitted to Real-Time Payments, this will contain
        #   supplemental details.
        sig do
          params(submitted_at: T.nilable(Time), transaction_identification: String).returns(T.attached_class)
        end
        def self.new(submitted_at:, transaction_identification:)
        end

        sig { override.returns({submitted_at: T.nilable(Time), transaction_identification: String}) }
        def to_hash
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `real_time_payments_transfer`.
      class Type < Increase::Enum
        abstract!

        REAL_TIME_PAYMENTS_TRANSFER = :real_time_payments_transfer

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
