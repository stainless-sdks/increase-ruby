# frozen_string_literal: true

module Increase
  module Models
    # @example
    # ```ruby
    # inbound_wire_transfer => {
    #   id: String,
    #   account_id: String,
    #   account_number_id: String,
    #   amount: Integer,
    #   beneficiary_address_line1: String,
    #   **_
    # }
    # ```
    class InboundWireTransfer < Increase::BaseModel
      # @!attribute id
      #   The inbound wire transfer's identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   The Account to which the transfer belongs.
      #
      #   @return [String]
      required :account_id, String

      # @!attribute account_number_id
      #   The identifier of the Account Number to which this transfer was sent.
      #
      #   @return [String]
      required :account_number_id, String

      # @!attribute amount
      #   The amount in USD cents.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute beneficiary_address_line1
      #   A free-form address field set by the sender.
      #
      #   @return [String, nil]
      required :beneficiary_address_line1, String

      # @!attribute beneficiary_address_line2
      #   A free-form address field set by the sender.
      #
      #   @return [String, nil]
      required :beneficiary_address_line2, String

      # @!attribute beneficiary_address_line3
      #   A free-form address field set by the sender.
      #
      #   @return [String, nil]
      required :beneficiary_address_line3, String

      # @!attribute beneficiary_name
      #   A name set by the sender.
      #
      #   @return [String, nil]
      required :beneficiary_name, String

      # @!attribute beneficiary_reference
      #   A free-form reference string set by the sender, to help identify the transfer.
      #
      #   @return [String, nil]
      required :beneficiary_reference, String

      # @!attribute description
      #   An Increase-constructed description of the transfer.
      #
      #   @return [String]
      required :description, String

      # @!attribute input_message_accountability_data
      #   A unique identifier available to the originating and receiving banks, commonly abbreviated as IMAD. It is created when the wire is submitted to the Fedwire service and is helpful when debugging wires with the originating bank.
      #
      #   @return [String, nil]
      required :input_message_accountability_data, String

      # @!attribute originator_address_line1
      #   The address of the wire originator, set by the sending bank.
      #
      #   @return [String, nil]
      required :originator_address_line1, String

      # @!attribute originator_address_line2
      #   The address of the wire originator, set by the sending bank.
      #
      #   @return [String, nil]
      required :originator_address_line2, String

      # @!attribute originator_address_line3
      #   The address of the wire originator, set by the sending bank.
      #
      #   @return [String, nil]
      required :originator_address_line3, String

      # @!attribute originator_name
      #   The originator of the wire, set by the sending bank.
      #
      #   @return [String, nil]
      required :originator_name, String

      # @!attribute originator_routing_number
      #   The American Banking Association (ABA) routing number of the bank originating the transfer.
      #
      #   @return [String, nil]
      required :originator_routing_number, String

      # @!attribute originator_to_beneficiary_information
      #   An Increase-created concatenation of the Originator-to-Beneficiary lines.
      #
      #   @return [String, nil]
      required :originator_to_beneficiary_information, String

      # @!attribute originator_to_beneficiary_information_line1
      #   A free-form message set by the wire originator.
      #
      #   @return [String, nil]
      required :originator_to_beneficiary_information_line1, String

      # @!attribute originator_to_beneficiary_information_line2
      #   A free-form message set by the wire originator.
      #
      #   @return [String, nil]
      required :originator_to_beneficiary_information_line2, String

      # @!attribute originator_to_beneficiary_information_line3
      #   A free-form message set by the wire originator.
      #
      #   @return [String, nil]
      required :originator_to_beneficiary_information_line3, String

      # @!attribute originator_to_beneficiary_information_line4
      #   A free-form message set by the wire originator.
      #
      #   @return [String, nil]
      required :originator_to_beneficiary_information_line4, String

      # @!attribute sender_reference
      #   The sending bank's reference number for the wire transfer.
      #
      #   @return [String, nil]
      required :sender_reference, String

      # @!attribute status
      #   The status of the transfer.
      #
      #   @return [Symbol, Increase::Models::InboundWireTransfer::Status]
      required :status, enum: -> { Increase::Models::InboundWireTransfer::Status }

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be `inbound_wire_transfer`.
      #
      #   @return [Symbol, Increase::Models::InboundWireTransfer::Type]
      required :type, enum: -> { Increase::Models::InboundWireTransfer::Type }

      # @!parse
      #   # An Inbound Wire Transfer is a wire transfer initiated outside of Increase to
      #   #   your account.
      #   #
      #   # @param id [String] The inbound wire transfer's identifier.
      #   #
      #   # @param account_id [String] The Account to which the transfer belongs.
      #   #
      #   # @param account_number_id [String] The identifier of the Account Number to which this transfer was sent.
      #   #
      #   # @param amount [Integer] The amount in USD cents.
      #   #
      #   # @param beneficiary_address_line1 [String, nil] A free-form address field set by the sender.
      #   #
      #   # @param beneficiary_address_line2 [String, nil] A free-form address field set by the sender.
      #   #
      #   # @param beneficiary_address_line3 [String, nil] A free-form address field set by the sender.
      #   #
      #   # @param beneficiary_name [String, nil] A name set by the sender.
      #   #
      #   # @param beneficiary_reference [String, nil] A free-form reference string set by the sender, to help identify the transfer.
      #   #
      #   # @param description [String] An Increase-constructed description of the transfer.
      #   #
      #   # @param input_message_accountability_data [String, nil] A unique identifier available to the originating and receiving banks, commonly
      #   #   abbreviated as IMAD. It is created when the wire is submitted to the Fedwire
      #   #   service and is helpful when debugging wires with the originating bank.
      #   #
      #   # @param originator_address_line1 [String, nil] The address of the wire originator, set by the sending bank.
      #   #
      #   # @param originator_address_line2 [String, nil] The address of the wire originator, set by the sending bank.
      #   #
      #   # @param originator_address_line3 [String, nil] The address of the wire originator, set by the sending bank.
      #   #
      #   # @param originator_name [String, nil] The originator of the wire, set by the sending bank.
      #   #
      #   # @param originator_routing_number [String, nil] The American Banking Association (ABA) routing number of the bank originating
      #   #   the transfer.
      #   #
      #   # @param originator_to_beneficiary_information [String, nil] An Increase-created concatenation of the Originator-to-Beneficiary lines.
      #   #
      #   # @param originator_to_beneficiary_information_line1 [String, nil] A free-form message set by the wire originator.
      #   #
      #   # @param originator_to_beneficiary_information_line2 [String, nil] A free-form message set by the wire originator.
      #   #
      #   # @param originator_to_beneficiary_information_line3 [String, nil] A free-form message set by the wire originator.
      #   #
      #   # @param originator_to_beneficiary_information_line4 [String, nil] A free-form message set by the wire originator.
      #   #
      #   # @param sender_reference [String, nil] The sending bank's reference number for the wire transfer.
      #   #
      #   # @param status [String] The status of the transfer.
      #   #
      #   # @param type [String] A constant representing the object's type. For this resource it will always be
      #   #   `inbound_wire_transfer`.
      #   #
      #   def initialize(
      #     id:,
      #     account_id:,
      #     account_number_id:,
      #     amount:,
      #     beneficiary_address_line1:,
      #     beneficiary_address_line2:,
      #     beneficiary_address_line3:,
      #     beneficiary_name:,
      #     beneficiary_reference:,
      #     description:,
      #     input_message_accountability_data:,
      #     originator_address_line1:,
      #     originator_address_line2:,
      #     originator_address_line3:,
      #     originator_name:,
      #     originator_routing_number:,
      #     originator_to_beneficiary_information:,
      #     originator_to_beneficiary_information_line1:,
      #     originator_to_beneficiary_information_line2:,
      #     originator_to_beneficiary_information_line3:,
      #     originator_to_beneficiary_information_line4:,
      #     sender_reference:,
      #     status:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # The status of the transfer.
      #
      # @example
      # ```ruby
      # case status
      # in :pending
      #   # ...
      # in :accepted
      #   # ...
      # in :declined
      #   # ...
      # in :reversed
      #   # ...
      # end
      # ```
      class Status < Increase::Enum
        # The Inbound Wire Transfer is awaiting action, will transition automatically if no action is taken.
        PENDING = :pending

        # The Inbound Wire Transfer is accepted.
        ACCEPTED = :accepted

        # The Inbound Wire Transfer was declined.
        DECLINED = :declined

        # The Inbound Wire Transfer was reversed.
        REVERSED = :reversed

        finalize!
      end

      # A constant representing the object's type. For this resource it will always be `inbound_wire_transfer`.
      #
      # @example
      # ```ruby
      # case type
      # in :inbound_wire_transfer
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        INBOUND_WIRE_TRANSFER = :inbound_wire_transfer

        finalize!
      end
    end
  end
end
