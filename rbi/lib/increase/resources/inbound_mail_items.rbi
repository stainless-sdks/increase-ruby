# typed: strong

module Increase
  module Resources
    class InboundMailItems
      # Retrieve an Inbound Mail Item
      sig do
        params(
          inbound_mail_item_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::InboundMailItem)
      end
      def retrieve(
        # #/paths//inbound_mail_items/{inbound_mail_item_id}/get/parameters/0/schema
        inbound_mail_item_id,
        request_options: {}
      ); end
      # List Inbound Mail Items
      sig do
        params(
          created_at: T.any(Increase::Models::InboundMailItemListParams::CreatedAt, Increase::Internal::AnyHash),
          cursor: String,
          limit: Integer,
          lockbox_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::InboundMailItem])
      end
      def list(
        created_at: nil,
        # #/paths//inbound_mail_items/get/parameters/0/schema
        cursor: nil,
        # #/paths//inbound_mail_items/get/parameters/1/schema
        limit: nil,
        # #/paths//inbound_mail_items/get/parameters/2/schema
        lockbox_id: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
