# frozen_string_literal: true

module Increase
  module Models
    class RealTimePaymentsTransfer < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] account_id
      required :account_id, String

      # @!attribute [rw] amount
      required :amount, Integer

      # @!attribute [rw] approval
      required :approval, -> { Increase::Models::RealTimePaymentsTransfer::Approval }

      # @!attribute [rw] cancellation
      required :cancellation, -> { Increase::Models::RealTimePaymentsTransfer::Cancellation }

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] creditor_name
      required :creditor_name, String

      # @!attribute [rw] currency
      required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

      # @!attribute [rw] debtor_name
      required :debtor_name, String

      # @!attribute [rw] destination_account_number
      required :destination_account_number, String

      # @!attribute [rw] destination_routing_number
      required :destination_routing_number, String

      # @!attribute [rw] external_account_id
      required :external_account_id, String

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] pending_transaction_id
      required :pending_transaction_id, String

      # @!attribute [rw] rejection
      required :rejection, -> { Increase::Models::RealTimePaymentsTransfer::Rejection }

      # @!attribute [rw] remittance_information
      required :remittance_information, String

      # @!attribute [rw] source_account_number_id
      required :source_account_number_id, String

      # @!attribute [rw] status
      required :status,
               Increase::Enum.new(
                 :pending_approval,
                 :canceled,
                 :pending_reviewing,
                 :pending_submission,
                 :submitted,
                 :complete,
                 :rejected,
                 :requires_attention
               )

      # @!attribute [rw] submission
      required :submission, -> { Increase::Models::RealTimePaymentsTransfer::Submission }

      # @!attribute [rw] transaction_id
      required :transaction_id, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new(:real_time_payments_transfer)

      # @!attribute [rw] ultimate_creditor_name
      required :ultimate_creditor_name, String

      # @!attribute [rw] ultimate_debtor_name
      required :ultimate_debtor_name, String

      class Approval < BaseModel
        # @!attribute [rw] approved_at
        required :approved_at, String

        # @!attribute [rw] approved_by
        required :approved_by, String
      end

      class Cancellation < BaseModel
        # @!attribute [rw] canceled_at
        required :canceled_at, String

        # @!attribute [rw] canceled_by
        required :canceled_by, String
      end

      class Rejection < BaseModel
        # @!attribute [rw] reject_reason_additional_information
        required :reject_reason_additional_information, String

        # @!attribute [rw] reject_reason_code
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

        # @!attribute [rw] rejected_at
        required :rejected_at, String
      end

      class Submission < BaseModel
        # @!attribute [rw] submitted_at
        required :submitted_at, String

        # @!attribute [rw] transaction_identification
        required :transaction_identification, String
      end
    end
  end
end
