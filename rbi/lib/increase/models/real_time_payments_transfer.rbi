# typed: strong

module Increase
  module Models
    class RealTimePaymentsTransfer < Increase::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Acknowledgement)) }
      attr_accessor :acknowledgement

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Approval)) }
      attr_accessor :approval

      sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Cancellation)) }
      attr_accessor :cancellation

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy)) }
      attr_accessor :created_by

      sig { returns(String) }
      attr_accessor :creditor_name

      sig { returns(Symbol) }
      attr_accessor :currency

      sig { returns(T.nilable(String)) }
      attr_accessor :debtor_name

      sig { returns(String) }
      attr_accessor :destination_account_number

      sig { returns(String) }
      attr_accessor :destination_routing_number

      sig { returns(T.nilable(String)) }
      attr_accessor :external_account_id

      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      sig { returns(T.nilable(String)) }
      attr_accessor :pending_transaction_id

      sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Rejection)) }
      attr_accessor :rejection

      sig { returns(String) }
      attr_accessor :remittance_information

      sig { returns(String) }
      attr_accessor :source_account_number_id

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::Submission)) }
      attr_accessor :submission

      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_id

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_accessor :ultimate_creditor_name

      sig { returns(T.nilable(String)) }
      attr_accessor :ultimate_debtor_name

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
        ).void
      end
      def initialize(
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
        override.returns(
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
        sig { returns(Time) }
        attr_accessor :acknowledged_at

        sig { params(acknowledged_at: Time).void }
        def initialize(acknowledged_at:)
        end

        sig { override.returns({acknowledged_at: Time}) }
        def to_hash
        end
      end

      class Approval < Increase::BaseModel
        sig { returns(Time) }
        attr_accessor :approved_at

        sig { returns(T.nilable(String)) }
        attr_accessor :approved_by

        sig { params(approved_at: Time, approved_by: T.nilable(String)).void }
        def initialize(approved_at:, approved_by:)
        end

        sig { override.returns({approved_at: Time, approved_by: T.nilable(String)}) }
        def to_hash
        end
      end

      class Cancellation < Increase::BaseModel
        sig { returns(Time) }
        attr_accessor :canceled_at

        sig { returns(T.nilable(String)) }
        attr_accessor :canceled_by

        sig { params(canceled_at: Time, canceled_by: T.nilable(String)).void }
        def initialize(canceled_at:, canceled_by:)
        end

        sig { override.returns({canceled_at: Time, canceled_by: T.nilable(String)}) }
        def to_hash
        end
      end

      class CreatedBy < Increase::BaseModel
        sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::APIKey)) }
        attr_accessor :api_key

        sig { returns(Symbol) }
        attr_accessor :category

        sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::OAuthApplication)) }
        attr_accessor :oauth_application

        sig { returns(T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::User)) }
        attr_accessor :user

        sig do
          params(
            api_key: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::APIKey),
            category: Symbol,
            oauth_application: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::OAuthApplication),
            user: T.nilable(Increase::Models::RealTimePaymentsTransfer::CreatedBy::User)
          ).void
        end
        def initialize(api_key:, category:, oauth_application:, user:)
        end

        sig do
          override.returns(
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
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          sig { params(description: T.nilable(String)).void }
          def initialize(description:)
          end

          sig { override.returns({description: T.nilable(String)}) }
          def to_hash
          end
        end

        class Category < Increase::Enum
          abstract!

          # An API key. Details will be under the `api_key` object.
          API_KEY = :api_key

          # An OAuth application you connected to Increase. Details will be under the `oauth_application` object.
          OAUTH_APPLICATION = :oauth_application

          # A User in the Increase dashboard. Details will be under the `user` object.
          USER = :user

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        class OAuthApplication < Increase::BaseModel
          sig { returns(String) }
          attr_accessor :name

          sig { params(name: String).void }
          def initialize(name:)
          end

          sig { override.returns({name: String}) }
          def to_hash
          end
        end

        class User < Increase::BaseModel
          sig { returns(String) }
          attr_accessor :email

          sig { params(email: String).void }
          def initialize(email:)
          end

          sig { override.returns({email: String}) }
          def to_hash
          end
        end
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

      class Rejection < Increase::BaseModel
        sig { returns(T.nilable(String)) }
        attr_accessor :reject_reason_additional_information

        sig { returns(Symbol) }
        attr_accessor :reject_reason_code

        sig { returns(T.nilable(Time)) }
        attr_accessor :rejected_at

        sig do
          params(
            reject_reason_additional_information: T.nilable(String),
            reject_reason_code: Symbol,
            rejected_at: T.nilable(Time)
          ).void
        end
        def initialize(reject_reason_additional_information:, reject_reason_code:, rejected_at:)
        end

        sig do
          override.returns(
            {
              reject_reason_additional_information: T.nilable(String),
              reject_reason_code: Symbol,
              rejected_at: T.nilable(Time)
            }
          )
        end
        def to_hash
        end

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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Submission < Increase::BaseModel
        sig { returns(T.nilable(Time)) }
        attr_accessor :submitted_at

        sig { returns(String) }
        attr_accessor :transaction_identification

        sig { params(submitted_at: T.nilable(Time), transaction_identification: String).void }
        def initialize(submitted_at:, transaction_identification:)
        end

        sig { override.returns({submitted_at: T.nilable(Time), transaction_identification: String}) }
        def to_hash
        end
      end

      class Type < Increase::Enum
        abstract!

        REAL_TIME_PAYMENTS_TRANSFER = :real_time_payments_transfer

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
