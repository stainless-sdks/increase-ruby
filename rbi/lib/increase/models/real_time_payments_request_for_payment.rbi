# typed: strong

module Increase
  module Models
    class RealTimePaymentsRequestForPayment < Increase::BaseModel
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

      sig { returns(String) }
      def debtor_name
      end

      sig { params(_: String).returns(String) }
      def debtor_name=(_)
      end

      sig { returns(String) }
      def destination_account_number_id
      end

      sig { params(_: String).returns(String) }
      def destination_account_number_id=(_)
      end

      sig { returns(Date) }
      def expires_at
      end

      sig { params(_: Date).returns(Date) }
      def expires_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def fulfillment_transaction_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def fulfillment_transaction_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def idempotency_key
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def idempotency_key=(_)
      end

      sig { returns(T.nilable(Increase::Models::RealTimePaymentsRequestForPayment::Refusal)) }
      def refusal
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimePaymentsRequestForPayment::Refusal))
          .returns(T.nilable(Increase::Models::RealTimePaymentsRequestForPayment::Refusal))
      end
      def refusal=(_)
      end

      sig { returns(T.nilable(Increase::Models::RealTimePaymentsRequestForPayment::Rejection)) }
      def rejection
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimePaymentsRequestForPayment::Rejection))
          .returns(T.nilable(Increase::Models::RealTimePaymentsRequestForPayment::Rejection))
      end
      def rejection=(_)
      end

      sig { returns(String) }
      def remittance_information
      end

      sig { params(_: String).returns(String) }
      def remittance_information=(_)
      end

      sig { returns(String) }
      def source_account_number
      end

      sig { params(_: String).returns(String) }
      def source_account_number=(_)
      end

      sig { returns(String) }
      def source_routing_number
      end

      sig { params(_: String).returns(String) }
      def source_routing_number=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig { returns(T.nilable(Increase::Models::RealTimePaymentsRequestForPayment::Submission)) }
      def submission
      end

      sig do
        params(_: T.nilable(Increase::Models::RealTimePaymentsRequestForPayment::Submission))
          .returns(T.nilable(Increase::Models::RealTimePaymentsRequestForPayment::Submission))
      end
      def submission=(_)
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
          created_at: Time,
          currency: Symbol,
          debtor_name: String,
          destination_account_number_id: String,
          expires_at: Date,
          fulfillment_transaction_id: T.nilable(String),
          idempotency_key: T.nilable(String),
          refusal: T.nilable(Increase::Models::RealTimePaymentsRequestForPayment::Refusal),
          rejection: T.nilable(Increase::Models::RealTimePaymentsRequestForPayment::Rejection),
          remittance_information: String,
          source_account_number: String,
          source_routing_number: String,
          status: Symbol,
          submission: T.nilable(Increase::Models::RealTimePaymentsRequestForPayment::Submission),
          type: Symbol
        )
          .void
      end
      def initialize(
        id:,
        amount:,
        created_at:,
        currency:,
        debtor_name:,
        destination_account_number_id:,
        expires_at:,
        fulfillment_transaction_id:,
        idempotency_key:,
        refusal:,
        rejection:,
        remittance_information:,
        source_account_number:,
        source_routing_number:,
        status:,
        submission:,
        type:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              amount: Integer,
              created_at: Time,
              currency: Symbol,
              debtor_name: String,
              destination_account_number_id: String,
              expires_at: Date,
              fulfillment_transaction_id: T.nilable(String),
              idempotency_key: T.nilable(String),
              refusal: T.nilable(Increase::Models::RealTimePaymentsRequestForPayment::Refusal),
              rejection: T.nilable(Increase::Models::RealTimePaymentsRequestForPayment::Rejection),
              remittance_information: String,
              source_account_number: String,
              source_routing_number: String,
              status: Symbol,
              submission: T.nilable(Increase::Models::RealTimePaymentsRequestForPayment::Submission),
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

      class Refusal < Increase::BaseModel
        sig { returns(Symbol) }
        def refusal_reason_code
        end

        sig { params(_: Symbol).returns(Symbol) }
        def refusal_reason_code=(_)
        end

        sig { params(refusal_reason_code: Symbol).void }
        def initialize(refusal_reason_code:)
        end

        sig { override.returns({refusal_reason_code: Symbol}) }
        def to_hash
        end

        class RefusalReasonCode < Increase::Enum
          abstract!

          # The destination account is currently blocked from receiving transactions. Corresponds to the Real-Time Payments reason code `AC06`.
          ACCOUNT_BLOCKED = :account_blocked

          # Real-Time Payments transfers are not allowed to the destination account. Corresponds to the Real-Time Payments reason code `AG01`.
          TRANSACTION_FORBIDDEN = :transaction_forbidden

          # Real-Time Payments transfers are not enabled for the destination account. Corresponds to the Real-Time Payments reason code `AG03`.
          TRANSACTION_TYPE_NOT_SUPPORTED = :transaction_type_not_supported

          # The amount of the transfer is different than expected by the recipient. Corresponds to the Real-Time Payments reason code `AM09`.
          UNEXPECTED_AMOUNT = :unexpected_amount

          # The amount is higher than the recipient is authorized to send or receive. Corresponds to the Real-Time Payments reason code `AM14`.
          AMOUNT_EXCEEDS_BANK_LIMITS = :amount_exceeds_bank_limits

          # The debtor's address is required, but missing or invalid. Corresponds to the Real-Time Payments reason code `BE07`.
          INVALID_DEBTOR_ADDRESS = :invalid_debtor_address

          # The creditor's address is required, but missing or invalid. Corresponds to the Real-Time Payments reason code `BE04`.
          INVALID_CREDITOR_ADDRESS = :invalid_creditor_address

          # Creditor identifier incorrect. Corresponds to the Real-Time Payments reason code `CH11`.
          CREDITOR_IDENTIFIER_INCORRECT = :creditor_identifier_incorrect

          # The customer refused the request. Corresponds to the Real-Time Payments reason code `CUST`.
          REQUESTED_BY_CUSTOMER = :requested_by_customer

          # The order was rejected. Corresponds to the Real-Time Payments reason code `DS04`.
          ORDER_REJECTED = :order_rejected

          # The destination account holder is deceased. Corresponds to the Real-Time Payments reason code `MD07`.
          END_CUSTOMER_DECEASED = :end_customer_deceased

          # The customer has opted out of receiving requests for payments from this creditor. Corresponds to the Real-Time Payments reason code `SL12`.
          CUSTOMER_HAS_OPTED_OUT = :customer_has_opted_out

          # Some other error or issue has occurred.
          OTHER = :other

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class Rejection < Increase::BaseModel
        sig { returns(Symbol) }
        def reject_reason_code
        end

        sig { params(_: Symbol).returns(Symbol) }
        def reject_reason_code=(_)
        end

        sig { params(reject_reason_code: Symbol).void }
        def initialize(reject_reason_code:)
        end

        sig { override.returns({reject_reason_code: Symbol}) }
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

        # The request for payment is queued to be submitted to Real-Time Payments.
        PENDING_SUBMISSION = :pending_submission

        # The request for payment has been submitted and is pending a response from Real-Time Payments.
        PENDING_RESPONSE = :pending_response

        # The request for payment was rejected by the network or the recipient.
        REJECTED = :rejected

        # The request for payment was accepted by the recipient but has not yet been paid.
        ACCEPTED = :accepted

        # The request for payment was refused by the recipient.
        REFUSED = :refused

        # The request for payment was fulfilled by the receiver.
        FULFILLED = :fulfilled

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Submission < Increase::BaseModel
        sig { returns(String) }
        def payment_information_identification
        end

        sig { params(_: String).returns(String) }
        def payment_information_identification=(_)
        end

        sig { params(payment_information_identification: String).void }
        def initialize(payment_information_identification:)
        end

        sig { override.returns({payment_information_identification: String}) }
        def to_hash
        end
      end

      class Type < Increase::Enum
        abstract!

        REAL_TIME_PAYMENTS_REQUEST_FOR_PAYMENT = :real_time_payments_request_for_payment

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
