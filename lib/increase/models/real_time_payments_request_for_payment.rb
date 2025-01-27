# frozen_string_literal: true

module Increase
  module Models
    # @example
    # ```ruby
    # real_time_payments_request_for_payment => {
    #   id: String,
    #   amount: Integer,
    #   created_at: Time,
    #   currency: Increase::Models::RealTimePaymentsRequestForPayment::Currency,
    #   debtor_name: String,
    #   **_
    # }
    # ```
    class RealTimePaymentsRequestForPayment < Increase::BaseModel
      # @!attribute id
      #   The Real-Time Payments Request for Payment's identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   The transfer amount in USD cents.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute created_at
      #   The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time at which
      #     the request for payment was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's
      #     currency. For real-time payments transfers this is always equal to `USD`.
      #
      #   @return [Symbol, Increase::Models::RealTimePaymentsRequestForPayment::Currency]
      required :currency, enum: -> { Increase::Models::RealTimePaymentsRequestForPayment::Currency }

      # @!attribute debtor_name
      #   The name of the recipient the sender is requesting a transfer from.
      #
      #   @return [String]
      required :debtor_name, String

      # @!attribute destination_account_number_id
      #   The Account Number in which a successful transfer will arrive.
      #
      #   @return [String]
      required :destination_account_number_id, String

      # @!attribute expires_at
      #   The expiration time for this request, in UTC. The requestee will not be able to
      #     pay after this date.
      #
      #   @return [Date]
      required :expires_at, Date

      # @!attribute fulfillment_transaction_id
      #   The transaction that fulfilled this request.
      #
      #   @return [String, nil]
      required :fulfillment_transaction_id, String, nil?: true

      # @!attribute idempotency_key
      #   The idempotency key you chose for this object. This value is unique across
      #     Increase and is used to ensure that a request is only processed once. Learn more
      #     about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute refusal
      #   If the request for payment is refused by the destination financial institution
      #     or the receiving customer, this will contain supplemental details.
      #
      #   @return [Increase::Models::RealTimePaymentsRequestForPayment::Refusal, nil]
      required :refusal, -> { Increase::Models::RealTimePaymentsRequestForPayment::Refusal }, nil?: true

      # @!attribute rejection
      #   If the request for payment is rejected by Real-Time Payments or the destination
      #     financial institution, this will contain supplemental details.
      #
      #   @return [Increase::Models::RealTimePaymentsRequestForPayment::Rejection, nil]
      required :rejection, -> { Increase::Models::RealTimePaymentsRequestForPayment::Rejection }, nil?: true

      # @!attribute remittance_information
      #   Unstructured information that will show on the recipient's bank statement.
      #
      #   @return [String]
      required :remittance_information, String

      # @!attribute source_account_number
      #   The account number the request is sent to.
      #
      #   @return [String]
      required :source_account_number, String

      # @!attribute source_routing_number
      #   The receiver's American Bankers' Association (ABA) Routing Transit Number (RTN).
      #
      #   @return [String]
      required :source_routing_number, String

      # @!attribute status
      #   The lifecycle status of the request for payment.
      #
      #   @return [Symbol, Increase::Models::RealTimePaymentsRequestForPayment::Status]
      required :status, enum: -> { Increase::Models::RealTimePaymentsRequestForPayment::Status }

      # @!attribute submission
      #   After the request for payment is submitted to Real-Time Payments, this will
      #     contain supplemental details.
      #
      #   @return [Increase::Models::RealTimePaymentsRequestForPayment::Submission, nil]
      required :submission, -> { Increase::Models::RealTimePaymentsRequestForPayment::Submission }, nil?: true

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be
      #     `real_time_payments_request_for_payment`.
      #
      #   @return [Symbol, Increase::Models::RealTimePaymentsRequestForPayment::Type]
      required :type, enum: -> { Increase::Models::RealTimePaymentsRequestForPayment::Type }

      # @!parse
      #   # Real-Time Payments transfers move funds, within seconds, between your Increase
      #   #   account and any other account on the Real-Time Payments network. A request for
      #   #   payment is a request to the receiver to send funds to your account. The
      #   #   permitted uses of Requests For Payment are limited by the Real-Time Payments
      #   #   network to business-to-business payments and transfers between two accounts at
      #   #   different banks owned by the same individual. Please contact
      #   #   [support@increase.com](mailto:support@increase.com) to enable this API for your
      #   #   team.
      #   #
      #   # @param id [String]
      #   # @param amount [Integer]
      #   # @param created_at [Time]
      #   # @param currency [Symbol, Increase::Models::RealTimePaymentsRequestForPayment::Currency]
      #   # @param debtor_name [String]
      #   # @param destination_account_number_id [String]
      #   # @param expires_at [Date]
      #   # @param fulfillment_transaction_id [String, nil]
      #   # @param idempotency_key [String, nil]
      #   # @param refusal [Increase::Models::RealTimePaymentsRequestForPayment::Refusal, nil]
      #   # @param rejection [Increase::Models::RealTimePaymentsRequestForPayment::Rejection, nil]
      #   # @param remittance_information [String]
      #   # @param source_account_number [String]
      #   # @param source_routing_number [String]
      #   # @param status [Symbol, Increase::Models::RealTimePaymentsRequestForPayment::Status]
      #   # @param submission [Increase::Models::RealTimePaymentsRequestForPayment::Submission, nil]
      #   # @param type [Symbol, Increase::Models::RealTimePaymentsRequestForPayment::Type]
      #   #
      #   def initialize(
      #     id:,
      #     amount:,
      #     created_at:,
      #     currency:,
      #     debtor_name:,
      #     destination_account_number_id:,
      #     expires_at:,
      #     fulfillment_transaction_id:,
      #     idempotency_key:,
      #     refusal:,
      #     rejection:,
      #     remittance_information:,
      #     source_account_number:,
      #     source_routing_number:,
      #     status:,
      #     submission:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's
      #   currency. For real-time payments transfers this is always equal to `USD`.
      #
      # @example
      # ```ruby
      # case currency
      # in :CAD
      #   # ...
      # in :CHF
      #   # ...
      # in :EUR
      #   # ...
      # in :GBP
      #   # ...
      # in :JPY
      #   # ...
      # in ...
      #   #...
      # end
      # ```
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

        finalize!
      end

      # @example
      # ```ruby
      # refusal => {
      #   refusal_reason_code: Increase::Models::RealTimePaymentsRequestForPayment::Refusal::RefusalReasonCode
      # }
      # ```
      class Refusal < Increase::BaseModel
        # @!attribute refusal_reason_code
        #   The reason the request for payment was refused as provided by the recipient bank
        #     or the customer.
        #
        #   @return [Symbol, Increase::Models::RealTimePaymentsRequestForPayment::Refusal::RefusalReasonCode]
        required :refusal_reason_code,
                 enum: -> { Increase::Models::RealTimePaymentsRequestForPayment::Refusal::RefusalReasonCode }

        # @!parse
        #   # If the request for payment is refused by the destination financial institution
        #   #   or the receiving customer, this will contain supplemental details.
        #   #
        #   # @param refusal_reason_code [Symbol, Increase::Models::RealTimePaymentsRequestForPayment::Refusal::RefusalReasonCode]
        #   #
        #   def initialize(refusal_reason_code:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # The reason the request for payment was refused as provided by the recipient bank
        #   or the customer.
        #
        # @example
        # ```ruby
        # case refusal_reason_code
        # in :account_blocked
        #   # ...
        # in :transaction_forbidden
        #   # ...
        # in :transaction_type_not_supported
        #   # ...
        # in :unexpected_amount
        #   # ...
        # in :amount_exceeds_bank_limits
        #   # ...
        # in ...
        #   #...
        # end
        # ```
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

          finalize!
        end
      end

      # @example
      # ```ruby
      # rejection => {
      #   reject_reason_code: Increase::Models::RealTimePaymentsRequestForPayment::Rejection::RejectReasonCode
      # }
      # ```
      class Rejection < Increase::BaseModel
        # @!attribute reject_reason_code
        #   The reason the request for payment was rejected as provided by the recipient
        #     bank or the Real-Time Payments network.
        #
        #   @return [Symbol, Increase::Models::RealTimePaymentsRequestForPayment::Rejection::RejectReasonCode]
        required :reject_reason_code,
                 enum: -> { Increase::Models::RealTimePaymentsRequestForPayment::Rejection::RejectReasonCode }

        # @!parse
        #   # If the request for payment is rejected by Real-Time Payments or the destination
        #   #   financial institution, this will contain supplemental details.
        #   #
        #   # @param reject_reason_code [Symbol, Increase::Models::RealTimePaymentsRequestForPayment::Rejection::RejectReasonCode]
        #   #
        #   def initialize(reject_reason_code:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # The reason the request for payment was rejected as provided by the recipient
        #   bank or the Real-Time Payments network.
        #
        # @example
        # ```ruby
        # case reject_reason_code
        # in :account_closed
        #   # ...
        # in :account_blocked
        #   # ...
        # in :invalid_creditor_account_type
        #   # ...
        # in :invalid_creditor_account_number
        #   # ...
        # in :invalid_creditor_financial_institution_identifier
        #   # ...
        # in ...
        #   #...
        # end
        # ```
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

          finalize!
        end
      end

      # The lifecycle status of the request for payment.
      #
      # @example
      # ```ruby
      # case status
      # in :pending_submission
      #   # ...
      # in :pending_response
      #   # ...
      # in :rejected
      #   # ...
      # in :accepted
      #   # ...
      # in :refused
      #   # ...
      # in ...
      #   #...
      # end
      # ```
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

        finalize!
      end

      # @example
      # ```ruby
      # submission => {
      #   payment_information_identification: String
      # }
      # ```
      class Submission < Increase::BaseModel
        # @!attribute payment_information_identification
        #   The Real-Time Payments payment information identification of the request.
        #
        #   @return [String]
        required :payment_information_identification, String

        # @!parse
        #   # After the request for payment is submitted to Real-Time Payments, this will
        #   #   contain supplemental details.
        #   #
        #   # @param payment_information_identification [String]
        #   #
        #   def initialize(payment_information_identification:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void
      end

      # A constant representing the object's type. For this resource it will always be
      #   `real_time_payments_request_for_payment`.
      #
      # @example
      # ```ruby
      # case type
      # in :real_time_payments_request_for_payment
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        REAL_TIME_PAYMENTS_REQUEST_FOR_PAYMENT = :real_time_payments_request_for_payment

        finalize!
      end
    end
  end
end
