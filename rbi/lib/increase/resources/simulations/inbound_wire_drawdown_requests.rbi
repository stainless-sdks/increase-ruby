# typed: strong

module Increase
  module Resources
    class Simulations
      class InboundWireDrawdownRequests
        # Simulates receiving an
        # [Inbound Wire Drawdown Request](#inbound-wire-drawdown-requests).
        sig do
          params(
            amount: Integer,
            beneficiary_account_number: String,
            beneficiary_routing_number: String,
            currency: String,
            message_to_recipient: String,
            originator_account_number: String,
            originator_routing_number: String,
            recipient_account_number_id: String,
            beneficiary_address_line1: String,
            beneficiary_address_line2: String,
            beneficiary_address_line3: String,
            beneficiary_name: String,
            originator_address_line1: String,
            originator_address_line2: String,
            originator_address_line3: String,
            originator_name: String,
            originator_to_beneficiary_information_line1: String,
            originator_to_beneficiary_information_line2: String,
            originator_to_beneficiary_information_line3: String,
            originator_to_beneficiary_information_line4: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::InboundWireDrawdownRequest)
        end
        def create(
          # #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/amount
          amount:,
          # #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/beneficiary_account_number
          beneficiary_account_number:,
          # #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/beneficiary_routing_number
          beneficiary_routing_number:,
          # #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/currency
          currency:,
          # #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/message_to_recipient
          message_to_recipient:,
          # #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/originator_account_number
          originator_account_number:,
          # #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/originator_routing_number
          originator_routing_number:,
          # #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/recipient_account_number_id
          recipient_account_number_id:,
          # #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/beneficiary_address_line1
          beneficiary_address_line1: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/beneficiary_address_line2
          beneficiary_address_line2: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/beneficiary_address_line3
          beneficiary_address_line3: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/beneficiary_name
          beneficiary_name: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/originator_address_line1
          originator_address_line1: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/originator_address_line2
          originator_address_line2: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/originator_address_line3
          originator_address_line3: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/originator_name
          originator_name: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/originator_to_beneficiary_information_line1
          originator_to_beneficiary_information_line1: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/originator_to_beneficiary_information_line2
          originator_to_beneficiary_information_line2: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/originator_to_beneficiary_information_line3
          originator_to_beneficiary_information_line3: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_drawdown_request_parameters/properties/originator_to_beneficiary_information_line4
          originator_to_beneficiary_information_line4: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
