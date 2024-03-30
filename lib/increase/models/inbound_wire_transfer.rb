# frozen_string_literal: true

module Increase
  module Models
    class InboundWireTransfer < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] account_id
      required :account_id, String

      # @!attribute [rw] account_number_id
      required :account_number_id, String

      # @!attribute [rw] amount
      required :amount, Integer

      # @!attribute [rw] beneficiary_address_line1
      required :beneficiary_address_line1, String

      # @!attribute [rw] beneficiary_address_line2
      required :beneficiary_address_line2, String

      # @!attribute [rw] beneficiary_address_line3
      required :beneficiary_address_line3, String

      # @!attribute [rw] beneficiary_name
      required :beneficiary_name, String

      # @!attribute [rw] beneficiary_reference
      required :beneficiary_reference, String

      # @!attribute [rw] description
      required :description, String

      # @!attribute [rw] input_message_accountability_data
      required :input_message_accountability_data, String

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

      # @!attribute [rw] originator_to_beneficiary_information
      required :originator_to_beneficiary_information, String

      # @!attribute [rw] originator_to_beneficiary_information_line1
      required :originator_to_beneficiary_information_line1, String

      # @!attribute [rw] originator_to_beneficiary_information_line2
      required :originator_to_beneficiary_information_line2, String

      # @!attribute [rw] originator_to_beneficiary_information_line3
      required :originator_to_beneficiary_information_line3, String

      # @!attribute [rw] originator_to_beneficiary_information_line4
      required :originator_to_beneficiary_information_line4, String

      # @!attribute [rw] status
      required :status, Increase::Enum.new(:pending, :accepted, :declined, :reversed)

      # @!attribute [rw] type
      required :type, Increase::Enum.new(:inbound_wire_transfer)
    end
  end
end
