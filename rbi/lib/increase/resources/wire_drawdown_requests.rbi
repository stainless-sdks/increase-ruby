# typed: strong

module Increase
  module Resources
    class WireDrawdownRequests
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
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::WireDrawdownRequest)
      end
      def create(
        account_number_id:,
        amount:,
        message_to_recipient:,
        recipient_account_number:,
        recipient_name:,
        recipient_routing_number:,
        originator_address_line1: nil,
        originator_address_line2: nil,
        originator_address_line3: nil,
        originator_name: nil,
        recipient_address_line1: nil,
        recipient_address_line2: nil,
        recipient_address_line3: nil,
        request_options: {}
      )
      end

      sig do
        params(
          wire_drawdown_request_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::WireDrawdownRequest)
      end
      def retrieve(wire_drawdown_request_id, request_options: {})
      end

      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Symbol,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Page[Increase::Models::WireDrawdownRequest])
      end
      def list(cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
