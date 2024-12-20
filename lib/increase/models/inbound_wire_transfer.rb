# frozen_string_literal: true

module Increase
  module Models
    class InboundWireTransfer < Increase::BaseModel
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

      # @!attribute [rw] sender_reference
      #   The sending bank's reference number for the wire transfer.
      #   @return [String]
      required :sender_reference, String

      # @!attribute [rw] status
      #   The status of the transfer.
      #   @return [Symbol, Increase::Models::InboundWireTransfer::Status]
      required :status, enum: -> { Increase::Models::InboundWireTransfer::Status }

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `inbound_wire_transfer`.
      #   @return [Symbol, Increase::Models::InboundWireTransfer::Type]
      required :type, enum: -> { Increase::Models::InboundWireTransfer::Type }

      # The status of the transfer.
      class Status < Increase::Enum
        # The Inbound Wire Transfer is awaiting action, will transition automatically if no action is taken.
        PENDING = :pending

        # The Inbound Wire Transfer is accepted.
        ACCEPTED = :accepted

        # The Inbound Wire Transfer was declined.
        DECLINED = :declined

        # The Inbound Wire Transfer was reversed.
        REVERSED = :reversed
      end

      # A constant representing the object's type. For this resource it will always be `inbound_wire_transfer`.
      class Type < Increase::Enum
        INBOUND_WIRE_TRANSFER = :inbound_wire_transfer
      end

      # @!parse
      #   # Create a new instance of InboundWireTransfer from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id The inbound wire transfer's identifier.
      #   #   @option data [String] :account_id The Account to which the transfer belongs.
      #   #   @option data [String] :account_number_id The identifier of the Account Number to which this transfer was sent.
      #   #   @option data [Integer] :amount The amount in USD cents.
      #   #   @option data [String] :beneficiary_address_line1 A free-form address field set by the sender.
      #   #   @option data [String] :beneficiary_address_line2 A free-form address field set by the sender.
      #   #   @option data [String] :beneficiary_address_line3 A free-form address field set by the sender.
      #   #   @option data [String] :beneficiary_name A name set by the sender.
      #   #   @option data [String] :beneficiary_reference A free-form reference string set by the sender, to help identify the transfer.
      #   #   @option data [String] :description An Increase-constructed description of the transfer.
      #   #   @option data [String] :input_message_accountability_data A unique identifier available to the originating and receiving banks, commonly
      #   #     abbreviated as IMAD. It is created when the wire is submitted to the Fedwire
      #   #     service and is helpful when debugging wires with the originating bank.
      #   #   @option data [String] :originator_address_line1 The address of the wire originator, set by the sending bank.
      #   #   @option data [String] :originator_address_line2 The address of the wire originator, set by the sending bank.
      #   #   @option data [String] :originator_address_line3 The address of the wire originator, set by the sending bank.
      #   #   @option data [String] :originator_name The originator of the wire, set by the sending bank.
      #   #   @option data [String] :originator_routing_number The American Banking Association (ABA) routing number of the bank originating
      #   #     the transfer.
      #   #   @option data [String] :originator_to_beneficiary_information An Increase-created concatenation of the Originator-to-Beneficiary lines.
      #   #   @option data [String] :originator_to_beneficiary_information_line1 A free-form message set by the wire originator.
      #   #   @option data [String] :originator_to_beneficiary_information_line2 A free-form message set by the wire originator.
      #   #   @option data [String] :originator_to_beneficiary_information_line3 A free-form message set by the wire originator.
      #   #   @option data [String] :originator_to_beneficiary_information_line4 A free-form message set by the wire originator.
      #   #   @option data [String] :sender_reference The sending bank's reference number for the wire transfer.
      #   #   @option data [String] :status The status of the transfer.
      #   #   @option data [String] :type A constant representing the object's type. For this resource it will always be
      #   #     `inbound_wire_transfer`.
      #   def initialize(data = {}) = super
    end
  end
end
