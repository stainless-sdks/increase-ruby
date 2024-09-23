# frozen_string_literal: true

module Increase
  module Models
    class RealTimePaymentsRequestForPayment < BaseModel
      # @!attribute [rw] id
      #   The Real-Time Payments Request for Payment's identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] amount
      #   The transfer amount in USD cents.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which the request for payment was created.
      #   @return [DateTime]
      required :created_at, DateTime

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's currency. For real-time payments transfers this is always equal to `USD`.
      #   One of the constants defined in {Increase::Models::RealTimePaymentsRequestForPayment::Currency}
      #   @return [Symbol]
      required :currency, enum: -> { Increase::Models::RealTimePaymentsRequestForPayment::Currency }

      # @!attribute [rw] debtor_name
      #   The name of the recipient the sender is requesting a transfer from.
      #   @return [String]
      required :debtor_name, String

      # @!attribute [rw] destination_account_number_id
      #   The Account Number in which a successful transfer will arrive.
      #   @return [String]
      required :destination_account_number_id, String

      # @!attribute [rw] expires_at
      #   The expiration time for this request, in UTC. The requestee will not be able to pay after this date.
      #   @return [Date]
      required :expires_at, Date

      # @!attribute [rw] fulfillment_transaction_id
      #   The transaction that fulfilled this request.
      #   @return [String]
      required :fulfillment_transaction_id, String

      # @!attribute [rw] idempotency_key
      #   The idempotency key you chose for this object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #   @return [String]
      required :idempotency_key, String

      # @!attribute [rw] refusal
      #   If the request for payment is refused by the destination financial institution or the receiving customer, this will contain supplemental details.
      #   @return [Increase::Models::RealTimePaymentsRequestForPayment::Refusal]
      required :refusal, -> { Increase::Models::RealTimePaymentsRequestForPayment::Refusal }

      # @!attribute [rw] rejection
      #   If the request for payment is rejected by Real-Time Payments or the destination financial institution, this will contain supplemental details.
      #   @return [Increase::Models::RealTimePaymentsRequestForPayment::Rejection]
      required :rejection, -> { Increase::Models::RealTimePaymentsRequestForPayment::Rejection }

      # @!attribute [rw] remittance_information
      #   Unstructured information that will show on the recipient's bank statement.
      #   @return [String]
      required :remittance_information, String

      # @!attribute [rw] source_account_number
      #   The account number the request is sent to.
      #   @return [String]
      required :source_account_number, String

      # @!attribute [rw] source_routing_number
      #   The receiver's American Bankers' Association (ABA) Routing Transit Number (RTN).
      #   @return [String]
      required :source_routing_number, String

      # @!attribute [rw] status
      #   The lifecycle status of the request for payment.
      #   One of the constants defined in {Increase::Models::RealTimePaymentsRequestForPayment::Status}
      #   @return [Symbol]
      required :status, enum: -> { Increase::Models::RealTimePaymentsRequestForPayment::Status }

      # @!attribute [rw] submission
      #   After the request for payment is submitted to Real-Time Payments, this will contain supplemental details.
      #   @return [Increase::Models::RealTimePaymentsRequestForPayment::Submission]
      required :submission, -> { Increase::Models::RealTimePaymentsRequestForPayment::Submission }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `real_time_payments_request_for_payment`.
      #   One of the constants defined in {Increase::Models::RealTimePaymentsRequestForPayment::Type}
      #   @return [Symbol]
      required :type, enum: -> { Increase::Models::RealTimePaymentsRequestForPayment::Type }

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's currency. For real-time payments transfers this is always equal to `USD`.
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

      class Refusal < BaseModel
        # @!attribute [rw] refusal_reason_code
        #   The reason the request for payment was refused as provided by the recipient bank or the customer.
        #   One of the constants defined in {Increase::Models::RealTimePaymentsRequestForPayment::Refusal::RefusalReasonCode}
        #   @return [Symbol]
        required :refusal_reason_code,
                 enum: -> { Increase::Models::RealTimePaymentsRequestForPayment::Refusal::RefusalReasonCode }

        # The reason the request for payment was refused as provided by the recipient bank or the customer.
        class RefusalReasonCode < Increase::Enum
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
        end
      end

      class Rejection < BaseModel
        # @!attribute [rw] reject_reason_code
        #   The reason the request for payment was rejected as provided by the recipient bank or the Real-Time Payments network.
        #   One of the constants defined in {Increase::Models::RealTimePaymentsRequestForPayment::Rejection::RejectReasonCode}
        #   @return [Symbol]
        required :reject_reason_code,
                 enum: -> { Increase::Models::RealTimePaymentsRequestForPayment::Rejection::RejectReasonCode }

        # The reason the request for payment was rejected as provided by the recipient bank or the Real-Time Payments network.
        class RejectReasonCode < Increase::Enum
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
        end
      end

      # The lifecycle status of the request for payment.
      class Status < Increase::Enum
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
      end

      class Submission < BaseModel
        # @!attribute [rw] payment_information_identification
        #   The Real-Time Payments payment information identification of the request.
        #   @return [String]
        required :payment_information_identification, String
      end

      # A constant representing the object's type. For this resource it will always be `real_time_payments_request_for_payment`.
      class Type < Increase::Enum
        REAL_TIME_PAYMENTS_REQUEST_FOR_PAYMENT = :real_time_payments_request_for_payment
      end
    end
  end
end
