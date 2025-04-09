# typed: strong

module Increase
  module Resources
    class Simulations
      class InboundWireTransfers
        # Simulates an [Inbound Wire Transfer](#inbound-wire-transfers) to your account.
        sig do
          params(
            account_number_id: String,
            amount: Integer,
            beneficiary_address_line1: String,
            beneficiary_address_line2: String,
            beneficiary_address_line3: String,
            beneficiary_name: String,
            beneficiary_reference: String,
            originator_address_line1: String,
            originator_address_line2: String,
            originator_address_line3: String,
            originator_name: String,
            originator_routing_number: String,
            originator_to_beneficiary_information_line1: String,
            originator_to_beneficiary_information_line2: String,
            originator_to_beneficiary_information_line3: String,
            originator_to_beneficiary_information_line4: String,
            sender_reference: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::InboundWireTransfer)
        end
        def create(
          # #/components/schemas/sandbox_create_an_inbound_wire_transfer_parameters/properties/account_number_id
          account_number_id:,
          # #/components/schemas/sandbox_create_an_inbound_wire_transfer_parameters/properties/amount
          amount:,
          # #/components/schemas/sandbox_create_an_inbound_wire_transfer_parameters/properties/beneficiary_address_line1
          beneficiary_address_line1: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_transfer_parameters/properties/beneficiary_address_line2
          beneficiary_address_line2: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_transfer_parameters/properties/beneficiary_address_line3
          beneficiary_address_line3: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_transfer_parameters/properties/beneficiary_name
          beneficiary_name: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_transfer_parameters/properties/beneficiary_reference
          beneficiary_reference: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_transfer_parameters/properties/originator_address_line1
          originator_address_line1: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_transfer_parameters/properties/originator_address_line2
          originator_address_line2: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_transfer_parameters/properties/originator_address_line3
          originator_address_line3: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_transfer_parameters/properties/originator_name
          originator_name: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_transfer_parameters/properties/originator_routing_number
          originator_routing_number: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_transfer_parameters/properties/originator_to_beneficiary_information_line1
          originator_to_beneficiary_information_line1: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_transfer_parameters/properties/originator_to_beneficiary_information_line2
          originator_to_beneficiary_information_line2: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_transfer_parameters/properties/originator_to_beneficiary_information_line3
          originator_to_beneficiary_information_line3: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_transfer_parameters/properties/originator_to_beneficiary_information_line4
          originator_to_beneficiary_information_line4: nil,
          # #/components/schemas/sandbox_create_an_inbound_wire_transfer_parameters/properties/sender_reference
          sender_reference: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
