# frozen_string_literal: true

module Increase
  module Models
    class RealTimePaymentsRequestForPayment
      class Refusal
        extend Increase::Model

        include Increase::Model::Instance

        # @!attribute [rw] refusal_reason_code
        required :refusal_reason_code,
                 Increase::Enum.new(
                   [
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
                   ]
                 )
      end

      class Rejection
        extend Increase::Model

        include Increase::Model::Instance

        # @!attribute [rw] reject_reason_code
        required :reject_reason_code,
                 Increase::Enum.new(
                   [
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
                   ]
                 )
      end

      class Submission
        extend Increase::Model

        include Increase::Model::Instance

        # @!attribute [rw] payment_information_identification
        required :payment_information_identification, String
      end

      extend Increase::Model

      include Increase::Model::Instance

      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] amount
      required :amount, Integer

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] currency
      required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

      # @!attribute [rw] debtor_name
      required :debtor_name, String

      # @!attribute [rw] destination_account_number_id
      required :destination_account_number_id, String

      # @!attribute [rw] expires_at
      required :expires_at, String

      # @!attribute [rw] fulfillment_transaction_id
      required :fulfillment_transaction_id, String

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] refusal
      required :refusal, -> { Increase::Models::RealTimePaymentsRequestForPayment::Refusal }

      # @!attribute [rw] rejection
      required :rejection, -> { Increase::Models::RealTimePaymentsRequestForPayment::Rejection }

      # @!attribute [rw] remittance_information
      required :remittance_information, String

      # @!attribute [rw] source_account_number
      required :source_account_number, String

      # @!attribute [rw] source_routing_number
      required :source_routing_number, String

      # @!attribute [rw] status
      required :status,
               Increase::Enum.new(
                 [
                   :pending_submission,
                   :pending_response,
                   :rejected,
                   :accepted,
                   :refused,
                   :fulfilled
                 ]
               )

      # @!attribute [rw] submission
      required :submission, -> { Increase::Models::RealTimePaymentsRequestForPayment::Submission }

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:real_time_payments_request_for_payment])
    end
  end
end
