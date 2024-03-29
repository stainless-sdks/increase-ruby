# frozen_string_literal: true

module Increase
  module Models
    class WireDrawdownRequest < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] account_number_id
      required :account_number_id, String

      # @!attribute [rw] amount
      required :amount, Integer

      # @!attribute [rw] currency
      required :currency, String

      # @!attribute [rw] fulfillment_transaction_id
      required :fulfillment_transaction_id, String

      # @!attribute [rw] idempotency_key
      required :idempotency_key, String

      # @!attribute [rw] message_to_recipient
      required :message_to_recipient, String

      # @!attribute [rw] originator_address_line1
      required :originator_address_line1, String

      # @!attribute [rw] originator_address_line2
      required :originator_address_line2, String

      # @!attribute [rw] originator_address_line3
      required :originator_address_line3, String

      # @!attribute [rw] originator_name
      required :originator_name, String

      # @!attribute [rw] recipient_account_number
      required :recipient_account_number, String

      # @!attribute [rw] recipient_address_line1
      required :recipient_address_line1, String

      # @!attribute [rw] recipient_address_line2
      required :recipient_address_line2, String

      # @!attribute [rw] recipient_address_line3
      required :recipient_address_line3, String

      # @!attribute [rw] recipient_name
      required :recipient_name, String

      # @!attribute [rw] recipient_routing_number
      required :recipient_routing_number, String

      # @!attribute [rw] status
      required :status, Increase::Enum.new([:pending_submission, :pending_response, :fulfilled, :refused])

      # @!attribute [rw] submission
      required :submission, -> { Increase::Models::WireDrawdownRequest::Submission }

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:wire_drawdown_request])

      class Submission < BaseModel
        # @!attribute [rw] input_message_accountability_data
        required :input_message_accountability_data, String
      end
    end
  end
end
