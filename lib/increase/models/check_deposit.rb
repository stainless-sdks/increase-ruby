# frozen_string_literal: true

module Increase
  module Models
    class CheckDeposit < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] account_id
      required :account_id, String

      # @!attribute [rw] amount
      required :amount, Integer

      # @!attribute [rw] back_image_file_id
      required :back_image_file_id, String

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] currency
      required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

      # @!attribute [rw] deposit_acceptance
      required :deposit_acceptance, -> { Increase::Models::CheckDeposit::DepositAcceptance }

      # @!attribute [rw] deposit_rejection
      required :deposit_rejection, -> { Increase::Models::CheckDeposit::DepositRejection }

      # @!attribute [rw] deposit_return
      required :deposit_return, -> { Increase::Models::CheckDeposit::DepositReturn }

      # @!attribute [rw] deposit_submission
      required :deposit_submission, -> { Increase::Models::CheckDeposit::DepositSubmission }

      # @!attribute [rw] front_image_file_id
      required :front_image_file_id, String

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] status
      required :status, Increase::Enum.new(:pending, :submitted, :rejected, :returned)

      # @!attribute [rw] transaction_id
      required :transaction_id, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new(:check_deposit)

      class DepositAcceptance < BaseModel
        # @!attribute [rw] account_number
        required :account_number, String

        # @!attribute [rw] amount
        required :amount, Integer

        # @!attribute [rw] auxiliary_on_us
        required :auxiliary_on_us, String

        # @!attribute [rw] check_deposit_id
        required :check_deposit_id, String

        # @!attribute [rw] currency
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] routing_number
        required :routing_number, String

        # @!attribute [rw] serial_number
        required :serial_number, String
      end

      class DepositRejection < BaseModel
        # @!attribute [rw] amount
        required :amount, Integer

        # @!attribute [rw] currency
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] reason
        required :reason,
                 Increase::Enum.new(
                   :incomplete_image,
                   :duplicate,
                   :poor_image_quality,
                   :incorrect_amount,
                   :incorrect_recipient,
                   :not_eligible_for_mobile_deposit,
                   :missing_required_data_elements,
                   :suspected_fraud,
                   :deposit_window_expired,
                   :unknown
                 )

        # @!attribute [rw] rejected_at
        required :rejected_at, String
      end

      class DepositReturn < BaseModel
        # @!attribute [rw] amount
        required :amount, Integer

        # @!attribute [rw] check_deposit_id
        required :check_deposit_id, String

        # @!attribute [rw] currency
        required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

        # @!attribute [rw] return_reason
        required :return_reason,
                 Increase::Enum.new(
                   :ach_conversion_not_supported,
                   :closed_account,
                   :duplicate_submission,
                   :insufficient_funds,
                   :no_account,
                   :not_authorized,
                   :stale_dated,
                   :stop_payment,
                   :unknown_reason,
                   :unmatched_details,
                   :unreadable_image,
                   :endorsement_irregular,
                   :altered_or_fictitious_item,
                   :frozen_or_blocked_account,
                   :post_dated,
                   :endorsement_missing,
                   :signature_missing,
                   :stop_payment_suspect,
                   :unusable_image,
                   :image_fails_security_check,
                   :cannot_determine_amount,
                   :signature_irregular,
                   :non_cash_item,
                   :unable_to_process,
                   :item_exceeds_dollar_limit,
                   :branch_or_account_sold
                 )

        # @!attribute [rw] returned_at
        required :returned_at, String

        # @!attribute [rw] transaction_id
        required :transaction_id, String
      end

      class DepositSubmission < BaseModel
        # @!attribute [rw] submitted_at
        required :submitted_at, String
      end
    end
  end
end
