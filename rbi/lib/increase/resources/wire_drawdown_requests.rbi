# typed: strong

module Increase
  module Resources
    class WireDrawdownRequests
      # Create a Wire Drawdown Request
      sig do
        params(
          account_number_id: String,
          amount: Integer,
          message_to_recipient: String,
          recipient_account_number: String,
          recipient_name: String,
          recipient_routing_number: String,
          originator_address_line1: String,
          originator_address_line2: String,
          originator_address_line3: String,
          originator_name: String,
          recipient_address_line1: String,
          recipient_address_line2: String,
          recipient_address_line3: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::WireDrawdownRequest)
      end
      def create(
        # #/components/schemas/create_a_wire_drawdown_request_parameters/properties/account_number_id
        account_number_id:,
        # #/components/schemas/create_a_wire_drawdown_request_parameters/properties/amount
        amount:,
        # #/components/schemas/create_a_wire_drawdown_request_parameters/properties/message_to_recipient
        message_to_recipient:,
        # #/components/schemas/create_a_wire_drawdown_request_parameters/properties/recipient_account_number
        recipient_account_number:,
        # #/components/schemas/create_a_wire_drawdown_request_parameters/properties/recipient_name
        recipient_name:,
        # #/components/schemas/create_a_wire_drawdown_request_parameters/properties/recipient_routing_number
        recipient_routing_number:,
        # #/components/schemas/create_a_wire_drawdown_request_parameters/properties/originator_address_line1
        originator_address_line1: nil,
        # #/components/schemas/create_a_wire_drawdown_request_parameters/properties/originator_address_line2
        originator_address_line2: nil,
        # #/components/schemas/create_a_wire_drawdown_request_parameters/properties/originator_address_line3
        originator_address_line3: nil,
        # #/components/schemas/create_a_wire_drawdown_request_parameters/properties/originator_name
        originator_name: nil,
        # #/components/schemas/create_a_wire_drawdown_request_parameters/properties/recipient_address_line1
        recipient_address_line1: nil,
        # #/components/schemas/create_a_wire_drawdown_request_parameters/properties/recipient_address_line2
        recipient_address_line2: nil,
        # #/components/schemas/create_a_wire_drawdown_request_parameters/properties/recipient_address_line3
        recipient_address_line3: nil,
        request_options: {}
      ); end
      # Retrieve a Wire Drawdown Request
      sig do
        params(
          wire_drawdown_request_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::WireDrawdownRequest)
      end
      def retrieve(
        # #/paths//wire_drawdown_requests/{wire_drawdown_request_id}/get/parameters/0/schema
        wire_drawdown_request_id,
        request_options: {}
      ); end
      # List Wire Drawdown Requests
      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: T.any(Increase::Models::WireDrawdownRequestListParams::Status, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::WireDrawdownRequest])
      end
      def list(
        # #/paths//wire_drawdown_requests/get/parameters/0/schema
        cursor: nil,
        # #/paths//wire_drawdown_requests/get/parameters/3/schema
        idempotency_key: nil,
        # #/paths//wire_drawdown_requests/get/parameters/1/schema
        limit: nil,
        status: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
