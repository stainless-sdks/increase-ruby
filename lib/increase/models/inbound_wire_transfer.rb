# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::InboundWireTransfers#retrieve
    class InboundWireTransfer < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/inbound_wire_transfer/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   #/components/schemas/inbound_wire_transfer/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute account_number_id
      #   #/components/schemas/inbound_wire_transfer/properties/account_number_id
      #
      #   @return [String]
      required :account_number_id, String

      # @!attribute amount
      #   #/components/schemas/inbound_wire_transfer/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute beneficiary_address_line1
      #   #/components/schemas/inbound_wire_transfer/properties/beneficiary_address_line1
      #
      #   @return [String, nil]
      required :beneficiary_address_line1, String, nil?: true

      # @!attribute beneficiary_address_line2
      #   #/components/schemas/inbound_wire_transfer/properties/beneficiary_address_line2
      #
      #   @return [String, nil]
      required :beneficiary_address_line2, String, nil?: true

      # @!attribute beneficiary_address_line3
      #   #/components/schemas/inbound_wire_transfer/properties/beneficiary_address_line3
      #
      #   @return [String, nil]
      required :beneficiary_address_line3, String, nil?: true

      # @!attribute beneficiary_name
      #   #/components/schemas/inbound_wire_transfer/properties/beneficiary_name
      #
      #   @return [String, nil]
      required :beneficiary_name, String, nil?: true

      # @!attribute beneficiary_reference
      #   #/components/schemas/inbound_wire_transfer/properties/beneficiary_reference
      #
      #   @return [String, nil]
      required :beneficiary_reference, String, nil?: true

      # @!attribute created_at
      #   #/components/schemas/inbound_wire_transfer/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   #/components/schemas/inbound_wire_transfer/properties/description
      #
      #   @return [String]
      required :description, String

      # @!attribute input_message_accountability_data
      #   #/components/schemas/inbound_wire_transfer/properties/input_message_accountability_data
      #
      #   @return [String, nil]
      required :input_message_accountability_data, String, nil?: true

      # @!attribute originator_address_line1
      #   #/components/schemas/inbound_wire_transfer/properties/originator_address_line1
      #
      #   @return [String, nil]
      required :originator_address_line1, String, nil?: true

      # @!attribute originator_address_line2
      #   #/components/schemas/inbound_wire_transfer/properties/originator_address_line2
      #
      #   @return [String, nil]
      required :originator_address_line2, String, nil?: true

      # @!attribute originator_address_line3
      #   #/components/schemas/inbound_wire_transfer/properties/originator_address_line3
      #
      #   @return [String, nil]
      required :originator_address_line3, String, nil?: true

      # @!attribute originator_name
      #   #/components/schemas/inbound_wire_transfer/properties/originator_name
      #
      #   @return [String, nil]
      required :originator_name, String, nil?: true

      # @!attribute originator_routing_number
      #   #/components/schemas/inbound_wire_transfer/properties/originator_routing_number
      #
      #   @return [String, nil]
      required :originator_routing_number, String, nil?: true

      # @!attribute originator_to_beneficiary_information
      #   #/components/schemas/inbound_wire_transfer/properties/originator_to_beneficiary_information
      #
      #   @return [String, nil]
      required :originator_to_beneficiary_information, String, nil?: true

      # @!attribute originator_to_beneficiary_information_line1
      #   #/components/schemas/inbound_wire_transfer/properties/originator_to_beneficiary_information_line1
      #
      #   @return [String, nil]
      required :originator_to_beneficiary_information_line1, String, nil?: true

      # @!attribute originator_to_beneficiary_information_line2
      #   #/components/schemas/inbound_wire_transfer/properties/originator_to_beneficiary_information_line2
      #
      #   @return [String, nil]
      required :originator_to_beneficiary_information_line2, String, nil?: true

      # @!attribute originator_to_beneficiary_information_line3
      #   #/components/schemas/inbound_wire_transfer/properties/originator_to_beneficiary_information_line3
      #
      #   @return [String, nil]
      required :originator_to_beneficiary_information_line3, String, nil?: true

      # @!attribute originator_to_beneficiary_information_line4
      #   #/components/schemas/inbound_wire_transfer/properties/originator_to_beneficiary_information_line4
      #
      #   @return [String, nil]
      required :originator_to_beneficiary_information_line4, String, nil?: true

      # @!attribute sender_reference
      #   #/components/schemas/inbound_wire_transfer/properties/sender_reference
      #
      #   @return [String, nil]
      required :sender_reference, String, nil?: true

      # @!attribute status
      #   #/components/schemas/inbound_wire_transfer/properties/status
      #
      #   @return [Symbol, Increase::Models::InboundWireTransfer::Status]
      required :status, enum: -> { Increase::Models::InboundWireTransfer::Status }

      # @!attribute type
      #   #/components/schemas/inbound_wire_transfer/properties/type
      #
      #   @return [Symbol, Increase::Models::InboundWireTransfer::Type]
      required :type, enum: -> { Increase::Models::InboundWireTransfer::Type }

      # @!parse
      #   # #/components/schemas/inbound_wire_transfer
      #   #
      #   # @param id [String]
      #   # @param account_id [String]
      #   # @param account_number_id [String]
      #   # @param amount [Integer]
      #   # @param beneficiary_address_line1 [String, nil]
      #   # @param beneficiary_address_line2 [String, nil]
      #   # @param beneficiary_address_line3 [String, nil]
      #   # @param beneficiary_name [String, nil]
      #   # @param beneficiary_reference [String, nil]
      #   # @param created_at [Time]
      #   # @param description [String]
      #   # @param input_message_accountability_data [String, nil]
      #   # @param originator_address_line1 [String, nil]
      #   # @param originator_address_line2 [String, nil]
      #   # @param originator_address_line3 [String, nil]
      #   # @param originator_name [String, nil]
      #   # @param originator_routing_number [String, nil]
      #   # @param originator_to_beneficiary_information [String, nil]
      #   # @param originator_to_beneficiary_information_line1 [String, nil]
      #   # @param originator_to_beneficiary_information_line2 [String, nil]
      #   # @param originator_to_beneficiary_information_line3 [String, nil]
      #   # @param originator_to_beneficiary_information_line4 [String, nil]
      #   # @param sender_reference [String, nil]
      #   # @param status [Symbol, Increase::Models::InboundWireTransfer::Status]
      #   # @param type [Symbol, Increase::Models::InboundWireTransfer::Type]
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
      #     created_at:,
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

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/inbound_wire_transfer/properties/status
      #
      # @see Increase::Models::InboundWireTransfer#status
      module Status
        extend Increase::Internal::Type::Enum

        # The Inbound Wire Transfer is awaiting action, will transition automatically if no action is taken.
        PENDING = :pending

        # The Inbound Wire Transfer is accepted.
        ACCEPTED = :accepted

        # The Inbound Wire Transfer was declined.
        DECLINED = :declined

        # The Inbound Wire Transfer was reversed.
        REVERSED = :reversed

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/inbound_wire_transfer/properties/type
      #
      # @see Increase::Models::InboundWireTransfer#type
      module Type
        extend Increase::Internal::Type::Enum

        INBOUND_WIRE_TRANSFER = :inbound_wire_transfer

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
