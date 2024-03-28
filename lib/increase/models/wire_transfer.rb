# frozen_string_literal: true

module Increase
  module Models
    class WireTransfer
      class Approval
        extend Increase::Model

        include Increase::Model::Instance

        # @!attribute [rw] approved_at
        required :approved_at, String

        # @!attribute [rw] approved_by
        required :approved_by, String
      end

      class Cancellation
        extend Increase::Model

        include Increase::Model::Instance

        # @!attribute [rw] canceled_at
        required :canceled_at, String

        # @!attribute [rw] canceled_by
        required :canceled_by, String
      end

      class Reversal
        extend Increase::Model

        include Increase::Model::Instance

        # @!attribute [rw] amount
        required :amount, Integer

        # @!attribute [rw] created_at
        required :created_at, String

        # @!attribute [rw] description
        required :description, String

        # @!attribute [rw] financial_institution_to_financial_institution_information
        required :financial_institution_to_financial_institution_information, String

        # @!attribute [rw] input_cycle_date
        required :input_cycle_date, String

        # @!attribute [rw] input_message_accountability_data
        required :input_message_accountability_data, String

        # @!attribute [rw] input_sequence_number
        required :input_sequence_number, String

        # @!attribute [rw] input_source
        required :input_source, String

        # @!attribute [rw] originator_routing_number
        required :originator_routing_number, String

        # @!attribute [rw] previous_message_input_cycle_date
        required :previous_message_input_cycle_date, String

        # @!attribute [rw] previous_message_input_message_accountability_data
        required :previous_message_input_message_accountability_data, String

        # @!attribute [rw] previous_message_input_sequence_number
        required :previous_message_input_sequence_number, String

        # @!attribute [rw] previous_message_input_source
        required :previous_message_input_source, String

        # @!attribute [rw] receiver_financial_institution_information
        required :receiver_financial_institution_information, String

        # @!attribute [rw] transaction_id
        required :transaction_id, String

        # @!attribute [rw] wire_transfer_id
        required :wire_transfer_id, String
      end

      class Submission
        extend Increase::Model

        include Increase::Model::Instance

        # @!attribute [rw] input_message_accountability_data
        required :input_message_accountability_data, String

        # @!attribute [rw] submitted_at
        required :submitted_at, String
      end

      extend Increase::Model

      include Increase::Model::Instance

      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] account_id
      required :account_id, String

      # @!attribute [rw] account_number
      required :account_number, String

      # @!attribute [rw] amount
      required :amount, Integer

      # @!attribute [rw] approval
      required :approval, -> { Increase::Models::WireTransfer::Approval }

      # @!attribute [rw] beneficiary_address_line1
      required :beneficiary_address_line1, String

      # @!attribute [rw] beneficiary_address_line2
      required :beneficiary_address_line2, String

      # @!attribute [rw] beneficiary_address_line3
      required :beneficiary_address_line3, String

      # @!attribute [rw] beneficiary_name
      required :beneficiary_name, String

      # @!attribute [rw] cancellation
      required :cancellation, -> { Increase::Models::WireTransfer::Cancellation }

      # @!attribute [rw] created_at
      required :created_at, String

      # @!attribute [rw] currency
      required :currency, Increase::Enum.new([:CAD, :CHF, :EUR, :GBP, :JPY, :USD])

      # @!attribute [rw] external_account_id
      required :external_account_id, String

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] message_to_recipient
      required :message_to_recipient, String

      # @!attribute [rw] network
      required :network, Increase::Enum.new([:wire])

      # @!attribute [rw] originator_address_line1
      required :originator_address_line1, String

      # @!attribute [rw] originator_address_line2
      required :originator_address_line2, String

      # @!attribute [rw] originator_address_line3
      required :originator_address_line3, String

      # @!attribute [rw] originator_name
      required :originator_name, String

      # @!attribute [rw] pending_transaction_id
      required :pending_transaction_id, String

      # @!attribute [rw] reversal
      required :reversal, -> { Increase::Models::WireTransfer::Reversal }

      # @!attribute [rw] routing_number
      required :routing_number, String

      # @!attribute [rw] status
      required :status,
               Increase::Enum.new(
                 [
                   :canceled,
                   :requires_attention,
                   :pending_reviewing,
                   :pending_approval,
                   :rejected,
                   :reversed,
                   :complete,
                   :pending_creating
                 ]
               )

      # @!attribute [rw] submission
      required :submission, -> { Increase::Models::WireTransfer::Submission }

      # @!attribute [rw] transaction_id
      required :transaction_id, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:wire_transfer])
    end
  end
end
