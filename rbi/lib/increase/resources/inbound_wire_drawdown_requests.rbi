# typed: strong

module Increase
  module Resources
    class InboundWireDrawdownRequests
      sig do
        params(
            inbound_wire_drawdown_request_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Increase::Models::InboundWireDrawdownRequest)
      end
      def retrieve(inbound_wire_drawdown_request_id, request_options: {})
      end

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

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
