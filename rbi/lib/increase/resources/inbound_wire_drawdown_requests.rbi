# typed: strong

module Increase
  module Resources
    class InboundWireDrawdownRequests
      # Retrieve an Inbound Wire Drawdown Request
      sig do
        params(
          inbound_wire_drawdown_request_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::InboundWireDrawdownRequest)
      end
      def retrieve(inbound_wire_drawdown_request_id, request_options: {})
      end

      # List Inbound Wire Drawdown Requests
      sig do
        params(
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::InboundWireDrawdownRequest])
      end
      def list(cursor: nil, limit: nil, request_options: {})
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
