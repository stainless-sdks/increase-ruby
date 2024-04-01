# frozen_string_literal: true

module Increase
  module Models
    class InboundWireTransfer < BaseModel
      # @!attribute [rw] id
      #   The inbound wire transfer's identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] account_id
      #   The Account to which the transfer belongs.
      #   @return [String]
      required :account_id, String

      # @!attribute [rw] account_number_id
      #   The identifier of the Account Number to which this transfer was sent.
      #   @return [String]
      required :account_number_id, String

      # @!attribute [rw] amount
      #   The amount in USD cents.
      #   @return [Integer]
      required :amount, Integer

      # @!attribute [rw] beneficiary_address_line1
      #   A free-form address field set by the sender.
      #   @return [String]
      required :beneficiary_address_line1, String

      # @!attribute [rw] beneficiary_address_line2
      #   A free-form address field set by the sender.
      #   @return [String]
      required :beneficiary_address_line2, String

      # @!attribute [rw] beneficiary_address_line3
      #   A free-form address field set by the sender.
      #   @return [String]
      required :beneficiary_address_line3, String

      # @!attribute [rw] beneficiary_name
      #   A name set by the sender.
      #   @return [String]
      required :beneficiary_name, String

      # @!attribute [rw] beneficiary_reference
      #   A free-form reference string set by the sender, to help identify the transfer.
      #   @return [String]
      required :beneficiary_reference, String

      # @!attribute [rw] description
      #   An Increase-constructed description of the transfer.
      #   @return [String]
      required :description, String

      # @!attribute [rw] input_message_accountability_data
      #   A unique identifier available to the originating and receiving banks, commonly abbreviated as IMAD. It is created when the wire is submitted to the Fedwire service and is helpful when debugging wires with the originating bank.
      #   @return [String]
      required :input_message_accountability_data, String

      # @!attribute [rw] originator_address_line1
      #   The address of the wire originator, set by the sending bank.
      #   @return [String]
      required :originator_address_line1, String

      # @!attribute [rw] originator_address_line2
      #   The address of the wire originator, set by the sending bank.
      #   @return [String]
      required :originator_address_line2, String

      # @!attribute [rw] originator_address_line3
      #   The address of the wire originator, set by the sending bank.
      #   @return [String]
      required :originator_address_line3, String

      # @!attribute [rw] originator_name
      #   The originator of the wire, set by the sending bank.
      #   @return [String]
      required :originator_name, String

      # @!attribute [rw] originator_routing_number
      #   The American Banking Association (ABA) routing number of the bank originating the transfer.
      #   @return [String]
      required :originator_routing_number, String

      # @!attribute [rw] originator_to_beneficiary_information
      #   An Increase-created concatenation of the Originator-to-Beneficiary lines.
      #   @return [String]
      required :originator_to_beneficiary_information, String

      # @!attribute [rw] originator_to_beneficiary_information_line1
      #   A free-form message set by the wire originator.
      #   @return [String]
      required :originator_to_beneficiary_information_line1, String

      # @!attribute [rw] originator_to_beneficiary_information_line2
      #   A free-form message set by the wire originator.
      #   @return [String]
      required :originator_to_beneficiary_information_line2, String

      # @!attribute [rw] originator_to_beneficiary_information_line3
      #   A free-form message set by the wire originator.
      #   @return [String]
      required :originator_to_beneficiary_information_line3, String

      # @!attribute [rw] originator_to_beneficiary_information_line4
      #   A free-form message set by the wire originator.
      #   @return [String]
      required :originator_to_beneficiary_information_line4, String

      # @!attribute [rw] status
      #   The status of the transfer.
      #   @return [Symbol]
      required :status, Increase::Enum.new(:pending, :accepted, :declined, :reversed)

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `inbound_wire_transfer`.
      #   @return [Symbol]
      required :type, Increase::Enum.new(:inbound_wire_transfer)
    end
  end
end
