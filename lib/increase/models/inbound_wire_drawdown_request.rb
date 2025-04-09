# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::InboundWireDrawdownRequests#retrieve
    class InboundWireDrawdownRequest < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/inbound_wire_drawdown_request/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   #/components/schemas/inbound_wire_drawdown_request/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute beneficiary_account_number
      #   #/components/schemas/inbound_wire_drawdown_request/properties/beneficiary_account_number
      #
      #   @return [String]
      required :beneficiary_account_number, String

      # @!attribute beneficiary_address_line1
      #   #/components/schemas/inbound_wire_drawdown_request/properties/beneficiary_address_line1
      #
      #   @return [String, nil]
      required :beneficiary_address_line1, String, nil?: true

      # @!attribute beneficiary_address_line2
      #   #/components/schemas/inbound_wire_drawdown_request/properties/beneficiary_address_line2
      #
      #   @return [String, nil]
      required :beneficiary_address_line2, String, nil?: true

      # @!attribute beneficiary_address_line3
      #   #/components/schemas/inbound_wire_drawdown_request/properties/beneficiary_address_line3
      #
      #   @return [String, nil]
      required :beneficiary_address_line3, String, nil?: true

      # @!attribute beneficiary_name
      #   #/components/schemas/inbound_wire_drawdown_request/properties/beneficiary_name
      #
      #   @return [String, nil]
      required :beneficiary_name, String, nil?: true

      # @!attribute beneficiary_routing_number
      #   #/components/schemas/inbound_wire_drawdown_request/properties/beneficiary_routing_number
      #
      #   @return [String]
      required :beneficiary_routing_number, String

      # @!attribute created_at
      #   #/components/schemas/inbound_wire_drawdown_request/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   #/components/schemas/inbound_wire_drawdown_request/properties/currency
      #
      #   @return [String]
      required :currency, String

      # @!attribute message_to_recipient
      #   #/components/schemas/inbound_wire_drawdown_request/properties/message_to_recipient
      #
      #   @return [String, nil]
      required :message_to_recipient, String, nil?: true

      # @!attribute originator_account_number
      #   #/components/schemas/inbound_wire_drawdown_request/properties/originator_account_number
      #
      #   @return [String]
      required :originator_account_number, String

      # @!attribute originator_address_line1
      #   #/components/schemas/inbound_wire_drawdown_request/properties/originator_address_line1
      #
      #   @return [String, nil]
      required :originator_address_line1, String, nil?: true

      # @!attribute originator_address_line2
      #   #/components/schemas/inbound_wire_drawdown_request/properties/originator_address_line2
      #
      #   @return [String, nil]
      required :originator_address_line2, String, nil?: true

      # @!attribute originator_address_line3
      #   #/components/schemas/inbound_wire_drawdown_request/properties/originator_address_line3
      #
      #   @return [String, nil]
      required :originator_address_line3, String, nil?: true

      # @!attribute originator_name
      #   #/components/schemas/inbound_wire_drawdown_request/properties/originator_name
      #
      #   @return [String, nil]
      required :originator_name, String, nil?: true

      # @!attribute originator_routing_number
      #   #/components/schemas/inbound_wire_drawdown_request/properties/originator_routing_number
      #
      #   @return [String]
      required :originator_routing_number, String

      # @!attribute originator_to_beneficiary_information_line1
      #   #/components/schemas/inbound_wire_drawdown_request/properties/originator_to_beneficiary_information_line1
      #
      #   @return [String, nil]
      required :originator_to_beneficiary_information_line1, String, nil?: true

      # @!attribute originator_to_beneficiary_information_line2
      #   #/components/schemas/inbound_wire_drawdown_request/properties/originator_to_beneficiary_information_line2
      #
      #   @return [String, nil]
      required :originator_to_beneficiary_information_line2, String, nil?: true

      # @!attribute originator_to_beneficiary_information_line3
      #   #/components/schemas/inbound_wire_drawdown_request/properties/originator_to_beneficiary_information_line3
      #
      #   @return [String, nil]
      required :originator_to_beneficiary_information_line3, String, nil?: true

      # @!attribute originator_to_beneficiary_information_line4
      #   #/components/schemas/inbound_wire_drawdown_request/properties/originator_to_beneficiary_information_line4
      #
      #   @return [String, nil]
      required :originator_to_beneficiary_information_line4, String, nil?: true

      # @!attribute recipient_account_number_id
      #   #/components/schemas/inbound_wire_drawdown_request/properties/recipient_account_number_id
      #
      #   @return [String]
      required :recipient_account_number_id, String

      # @!attribute type
      #   #/components/schemas/inbound_wire_drawdown_request/properties/type
      #
      #   @return [Symbol, Increase::Models::InboundWireDrawdownRequest::Type]
      required :type, enum: -> { Increase::Models::InboundWireDrawdownRequest::Type }

      # @!parse
      #   # #/components/schemas/inbound_wire_drawdown_request
      #   #
      #   # @param id [String]
      #   # @param amount [Integer]
      #   # @param beneficiary_account_number [String]
      #   # @param beneficiary_address_line1 [String, nil]
      #   # @param beneficiary_address_line2 [String, nil]
      #   # @param beneficiary_address_line3 [String, nil]
      #   # @param beneficiary_name [String, nil]
      #   # @param beneficiary_routing_number [String]
      #   # @param created_at [Time]
      #   # @param currency [String]
      #   # @param message_to_recipient [String, nil]
      #   # @param originator_account_number [String]
      #   # @param originator_address_line1 [String, nil]
      #   # @param originator_address_line2 [String, nil]
      #   # @param originator_address_line3 [String, nil]
      #   # @param originator_name [String, nil]
      #   # @param originator_routing_number [String]
      #   # @param originator_to_beneficiary_information_line1 [String, nil]
      #   # @param originator_to_beneficiary_information_line2 [String, nil]
      #   # @param originator_to_beneficiary_information_line3 [String, nil]
      #   # @param originator_to_beneficiary_information_line4 [String, nil]
      #   # @param recipient_account_number_id [String]
      #   # @param type [Symbol, Increase::Models::InboundWireDrawdownRequest::Type]
      #   #
      #   def initialize(
      #     id:,
      #     amount:,
      #     beneficiary_account_number:,
      #     beneficiary_address_line1:,
      #     beneficiary_address_line2:,
      #     beneficiary_address_line3:,
      #     beneficiary_name:,
      #     beneficiary_routing_number:,
      #     created_at:,
      #     currency:,
      #     message_to_recipient:,
      #     originator_account_number:,
      #     originator_address_line1:,
      #     originator_address_line2:,
      #     originator_address_line3:,
      #     originator_name:,
      #     originator_routing_number:,
      #     originator_to_beneficiary_information_line1:,
      #     originator_to_beneficiary_information_line2:,
      #     originator_to_beneficiary_information_line3:,
      #     originator_to_beneficiary_information_line4:,
      #     recipient_account_number_id:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/inbound_wire_drawdown_request/properties/type
      #
      # @see Increase::Models::InboundWireDrawdownRequest#type
      module Type
        extend Increase::Internal::Type::Enum

        INBOUND_WIRE_DRAWDOWN_REQUEST = :inbound_wire_drawdown_request

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
