# frozen_string_literal: true

module Increase
  module Models
    class CheckTransfer < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] account_id
      required :account_id, String

      # @!attribute [rw] account_number
      required :account_number, String

      # @!attribute [rw] amount
      required :amount, Integer

      # @!attribute [rw] approval
      required :approval, -> { Increase::Models::CheckTransfer::Approval }

      # @!attribute [rw] cancellation
      required :cancellation, -> { Increase::Models::CheckTransfer::Cancellation }

      # @!attribute [rw] check_number
      required :check_number, String

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] currency
      required :currency, Increase::Enum.new(:CAD, :CHF, :EUR, :GBP, :JPY, :USD)

      # @!attribute [rw] deposit
      required :deposit, -> { Increase::Models::CheckTransfer::Deposit }

      # @!attribute [rw] fulfillment_method
      required :fulfillment_method, Increase::Enum.new(:physical_check, :third_party)

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] mailing
      required :mailing, -> { Increase::Models::CheckTransfer::Mailing }

      # @!attribute [rw] pending_transaction_id
      required :pending_transaction_id, String

      # @!attribute [rw] physical_check
      required :physical_check, -> { Increase::Models::CheckTransfer::PhysicalCheck }

      # @!attribute [rw] routing_number
      required :routing_number, String

      # @!attribute [rw] source_account_number_id
      required :source_account_number_id, String

      # @!attribute [rw] status
      required :status,
               Increase::Enum.new(
                 :pending_approval,
                 :pending_submission,
                 :pending_mailing,
                 :mailed,
                 :canceled,
                 :deposited,
                 :stopped,
                 :rejected,
                 :requires_attention,
                 :returned
               )

      # @!attribute [rw] stop_payment_request
      required :stop_payment_request, -> { Increase::Models::CheckTransfer::StopPaymentRequest }

      # @!attribute [rw] submission
      required :submission, -> { Increase::Models::CheckTransfer::Submission }

      # @!attribute [rw] type
      required :type, Increase::Enum.new(:check_transfer)

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

      class Deposit < BaseModel
        # @!attribute [rw] back_image_file_id
        required :back_image_file_id, String

        # @!attribute [rw] bank_of_first_deposit_routing_number
        required :bank_of_first_deposit_routing_number, String

        # @!attribute [rw] deposited_at
        required :deposited_at, String

        # @!attribute [rw] front_image_file_id
        required :front_image_file_id, String

        # @!attribute [rw] transaction_id
        required :transaction_id, String

        # @!attribute [rw] transfer_id
        required :transfer_id, String

        # @!attribute [rw] type
        required :type, Increase::Enum.new(:check_transfer_deposit)
      end

      class Mailing < BaseModel
        # @!attribute [rw] image_id
        required :image_id, String

        # @!attribute [rw] mailed_at
        required :mailed_at, String
      end

      class PhysicalCheck < BaseModel
        # @!attribute [rw] mailing_address
        required :mailing_address,
                 lambda {
                   Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress
                 }

        # @!attribute [rw] memo
        required :memo, String

        # @!attribute [rw] note
        required :note, String

        # @!attribute [rw] recipient_name
        required :recipient_name, String

        # @!attribute [rw] return_address
        required :return_address, -> { Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress }

        class MailingAddress < BaseModel
          # @!attribute [rw] city
          required :city, String

          # @!attribute [rw] line1
          required :line1, String

          # @!attribute [rw] line2
          required :line2, String

          # @!attribute [rw] name_
          required :name_, String

          # @!attribute [rw] postal_code
          required :postal_code, String

          # @!attribute [rw] state
          required :state, String
        end

        class ReturnAddress < BaseModel
          # @!attribute [rw] city
          required :city, String

          # @!attribute [rw] line1
          required :line1, String

          # @!attribute [rw] line2
          required :line2, String

          # @!attribute [rw] name_
          required :name_, String

          # @!attribute [rw] postal_code
          required :postal_code, String

          # @!attribute [rw] state
          required :state, String
        end
      end

      class StopPaymentRequest < BaseModel
        # @!attribute [rw] reason
        required :reason,
                 Increase::Enum.new(
                   :mail_delivery_failed,
                   :rejected_by_increase,
                   :not_authorized,
                   :unknown
                 )

        # @!attribute [rw] requested_at
        required :requested_at, String

        # @!attribute [rw] transfer_id
        required :transfer_id, String

        # @!attribute [rw] type
        required :type, Increase::Enum.new(:check_transfer_stop_payment_request)
      end

      class Submission < BaseModel
        # @!attribute [rw] submitted_at
        required :submitted_at, String
      end
    end
  end
end
