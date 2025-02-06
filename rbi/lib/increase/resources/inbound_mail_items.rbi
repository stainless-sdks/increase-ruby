# typed: strong

module Increase
  module Resources
    class InboundMailItems
      sig do
        params(
          inbound_mail_item_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::InboundMailItem)
      end
      def retrieve(inbound_mail_item_id, request_options: {})
      end

      sig do
        params(
          created_at: Increase::Models::InboundMailItemListParams::CreatedAt,
          cursor: String,
          limit: Integer,
          lockbox_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Page[Increase::Models::InboundMailItem])
      end
      def list(created_at: nil, cursor: nil, limit: nil, lockbox_id: nil, request_options: {})
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
