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
      #   @return [String]
      required :created_at, String

      # @!attribute [rw] currency
      #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the transfer's currency. For real-time payments transfers this is always equal to `USD`.
      #   @return [Symbol]
      required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

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
      #   @return [String]
      required :expires_at, String

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
      #   @return [Symbol]
      required :status,
               Increase::Enum.new(:pending_submission, :pending_response, :rejected, :accepted, :refused, :fulfilled)

      # @!attribute [rw] submission
      #   After the request for payment is submitted to Real-Time Payments, this will contain supplemental details.
      #   @return [Increase::Models::RealTimePaymentsRequestForPayment::Submission]
      required :submission, -> { Increase::Models::RealTimePaymentsRequestForPayment::Submission }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `real_time_payments_request_for_payment`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:real_time_payments_request_for_payment)

      class Refusal < BaseModel
        # @!attribute [rw] refusal_reason_code
        #   The reason the request for payment was refused as provided by the recipient bank or the customer.
        #   @return [Symbol]
        required :refusal_reason_code,
                 Increase::Enum.new(
                   :account_blocked,
                   :transaction_forbidden,
                   :transaction_type_not_supported,
                   :unexpected_amount,
                   :amount_exceeds_bank_limits,
                   :invalid_debtor_address,
                   :invalid_creditor_address,
                   :creditor_identifier_incorrect,
                   :requested_by_customer,
                   :order_rejected,
                   :end_customer_deceased,
                   :customer_has_opted_out,
                   :other
                 )
      end

      class Rejection < BaseModel
        # @!attribute [rw] reject_reason_code
        #   The reason the request for payment was rejected as provided by the recipient bank or the Real-Time Payments network.
        #   @return [Symbol]
        required :reject_reason_code,
                 Increase::Enum.new(
                   :account_closed,
                   :account_blocked,
                   :invalid_creditor_account_type,
                   :invalid_creditor_account_number,
                   :invalid_creditor_financial_institution_identifier,
                   :end_customer_deceased,
                   :narrative,
                   :transaction_forbidden,
                   :transaction_type_not_supported,
                   :unexpected_amount,
                   :amount_exceeds_bank_limits,
                   :invalid_creditor_address,
                   :unknown_end_customer,
                   :invalid_debtor_address,
                   :timeout,
                   :unsupported_message_for_recipient,
                   :recipient_connection_not_available,
                   :real_time_payments_suspended,
                   :instructed_agent_signed_off,
                   :processing_error,
                   :other
                 )
      end

      class Submission < BaseModel
        # @!attribute [rw] payment_information_identification
        #   The Real-Time Payments payment information identification of the request.
        #   @return [String]
        required :payment_information_identification, String
      end
    end
  end
end
