# frozen_string_literal: true

module Increase
  module Models
    module Simulations
      # @see Increase::Resources::Simulations::InboundWireDrawdownRequests#create
      class InboundWireDrawdownRequestCreateParams < Increase::Internal::Type::BaseModel
        # @!parse
        #   extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        # @!attribute amount
        #   #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute beneficiary_account_number
        #   #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/beneficiary_account_number
        #
        #   @return [String]
        required :beneficiary_account_number, String

        # @!attribute beneficiary_routing_number
        #   #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/beneficiary_routing_number
        #
        #   @return [String]
        required :beneficiary_routing_number, String

        # @!attribute currency
        #   #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute message_to_recipient
        #   #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/message_to_recipient
        #
        #   @return [String]
        required :message_to_recipient, String

        # @!attribute originator_account_number
        #   #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/originator_account_number
        #
        #   @return [String]
        required :originator_account_number, String

        # @!attribute originator_routing_number
        #   #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/originator_routing_number
        #
        #   @return [String]
        required :originator_routing_number, String

        # @!attribute recipient_account_number_id
        #   #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/recipient_account_number_id
        #
        #   @return [String]
        required :recipient_account_number_id, String

        # @!attribute [r] beneficiary_address_line1
        #   #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/beneficiary_address_line1
        #
        #   @return [String, nil]
        optional :beneficiary_address_line1, String

        # @!parse
        #   # @return [String]
        #   attr_writer :beneficiary_address_line1

        # @!attribute [r] beneficiary_address_line2
        #   #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/beneficiary_address_line2
        #
        #   @return [String, nil]
        optional :beneficiary_address_line2, String

        # @!parse
        #   # @return [String]
        #   attr_writer :beneficiary_address_line2

        # @!attribute [r] beneficiary_address_line3
        #   #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/beneficiary_address_line3
        #
        #   @return [String, nil]
        optional :beneficiary_address_line3, String

        # @!parse
        #   # @return [String]
        #   attr_writer :beneficiary_address_line3

        # @!attribute [r] beneficiary_name
        #   #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/beneficiary_name
        #
        #   @return [String, nil]
        optional :beneficiary_name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :beneficiary_name

        # @!attribute [r] originator_address_line1
        #   #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/originator_address_line1
        #
        #   @return [String, nil]
        optional :originator_address_line1, String

        # @!parse
        #   # @return [String]
        #   attr_writer :originator_address_line1

        # @!attribute [r] originator_address_line2
        #   #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/originator_address_line2
        #
        #   @return [String, nil]
        optional :originator_address_line2, String

        # @!parse
        #   # @return [String]
        #   attr_writer :originator_address_line2

        # @!attribute [r] originator_address_line3
        #   #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/originator_address_line3
        #
        #   @return [String, nil]
        optional :originator_address_line3, String

        # @!parse
        #   # @return [String]
        #   attr_writer :originator_address_line3

        # @!attribute [r] originator_name
        #   #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/originator_name
        #
        #   @return [String, nil]
        optional :originator_name, String

        # @!parse
        #   # @return [String]
        #   attr_writer :originator_name

        # @!attribute [r] originator_to_beneficiary_information_line1
        #   #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/originator_to_beneficiary_information_line1
        #
        #   @return [String, nil]
        optional :originator_to_beneficiary_information_line1, String

        # @!parse
        #   # @return [String]
        #   attr_writer :originator_to_beneficiary_information_line1

        # @!attribute [r] originator_to_beneficiary_information_line2
        #   #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/originator_to_beneficiary_information_line2
        #
        #   @return [String, nil]
        optional :originator_to_beneficiary_information_line2, String

        # @!parse
        #   # @return [String]
        #   attr_writer :originator_to_beneficiary_information_line2

        # @!attribute [r] originator_to_beneficiary_information_line3
        #   #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/originator_to_beneficiary_information_line3
        #
        #   @return [String, nil]
        optional :originator_to_beneficiary_information_line3, String

        # @!parse
        #   # @return [String]
        #   attr_writer :originator_to_beneficiary_information_line3

        # @!attribute [r] originator_to_beneficiary_information_line4
        #   #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/originator_to_beneficiary_information_line4
        #
        #   @return [String, nil]
        optional :originator_to_beneficiary_information_line4, String

        # @!parse
        #   # @return [String]
        #   attr_writer :originator_to_beneficiary_information_line4

        # @!parse
        #   # @param amount [Integer]
        #   # @param beneficiary_account_number [String]
        #   # @param beneficiary_routing_number [String]
        #   # @param currency [String]
        #   # @param message_to_recipient [String]
        #   # @param originator_account_number [String]
        #   # @param originator_routing_number [String]
        #   # @param recipient_account_number_id [String]
        #   # @param beneficiary_address_line1 [String]
        #   # @param beneficiary_address_line2 [String]
        #   # @param beneficiary_address_line3 [String]
        #   # @param beneficiary_name [String]
        #   # @param originator_address_line1 [String]
        #   # @param originator_address_line2 [String]
        #   # @param originator_address_line3 [String]
        #   # @param originator_name [String]
        #   # @param originator_to_beneficiary_information_line1 [String]
        #   # @param originator_to_beneficiary_information_line2 [String]
        #   # @param originator_to_beneficiary_information_line3 [String]
        #   # @param originator_to_beneficiary_information_line4 [String]
        #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     amount:,
        #     beneficiary_account_number:,
        #     beneficiary_routing_number:,
        #     currency:,
        #     message_to_recipient:,
        #     originator_account_number:,
        #     originator_routing_number:,
        #     recipient_account_number_id:,
        #     beneficiary_address_line1: nil,
        #     beneficiary_address_line2: nil,
        #     beneficiary_address_line3: nil,
        #     beneficiary_name: nil,
        #     originator_address_line1: nil,
        #     originator_address_line2: nil,
        #     originator_address_line3: nil,
        #     originator_name: nil,
        #     originator_to_beneficiary_information_line1: nil,
        #     originator_to_beneficiary_information_line2: nil,
        #     originator_to_beneficiary_information_line3: nil,
        #     originator_to_beneficiary_information_line4: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end
    end
  end
end
