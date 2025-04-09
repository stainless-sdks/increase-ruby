# typed: strong

module Increase
  module Resources
    class InboundWireDrawdownRequests
      # Retrieve an Inbound Wire Drawdown Request
      sig do
        params(
          inbound_wire_drawdown_request_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::InboundWireDrawdownRequest)
      end
      def retrieve(
        # #/paths//inbound_wire_drawdown_requests/{inbound_wire_drawdown_request_id}/get/parameters/0/schema
        inbound_wire_drawdown_request_id,
        request_options: {}
      ); end
      # List Inbound Wire Drawdown Requests
      sig do
        params(
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::InboundWireDrawdownRequest])
      end
      def list(
        # #/paths//inbound_wire_drawdown_requests/get/parameters/0/schema
        cursor: nil,
        # #/paths//inbound_wire_drawdown_requests/get/parameters/1/schema
        limit: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
