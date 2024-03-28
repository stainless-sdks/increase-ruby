# frozen_string_literal: true

module Increase
  module Models
    class InboundWireDrawdownRequest < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] amount
      required :amount, Integer

      # @!attribute [rw] beneficiary_account_number
      required :beneficiary_account_number, String

      # @!attribute [rw] beneficiary_address_line1
      required :beneficiary_address_line1, String

      # @!attribute [rw] beneficiary_address_line2
      required :beneficiary_address_line2, String

      # @!attribute [rw] beneficiary_address_line3
      required :beneficiary_address_line3, String

      # @!attribute [rw] beneficiary_name
      required :beneficiary_name, String

      # @!attribute [rw] beneficiary_routing_number
      required :beneficiary_routing_number, String

      # @!attribute [rw] currency
      required :currency, String

      # @!attribute [rw] message_to_recipient
      required :message_to_recipient, String

      # @!attribute [rw] originator_account_number
      required :originator_account_number, String

      # @!attribute [rw] originator_address_line1
      required :originator_address_line1, String

      # @!attribute [rw] originator_address_line2
      required :originator_address_line2, String

      # @!attribute [rw] originator_address_line3
      required :originator_address_line3, String

      # @!attribute [rw] originator_name
      required :originator_name, String

      # @!attribute [rw] originator_routing_number
      required :originator_routing_number, String

      # @!attribute [rw] originator_to_beneficiary_information_line1
      required :originator_to_beneficiary_information_line1, String

      # @!attribute [rw] originator_to_beneficiary_information_line2
      required :originator_to_beneficiary_information_line2, String

      # @!attribute [rw] originator_to_beneficiary_information_line3
      required :originator_to_beneficiary_information_line3, String

      # @!attribute [rw] originator_to_beneficiary_information_line4
      required :originator_to_beneficiary_information_line4, String

      # @!attribute [rw] recipient_account_number_id
      required :recipient_account_number_id, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:inbound_wire_drawdown_request])
    end
  end
end
